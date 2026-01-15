# Tworzenie GPO ZOL-Server-Access i konfiguracja zasad RDP

New-GPO -Name "ZOL-Server-Access" | New-GPLink -Target "OU=ZOL_Servers,DC=zol,DC=local"

# Allow logon
Set-GPRegistryValue -Name "ZOL-Server-Access" `
    -Key "HKLM\System\CurrentControlSet\Control\Terminal Server" `
    -ValueName "AllowRemoteRPC" -Type DWord -Value 1

# Deny logon
Set-GPPolicySetting -Name "Deny log on through Remote Desktop Services" `
    -PolicyType "Computer Configuration" `
    -Groups @("Medical_Staff") `
    -GPOName "ZOL-Server-Access"
