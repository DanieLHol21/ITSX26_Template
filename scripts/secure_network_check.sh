#!/usr/bin/env bash

LOG_FILE="/tmp/secure_network_check.log"
PASS_COUNT=0
WARN_COUNT=0
FAIL_COUNT=0

log_messages() {
    local status="$1"
    local message="$2"

    echo "$(date '+%Y-%m-%d %H:%M:%S') [$status] $message" | tee -a "$LOG_FILE"