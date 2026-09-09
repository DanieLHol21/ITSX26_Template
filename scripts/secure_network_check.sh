#!/usr/bin/env bash

LOG_FILE="/tmp/secure_network_check.log"
PASS_COUNT=0
WARN_COUNT=0
FAIL_COUNT=0

log_messages(){
    local status="$1"
    local message="$2"

    echo "$(date '+%Y-%m-%d %H:%M:%S') [$status] $message" | tee -a "$LOG_FILE"
    
    }

environment_check(){
    log_messages "INFO" "Starting environment check.."

    local ip_address
    ip_address=$(hostname -I )

    if [[ -z "$ip_address" ]]; then
        log_messages "FAIL" "No IP address found."
        ((FAIL_COUNT++))
    else
        log_messages "OK" "IP address found: $ip_address"
        ((PASS_COUNT++))
    fi
    
    local default_gateway
    default_gateway=$(ip route | grep default | awk '{print $3}')

    if [[ -z "$default_gateway" ]]; then
        log_messages "FAIL" "No default gateway found."
        ((FAIL_COUNT++))
    else
        log_messages "OK" "Default gateway found: $default_gateway"
        ((PASS_COUNT++))
    fi
}

dns_check(){

    log_messages "INFO" "Starting DNS check "

    local domain="$1"

    if [[ -z "$domain" ]]; then
        log_messages "WARN" "No domain provided."
        ((WARN_COUNT++))
        return
    fi

    log_messages "INFO" "Checking DNS resolution for domain: $domain"

    if getent hosts "$domain" > /dev/null 2>&1; then
        log_messages "OK" "DNS resolution successful for domain: $domain"
        ((PASS_COUNT++))
    else
        log_messages "FAIL" "DNS resolution failed for domain: $domain"
        ((FAIL_COUNT++))
    fi
}

local_service(){
    local host="127.0.0.1"
    local port="8080"

    log_messages "INFO" "Checking local service on $host:$port"

    if curl "http://$host:$port" > /dev/null 2>&1; then
        log_messages "OK" "Local service is responding on $host:$port"
        ((PASS_COUNT++))
    else
        log_messages "WARN" "No local service responding on $host:$port"
        ((WARN_COUNT++))
    fi
}

port_overview() {
    log_messages "INFO" "Checking listening ports"

    ss -tuln

    if [ $? -eq 0 ]; then
        log_messages "OK" "Port overview completed"
        ((PASS_COUNT++))
    else
        log_messages "FAIL" "Could not get port overview"
        ((FAIL_COUNT++))
    fi
}

run_checklist(){
    local checklist=("environemt" "dns" "service" "port")

    for check in "${checklist[@]}"; do
        log_messages "INFO" "Running $check check"
    done
}

summary(){
    log_messages "INFO" "Final simmary:"

    echo "PASS_COUNT=$PASS_COUNT"
    echo "WARN_COUNT=$WARN_COUNT"
    echo "FAIL_COUNT=$FAIL_COUNT"


    if [[ $FAIL_COUNT -gt 0 ]]; then
    log_messages "FAIL" "Some check failed."
    

    #if [[ $FAIL_COUNT -gt 0 || $WARN_COUNT -gt 0 ]]; then
      #log_messages "WARN" "Some checks failed or produced warnings."
    #else
        #log_messages "OK" "All checks passed successfully."
    #fi
    elif [[ $WARN_COUNT -gt 0 ]]; then
        log_messages "WARN" "Some checks gave a warning."
    else
        log_messages "OK" "All checks passed."
    fi

}

environment_check
#dns_check "example.com"
dns_check "fakesite.invalid"
local_service
port_overview
run_checklist
summary