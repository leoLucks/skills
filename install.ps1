# Install all category/skill/SKILL.md folders to the current user's Codex Skills directory.
$ErrorActionPreference = 'Stop'
$destinationRoot = Join-Path $HOME '.agents\skills'
New-Item -ItemType Directory -Force -Path $destinationRoot | Out-Null
$count = 0
foreach ($category in (Get-ChildItem -LiteralPath $PSScriptRoot -Directory)) {
    if ($category.Name.StartsWith('.')) { continue }
    foreach ($skill in (Get-ChildItem -LiteralPath $category.FullName -Directory)) {
        $manifest = Join-Path $skill.FullName 'SKILL.md'
        if (-not (Test-Path -LiteralPath $manifest -PathType Leaf)) { continue }
        $destination = Join-Path $destinationRoot $skill.Name
        if (Test-Path -LiteralPath $destination) {
            $backup = "$destination.backup.$(Get-Date -Format 'yyyyMMdd-HHmmss-fff')-$PID"
            Move-Item -LiteralPath $destination -Destination $backup -ErrorAction Stop
            Write-Host "Backed up: $backup"
        }
        Copy-Item -LiteralPath $skill.FullName -Destination $destination -Recurse -ErrorAction Stop
        if (-not (Test-Path -LiteralPath (Join-Path $destination 'SKILL.md') -PathType Leaf)) {
            throw "Install verification failed: $destination"
        }
        Write-Host "Installed: $($skill.Name) -> $destination"
        $count++
    }
}
if ($count -eq 0) { throw 'No Skills found under category/skill/SKILL.md' }
Write-Host "Installed $count Skills. Restart Codex if needed."
