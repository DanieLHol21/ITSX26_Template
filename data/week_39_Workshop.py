import hashlib
import os
import time
import datetime

"""print(datetime.datetime.now())
import os

print(os.listdir())

text = "Hello, World!"
hash_value = hashlib.sha256(text.encode()).hexdigest()
print (f"SHA-256 hash of '{text}': {hash_value}")

 with open("SHA256.txt, "w") as f:
    f.write(hash_value)
     


password = b"losenord12345"

salt = os.urandom(16)
salt1 = os.urandom(16)

hash = hashlib.pbkdf2_hmac('sha256', password, salt, 100000)
hash1 = hashlib.pbkdf2_hmac('sha256', password, salt, 5000000) """
""" -------------------------------------------------------------------- """

""" with open("data/suspicious_ips.txt", "r") as sus_file:
    sus_ips = {line.strip(): 0 for line in sus_file}

with open("data/access.log", "r") as log_file:
    for line in log_file:
        for ip in sus_ips:
            if f"src={ip}" in line:
                sus_ips[ip] += 1
                
###print(sus_ips)
print("Matchande adresser: ")

for ip, count in sus_ips.items():
    if count > 0:
        print(ip, ":", count)
        
print("Antal matchande loggrader: ", sum(sus_ips.values()))

print("Adresser som inte matchade: ")
for ip, count in sus_ips.items():
    if count == 0:
        print(ip) """
        
        
""" ----------------------------------------------------------------------------------"""

def load_indicators(path):
    with open(path, "r") as sus_file:
        indicators = {line.strip(): 0 for line in sus_file}
        return indicators

def analyze_access_log(path, indicators):
    skipped = 0
    
    with open(path, "r") as log_file:
        for line in log_file:
            if "src=" not in line:
                skipped += 1
                continue

            for ip in indicators:
                if f"src={ip}" in line:
                    indicators[ip] += 1
    
    return indicators, skipped

def report(path, results, skipped):
    report_lines = [
        "ITSX26 SECURITY REPORT",
        "",
        "IOC matches:"
    ]

    for ip, count in results.items():
        report_lines.append(f"{ip}: {count}")

    report_lines.extend([
        "",
        f"Malformed lines skipped: {skipped}",
        "",
        "LIMITATION",
        "A matching IP address does not prove malicious activity."
    ])

    with open(path, "w", encoding="utf-8") as file:
        file.write("\n".join(report_lines))

def main():
    indicators = load_indicators("data/suspicious_ips.txt")

    results, skipped = analyze_access_log("data/access.log", indicators)
    results, skipped_auth = analyze_access_log("data/auth.log", results)
    results, skipped_firewall = analyze_access_log("data/firewall.log", results)
    
    skipped += skipped_auth + skipped_firewall

    print(results)
    print("Skippade logs: ", skipped)
    report("data/security_report.txt", results, skipped)

if __name__ == "__main__":
    main()