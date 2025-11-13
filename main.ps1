. "$PSScriptRoot\modules\menu.ps1"
. "$PSScriptRoot\modules\installer.ps1"

Show-MainMenu

$choice = Read-Host "Choose an option (1-3)"
Install-SelectedIDE $choice