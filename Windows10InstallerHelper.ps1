Read-Host -Prompt "Press ENTER to continue or CTRL+C to quit"


<# This script uses winget to manage the install packages, 
if winget is not installed, install it.
#>

Write-Host "Checking winget..."

# Check if winget is installed
if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe){
    'Winget Already Installed'
}  
else{
    # Installing winget from the Microsoft Store
	Write-Host "Winget not found, installing it now."
	Start-Process "ms-appinstaller:?source=https://aka.ms/getwinget"
	$nid = (Get-Process AppInstaller).Id
	Wait-Process -Id $nid
	Write-Host Winget Installed
}

# Delay 5 seconds to ensure winget installs
Start-Sleep -s 5

# ----- Browsers -----
Write-Host "Installing Firefox"
winget install -e --accept-source-agreements Mozilla.Firefox

Write-Host "Installing Google Chrome"
winget install -e --accept-source-agreements Google.Chrome

Write-Host "Installing OperaGX"
winget install -e --accept-source-agreements Opera.OperaGX

# ----- Office -----
Write-Host "Installing Notepad++"
winget install -e --accept-source-agreements Notepad++.Notepad++

Write-Host "Installing Microsoft Office"
winget install -e --accept-source-agreements Microsoft.Office

<#
Write-Host "Installing WPSOffice"
winget install -e --accept-source-agreements Kingsoft.WPSOffice

Write-Host "Installing LibreOffice"
winget install -e --accept-source-agreements TheDocumentFoundation.LibreOffice

Write-Host "Installing SumatraPDF"
winget install -e --accept-source-agreements SumatraPDF.SumatraPDF

Write-Host "Installing PDFCreator"
winget install -e --accept-source-agreements pdfforge.PDFCreator
#>

# ----- Programming and Design -----
<#
Write-Host "Installing Anaconda"
winget install -e --accept-source-agreements Anaconda.Anaconda3

Write-Host "Installing Pycharm"
winget install -e --accept-source-agreements JetBrains.PyCharm.Community

Write-Host "Installing Eclipse"
winget install -e --accept-source-agreements EclipseAdoptium.TemurinJRE.11

Write-Host "Installing RStudio"
winget install -e --accept-source-agreements RStudio.RStudio.OpenSource

Write-Host "Installing Arduino IDE"
winget install -e --accept-source-agreements ArduinoSA.IDE.rc

Write-Host "Installing UnityHub"
winget install -e --accept-source-agreements UnityTechnologies.UnityHub

Write-Host "Installing OpenSCAD"
winget install -e --accept-source-agreements OpenSCAD.OpenSCAD
#>

# ----- Entertainment -----
Write-Host "Installing Steam"
winget install -e --accept-source-agreements Valve.Steam

Write-Host "Installing Spotify"
winget install -e --accept-source-agreements Spotify.Spotify

Write-Host "Installing PopcornTime"
winget install -e --accept-source-agreements PopcornTime.PopcornTime

# ----- Video and Image tools -----
Write-Host "Installing VLC Media Player"
winget install -e --accept-source-agreements VideoLAN.VLC

<#
Write-Host "Installing Gimp Image Editor"
winget install -e --accept-source-agreements GIMP.GIMP

Write-Host "Installing Krita"
winget install -e --accept-source-agreements KDE.Krita

Write-Host "Installing Inkscape"
winget install -e --accept-source-agreements Inkscape.Inkscape

Write-Host "Installing Blender"
winget install -e --accept-source-agreements BlenderFoundation.Blender

Write-Host "Installing MeshLab"
winget install -e --accept-source-agreements CNRISTI.MeshLab

Write-Host "Installing Shotcut"
winget install -e --accept-source-agreements --id Meltytech.Shotcut

Write-Host "Installing HitFilmExpress"
winget install -e --accept-source-agreements FXHOME.HitFilmExpress

Write-Host "Installing Audacity"
winget install -e --accept-source-agreements Audacity.Audacity
#>

# ----- Comunications -----
Write-Host "Installing Discord"
winget install -e --accept-source-agreements Discord.Discord

Write-Host "Installing WhatsApp"
winget install -e --accept-source-agreements WhatsApp.WhatsApp

<#
Write-Host "Installing Telegram"
winget install -e --accept-source-agreements Telegram.TelegramDesktop

Write-Host "Installing Zoom"
winget install -e --accept-source-agreements Zoom.Zoom

Write-Host "Installing Microsoft Teams"
winget install -e --accept-source-agreements Microsoft.Teams
#>


# ----- Security -----
Write-Host "Installing Malwarebytes"
winget install -e --accept-source-agreements Malwarebytes.Malwarebytes

# ----- Productivity -----
Write-Host "Installing ShareX Screenshot Tool"
winget install -e --accept-source-agreements ShareX.ShareX 

Write-Host "Installing Microsoft PowerToys" 
winget install -e --accept-source-agreements Microsoft.PowerToys 

Write-Host "Installing AnyDesk"
winget install -e --accept-source-agreements AnyDeskSoftwareGmbH.AnyDesk

Write-Host "Installing Parsec"
winget install -e --accept-source-agreements Parsec.Parsec

Write-Host "Installing Google Drive"
winget install -e --accept-source-agreements Google.Drive

<#
Write-Host "Installing GitHub Desktop"
winget install -e --accept-source-agreements GitHub.GitHubDesktop

Write-Host "Installing GitKraken"
winget install -e --accept-source-agreements Axosoft.GitKraken

Write-Host "Installing Git"
winget install -e --accept-source-agreements Git.Git

Write-Host "Installing OBSStudio"
winget install -e --accept-source-agreements OBSProject.OBSStudio

Write-Host "Installing 1Password"
winget install -e --accept-source-agreements AgileBits.1Password

Write-Host "Installing Cura"
winget install -e --accept-source-agreements Ultimaker.Cura
#>

# ----- Utilities -----
Write-Host "Installing WinRAR"
winget install -e --accept-source-agreements RARLab.WinRAR

Write-Host "Installing GeForceExperience"
winget install -e --accept-source-agreements --id Nvidia.GeForceExperience

<#
Write-Host "Installing CCleaner"
winget install -e --accept-source-agreements Piriform.CCleaner

Write-Host "Installing Speccy"
winget install -e --accept-source-agreements Piriform.Speccy

Write-Host "Installing CPU-Z"
winget install -e --accept-source-agreements CPUID.CPU-Z

Write-Host "Installing GPU-Z"
winget install -e --accept-source-agreements TechPowerUp.GPU-Z

Write-Host "Installing Etcher USB Imager"
winget install -e --accept-source-agreements Balena.Etcher 

Write-Host "Installing Rufus USB Imager"
winget install -e --accept-source-agreements Rufus.Rufus

Write-Host "Installing PuTTY & WinSCP" 
winget install -e --accept-source-agreements PuTTY.PuTTY 
winget install -e --accept-source-agreements WinSCP.WinSCP 

Write-Host "Installing Tailscale"
winget install -e --accept-source-agreements tailscale.tailscale

Write-Host "Installing qBittorrent"
winget install -e --accept-source-agreements qBittorrent.qBittorrent

Write-Host "Installing BCUninstaller"
winget install -e --accept-source-agreements Klocman.BulkCrapUninstaller
#>



