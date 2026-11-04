# Bootstrap or update the personal Codex Skills collection.
# Can be invoked with: irm https://raw.githubusercontent.com/leoLucks/skills/main/setup.ps1 | iex
$ErrorActionPreference = 'Stop'
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw 'Git for Windows is required.'
}
$repo = Join-Path $HOME '.codex-skills-source'
$url = 'https://github.com/leoLucks/skills.git'
if (Test-Path -LiteralPath (Join-Path $repo '.git') -PathType Container) {
    & git -C $repo pull --ff-only
    if ($LASTEXITCODE -ne 0) { throw 'Git update failed; installation aborted.' }
} elseif (Test-Path -LiteralPath $repo) {
    throw "Path exists but is not a Git checkout: $repo"
} else {
    & git clone $url $repo
    if ($LASTEXITCODE -ne 0) { throw 'Git clone failed; installation aborted.' }
}
& powershell.exe -NoProfile -ExecutionPolicy Bypass -File (Join-Path $repo 'install.ps1')
if ($LASTEXITCODE -ne 0) { throw 'Skill installation failed.' }
