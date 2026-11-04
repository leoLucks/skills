# Install ecommerce-visual-director for the current Windows user.
# Run from repository root: powershell -NoProfile -ExecutionPolicy Bypass -File .\install.ps1
$ErrorActionPreference = 'Stop'
$source = Join-Path $PSScriptRoot 'ecommerce\ecommerce-visual-director'
$manifest = Join-Path $source 'SKILL.md'
$destinationRoot = Join-Path $HOME '.agents\skills'
$destination = Join-Path $destinationRoot 'ecommerce-visual-director'

if (-not (Test-Path -LiteralPath $manifest -PathType Leaf)) {
    throw "Missing Skill manifest: $manifest"
}
New-Item -ItemType Directory -Force -Path $destinationRoot | Out-Null

if (Test-Path -LiteralPath $destination) {
    $stamp = Get-Date -Format 'yyyyMMdd-HHmmss-fff'
    $backup = "$destination.backup.$stamp"
    if (Test-Path -LiteralPath $backup) {
        throw "Backup already exists: $backup"
    }
    Move-Item -LiteralPath $destination -Destination $backup -ErrorAction Stop
    Write-Host "Previous Skill backed up to: $backup"
}

Copy-Item -LiteralPath $source -Destination $destination -Recurse -ErrorAction Stop
if (-not (Test-Path -LiteralPath (Join-Path $destination 'SKILL.md') -PathType Leaf)) {
    throw "Installation check failed: missing SKILL.md in $destination"
}
Write-Host "Installed: $destination"
Write-Host 'Restart Codex if needed. Repeat on each new device.'
