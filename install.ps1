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


$ideChoice = Read-Host "Enter your choice ..."

function Install-IDE {
    param($choice)

    if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
        Write-Host "Winget not found! Please install it from Microsoft Store manually."
        exit
    }

    switch ($choice) {
        "1" {
            Write-Host "Installing Visual Studio Code..." -ForegroundColor Cyan
            winget install --id Microsoft.VisualStudioCode -e --accept-package-agreements --accept-source-agreements
        }
        "2" {
            Write-Host "Installing Code::Blocks..." -ForegroundColor Cyan
            winget install --id CodeBlocks.CodeBlocks -e --accept-package-agreements --accept-source-agreements
        }
        "3" {
            Write-Host "Installing Sublime Text..." -ForegroundColor Cyan
            winget install --id SublimeHQ.SublimeText.4 -e --accept-package-agreements --accept-source-agreements
        }
        "4" {
            Write-Host "Skipping IDE installation." -ForegroundColor Yellow
        }
        Default {
            Write-Host "Invalid IDE choice. Skipping IDE installation." -ForegroundColor Red
        }
    }
}

Install-IDE $ideChoice
