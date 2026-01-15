# Konfiguracja zasad logowania RDP na lokalnym serwerze

$allowGroups = @("ZOL_IT_Admins", "ZOL_Ksiegowosc_Access", "ZOL_Administracja_Access")
$denyGroups = @("Medical_Staff")

foreach ($group in $allowGroups) {
    ntrights +r SeRemoteInteractiveLogonRight -u $group
}

foreach ($group in $denyGroups) {
    ntrights -r SeRemoteInteractiveLogonRight -u $group
}
