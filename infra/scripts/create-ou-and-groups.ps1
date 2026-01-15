# Tworzenie OU i grup zabezpieczeń

New-ADOrganizationalUnit -Name "ZOL_Users" -Path "DC=zol,DC=local"
New-ADOrganizationalUnit -Name "ZOL_Security_Groups" -Path "DC=zol,DC=local"
New-ADOrganizationalUnit -Name "ZOL_Servers" -Path "DC=zol,DC=local"

New-ADGroup -Name "ZOL_IT_Admins" -GroupScope Global -GroupCategory Security -Path "OU=ZOL_Security_Groups,DC=zol,DC=local"
New-ADGroup -Name "ZOL_Ksiegowosc_Access" -GroupScope Global -GroupCategory Security -Path "OU=ZOL_Security_Groups,DC=zol,DC=local"
New-ADGroup -Name "ZOL_Zamowienia_Access" -GroupScope Global -GroupCategory Security -Path "OU=ZOL_Security_Groups,DC=zol,DC=local"
New-ADGroup -Name "ZOL_Administracja_Access" -GroupScope Global -GroupCategory Security -Path "OU=ZOL_Security_Groups,DC=zol,DC=local"
New-ADGroup -Name "Medical_Staff" -GroupScope Global -GroupCategory Security -Path "OU=ZOL_Security_Groups,DC=zol,DC=local"
