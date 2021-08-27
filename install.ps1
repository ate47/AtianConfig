param(

)

Write-Host "GIT-PWSH installation"

Push-Location "$(Split-Path -Parent $PROFILE)\Modules"
git clone https://github.com/kwkam/git-pwsh.git
Pop-Location

Write-Host "SET EMOJIS"
New-Item -ItemType Directory $ENV:APPDATA\PSC -Force
Copy-Item .\shell\emojis.json $ENV:APPDATA\PSC

Write-Host "SET PROFILE"
Copy-Item $PROFILE .\shell\profile_backup.ps1
Copy-Item .\shell\profile.ps1 $PROFILE

