param([string]$Skill = "senior-codecraft")
$ErrorActionPreference = "Stop"
$root = Resolve-Path (Join-Path $PSScriptRoot "..")
$source = Join-Path $root "skills/engineering/$Skill"
if (-not (Test-Path (Join-Path $source "SKILL.md"))) { throw "Skill not found: $source" }
$target = Join-Path $HOME ".agents/skills/$Skill"
New-Item -ItemType Directory -Force -Path (Split-Path $target) | Out-Null
if (Test-Path $target) {
  $backup = "$target.backup.$(Get-Date -Format yyyyMMddHHmmss)"
  Move-Item $target $backup
  Write-Host "Backed up existing skill to $backup"
}
Copy-Item $source $target -Recurse
Write-Host "Installed $Skill into $target"
Write-Host "Optional: Copy the repository AGENTS.md guidance into ~/.codex/AGENTS.md after reviewing existing rules."
