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

########## Browsers
Write-Host "Installing Firefox"
winget install -e Mozilla.Firefox

Write-Host "Installing Google Chrome"
winget install -e Google.Chrome

Write-Host "Installing OperaGX"
winget install -e Opera.OperaGX

########## Office
Write-Host "Installing Notepad++"
winget install -e Notepad++.Notepad++

Write-Host "Installing Microsoft Office"
winget install -e Microsoft.Office

<#
Write-Host "Installing WPSOffice"
winget install -e Kingsoft.WPSOffice

Write-Host "Installing LibreOffice"
winget install -e TheDocumentFoundation.LibreOffice

Write-Host "Installing SumatraPDF"
winget install -e SumatraPDF.SumatraPDF

Write-Host "Installing PDFCreator"
winget install -e pdfforge.PDFCreator
#>

########## Programming and Design
<#
Write-Host "Installing Anaconda"
winget install -e Anaconda.Anaconda3

Write-Host "Installing Pycharm"
winget install -e JetBrains.PyCharm.Community

Write-Host "Installing Eclipse"
winget install -e EclipseAdoptium.TemurinJRE.11

Write-Host "Installing RStudio"
winget install -e RStudio.RStudio.OpenSource

Write-Host "Installing Arduino IDE"
winget install -e ArduinoSA.IDE.rc

Write-Host "Installing UnityHub"
winget install -e UnityTechnologies.UnityHub

Write-Host "Installing OpenSCAD"
winget install -e OpenSCAD.OpenSCAD
#>

########## Entertainment
Write-Host "Installing Steam"
winget install -e Valve.Steam

Write-Host "Installing Spotify"
winget install -e Spotify.Spotify

Write-Host "Installing PopcornTime"
winget install -e PopcornTime.PopcornTime

########## Video and Image tools
Write-Host "Installing VLC Media Player"
winget install -e VideoLAN.VLC

<#
Write-Host "Installing Gimp Image Editor"
winget install -e GIMP.GIMP

Write-Host "Installing Krita"
winget install -e KDE.Krita

Write-Host "Installing Inkscape"
winget install -e Inkscape.Inkscape

Write-Host "Installing Blender"
winget install -e BlenderFoundation.Blender

Write-Host "Installing MeshLab"
winget install -e CNRISTI.MeshLab

Write-Host "Installing Shotcut"
winget install -e --id Meltytech.Shotcut

Write-Host "Installing HitFilmExpress"
winget install -e FXHOME.HitFilmExpress

Write-Host "Installing Audacity"
winget install -e Audacity.Audacity
#>

########## Comunications
Write-Host "Installing Discord"
winget install -e Discord.Discord

Write-Host "Installing WhatsApp"
winget install -e WhatsApp.WhatsApp

<#
Write-Host "Installing Telegram"
winget install -e Telegram.TelegramDesktop

Write-Host "Installing Zoom"
winget install -e Zoom.Zoom

Write-Host "Installing Microsoft Teams"
winget install -e Microsoft.Teams
#>


# Security
Write-Host "Installing Malwarebytes"
winget install -e Malwarebytes.Malwarebytes

########## Productivity
Write-Host "Installing ShareX Screenshot Tool"
winget install -e ShareX.ShareX 

Write-Host "Installing Microsoft PowerToys" 
winget install -e Microsoft.PowerToys 

Write-Host "Installing AnyDesk"
winget install -e AnyDeskSoftwareGmbH.AnyDesk

Write-Host "Installing Parsec"
winget install -e Parsec.Parsec

Write-Host "Installing Google Drive"
winget install -e Google.Drive

<#
Write-Host "Installing GitHub Desktop"
winget install -e GitHub.GitHubDesktop

Write-Host "Installing GitKraken"
winget install -e Axosoft.GitKraken

Write-Host "Installing Git"
winget install -e Git.Git

Write-Host "Installing OBSStudio"
winget install -e OBSProject.OBSStudio

Write-Host "Installing 1Password"
winget install -e AgileBits.1Password

Write-Host "Installing Cura"
winget install -e Ultimaker.Cura
#>

########## Utilities
Write-Host "Installing WinRAR"
winget install -e RARLab.WinRAR

Write-Host "Installing GeForceExperience"
winget install -e --id Nvidia.GeForceExperience

<#
Write-Host "Installing CCleaner"
winget install -e Piriform.CCleaner

Write-Host "Installing Speccy"
winget install -e Piriform.Speccy

Write-Host "Installing CPU-Z"
winget install -e CPUID.CPU-Z

Write-Host "Installing GPU-Z"
winget install -e TechPowerUp.GPU-Z

Write-Host "Installing Etcher USB Imager"
winget install -e Balena.Etcher 

Write-Host "Installing Rufus USB Imager"
winget install -e Rufus.Rufus

Write-Host "Installing PuTTY & WinSCP" 
winget install -e PuTTY.PuTTY 
winget install -e WinSCP.WinSCP 

Write-Host "Installing Tailscale"
winget install -e tailscale.tailscale

Write-Host "Installing qBittorrent"
winget install -e qBittorrent.qBittorrent

Write-Host "Installing BCUninstaller"
winget install -e Klocman.BulkCrapUninstaller
#>




