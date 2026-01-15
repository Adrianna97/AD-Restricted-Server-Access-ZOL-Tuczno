# Instalacja roli AD DS i konfiguracja domeny zol.local

Install-WindowsFeature -Name AD-Domain-Services
Import-Module ADDSDeployment

Install-ADDSForest `
    -DomainName "zol.local" `
    -DomainNetbiosName "ZOL" `
    -SafeModeAdministratorPassword (Get-Credential).Password `
    -Force
