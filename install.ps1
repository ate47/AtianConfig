param(

)

Write-Host "GIT-PWSH installation"

New-Item -ItemType Directory "$(Split-Path -Parent $PROFILE)\Modules" -Force

Push-Location "$(Split-Path -Parent $PROFILE)\Modules"
git clone https://github.com/kwkam/git-pwsh.git
Pop-Location

Write-Host "SET EMOJIS"
New-Item -ItemType Directory $ENV:APPDATA\PSC -Force
Copy-Item .\shell\emojis.json $ENV:APPDATA\PSC

Write-Host "SET PROFILE"
if (Test-Path $PROFILE) {
    Copy-Item $PROFILE .\shell\profile_backup.ps1
}
Copy-Item .\shell\profile.ps1 $PROFILE

Write-Host "INSTALL scoop"
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

Write-Host "INSTALL tools"
scoop install sudo

scoop bucket add nerd-fonts
scoop install LiberationMono-NF

scoop install vim marp watchexec

Install-Module -Name Terminal-Icons -Repository PSGallery

# Run profile
. $PROFILE


