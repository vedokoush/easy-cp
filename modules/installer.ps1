function Install-SelectedIDE($choice) {
    switch ($choice) {
        1 { Write-Host "Installing Visual Studio Code..." -ForegroundColor Yellow }
        2 { Write-Host "Installing Code::Blocks..." -ForegroundColor Yellow }
        3 { Write-Host "Installing Sublime Text..." -ForegroundColor Yellow }
        default { Write-Host "Invalid choice!" -ForegroundColor Red }
    }
}
