function Show-MainMenu() {
    Clear-Host
    Write-Host "=== Developer Setup Tool ===" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Select IDE to install:" -ForegroundColor Yellow
    Write-Host "[1] Visual Studio Code"
    Write-Host "[2] Code::Blocks"
    Write-Host "[3] Sublime Text"
    Write-Host "-----------------------"
    Write-Host ""
    Write-Host "Select Programing Language:" -ForegroundColor Yellow
    Write-Host "[4] C++"
    Write-Host "[5] Python"
    Write-Host "[6] Java"
    Write-Host "-----------------------"
    Write-Host ""
    Write-Host "[H] Help"
    Write-Host "[0] Exit"
}