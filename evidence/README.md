2026-09-09 08:45:43 [INFO] Temp test started on 127.0.0.1:8080
2026-09-09 08:45:43 [INFO] Temp test started on 127.0.0.1:8080
2026-09-09 08:45:43 [INFO] Starting environment check..
2026-09-09 08:45:43 [OK] IP address found: 10.0.2.15 fd17:625c:f037:2:a00:27ff:fe10:e0c6 
2026-09-09 08:45:43 [OK] Default gateway found: 10.0.2.2
2026-09-09 08:45:43 [INFO] Starting DNS check 
2026-09-09 08:45:43 [INFO] Checking DNS resolution for domain: example.com
2026-09-09 08:45:43 [OK] DNS resolution successful for domain: example.com
2026-09-09 08:45:43 [INFO] Checking local service on 127.0.0.1:8080
2026-09-09 08:45:43 [OK] Local service is responding on 127.0.0.1:8080
2026-09-09 08:45:43 [INFO] Checking listening ports
Netid        State          Recv-Q         Send-Q                 Local Address:Port                  Peer Address:Port        
udp          UNCONN         0              0                         127.0.0.54:53                         0.0.0.0:*           
udp          UNCONN         0              0                      127.0.0.53%lo:53                         0.0.0.0:*           
udp          UNCONN         0              0                          127.0.0.1:323                        0.0.0.0:*           
udp          UNCONN         0              0                            0.0.0.0:5353                       0.0.0.0:*           
udp          UNCONN         0              0                              [::1]:323                           [::]:*           
udp          UNCONN         0              0                               [::]:5353                          [::]:*           
tcp          LISTEN         0              5                          127.0.0.1:8080                       0.0.0.0:*           
tcp          LISTEN         0              4096                      127.0.0.54:53                         0.0.0.0:*           
tcp          LISTEN         0              4096                   127.0.0.53%lo:53                         0.0.0.0:*           
tcp          LISTEN         0              128                        127.0.0.1:43811                      0.0.0.0:*           
tcp          LISTEN         0              4096                       127.0.0.1:631                        0.0.0.0:*           
tcp          LISTEN         0              128                        127.0.0.1:39185                      0.0.0.0:*           
tcp          LISTEN         0              4096                         0.0.0.0:22                         0.0.0.0:*           
tcp          LISTEN         0              4096                           [::1]:631                           [::]:*           
tcp          LISTEN         0              4096                            [::]:22                            [::]:*           
2026-09-09 08:45:43 [OK] Port overview completed
2026-09-09 08:45:43 [INFO] Running environemt check
2026-09-09 08:45:43 [INFO] Running dns check
2026-09-09 08:45:43 [INFO] Running service check
2026-09-09 08:45:43 [INFO] Running port check
2026-09-09 08:45:43 [INFO] Final simmary:
PASS_COUNT=5
WARN_COUNT=0
FAIL_COUNT=0
2026-09-09 08:45:43 [OK] All checks passed.
./scripts/secure_network_check.sh: line 74: kill: (30652) - No such process
2026-09-09 08:45:43 [INFO] Temp test stopped