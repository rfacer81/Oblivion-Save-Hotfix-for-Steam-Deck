# Paths to local and OneDrive save folders
$localPath = "$env:USERPROFILE\Documents\My Games\Oblivion Remastered\Saved\SaveGames"
$oneDrivePath = "$env:USERPROFILE\OneDrive\Documents\My Games\Oblivion Remastered\Saved\SaveGames"

# Logging setup
$logDir = "$env:USERPROFILE\OneDrive\Documents\My Games\Oblivion Remastered\Logs"
if (!(Test-Path $logDir)) {
    New-Item -Path $logDir -ItemType Directory -Force | Out-Null
}
$timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
$logFile = "$logDir\SyncLog_$timestamp.txt"

function Sync-Folders {
    param (
        [string]$Source,
        [string]$Destination,
        [string]$Direction
    )

    Add-Content -Path $logFile -Value "`n--- Sync $Direction --- $(Get-Date) ---"

    robocopy $Source $Destination /E /XO /XN /XC /COPYALL /DCOPY:T /R:2 /W:5 /TEE /LOG+:$logFile
}

Write-Host "Merging Local saves → OneDrive..."
Sync-Folders -Source $localPath -Destination $oneDrivePath -Direction "Local to OneDrive"

Write-Host "Merging OneDrive saves → Local..."
Sync-Folders -Source $oneDrivePath -Destination $localPath -Direction "OneDrive to Local"

Write-Host "Merge complete. Log: $logFile"