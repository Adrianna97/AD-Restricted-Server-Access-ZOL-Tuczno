# Tworzenie maszyny wirtualnej ZOL-DC01 jako kontrolera domeny

$rg = "rg-zol-tuczno"
$location = "PolandCentral"
$cred = Get-Credential

New-AzVM -Name "ZOL-DC01" -ResourceGroupName $rg -Location $location `
    -VirtualNetworkName "vnet-zol" -SubnetName "subnet-dc" `
    -Credential $cred -Image "Win2022Datacenter" `
    -PublicIpAddressName "ZOL-DC01-ip" -SecurityGroupName "ZOL-DC01-nsg"
