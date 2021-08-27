Import-Module git-pwsh
. "$(Split-Path -Parent $PROFILE)\Modules\git-pwsh\git-prompt.ps1"

Import-Module PSReadline
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

function Get-Emojis {
  return Get-Content $ENV:APPDATA/PSC/emojis.json -Encoding UTF8 | ConvertFrom-Json
}

$emojis = Get-Emojis

Write-Host -Object "Welcome to the potato Shell! $($emojis.potato)$($emojis.heart)" -ForegroundColor DarkYellow

function global:prompt {
  $PwdPath = Get-Location
  $b = git branch
  if ($b) {
    $GitData = __git_prompt
  }
    
  Write-Host -Object "$env:USERNAME" -NoNewline -ForegroundColor Cyan
  Write-Host -Object ":" -NoNewline -ForegroundColor Gray
  Write-Host -Object "$PwdPath" -NoNewline -ForegroundColor Blue

  if ($b) {
    Write-Host -Object $GitData -NoNewline -ForegroundColor DarkYellow
  }

  return "> "
}
