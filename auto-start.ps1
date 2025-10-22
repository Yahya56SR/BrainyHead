# filepath: D:\Projects\BrainyHead\auto-start.ps1
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$serverDir = Join-Path $scriptDir 'BrainyHead-Server'

if (-not (Test-Path $serverDir)) {
    Write-Error "Server directory not found: $serverDir"
    exit 1
}

Write-Output "Starting brain.py in $serverDir..."
Start-Process -FilePath 'python' -ArgumentList 'brain.py' -WorkingDirectory $serverDir

Push-Location $scriptDir
try {
    Write-Output "Launching ngrok..."
    & 'ngrok' 'http' '8000' '--url' 'https://curiously-assured-eft.ngrok-free.app'
}
finally {
    Pop-Location
}