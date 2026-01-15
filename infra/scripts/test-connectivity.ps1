# Testy logowania i analiza logów

# Test logowania RDP
Test-NetConnection -ComputerName "ZOL-SRV-FIN" -Port 3389

# Sprawdzenie logów
Get-WinEvent -LogName "Security" | Where-Object { $_.Id -eq 4625 -or $_.Id -eq 4624 } | Format-Table TimeCreated, Id, Message -AutoSize
