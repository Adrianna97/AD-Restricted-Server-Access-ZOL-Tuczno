# ⚙️ Wdrożenie krok po kroku

1. Utworzenie maszyny ZOL-DC01 z Windows Server 2022
2. Instalacja roli AD DS i konfiguracja domeny zol.local
3. Utworzenie OU i grup zabezpieczeń w ADUC
4. Konfiguracja zasad logowania RDP:
   - Allow logon: ZOL_IT_Admins, ZOL_Ksiegowosc_Access
   - Deny logon: Medical_Staff
5. Utworzenie GPO ZOL-Server-Access i podlinkowanie do OU z serwerami
6. Testy logowania i analiza logów w Event Viewer

