$ErrorActionPreference = "Stop"
$root = Resolve-Path (Join-Path $PSScriptRoot "..")
Push-Location $root
try {
  if (-not (Get-Command git -ErrorAction SilentlyContinue)) { throw "Git is required." }
  if (-not (Test-Path ".git")) { git init -b main }
  git remote get-url origin 2>$null | Out-Null
  if ($LASTEXITCODE -ne 0) { git remote add origin "https://github.com/DIIAUS/skills.git" }
  git add .
  git diff --cached --quiet
  if ($LASTEXITCODE -ne 0) { git commit -m "feat: maintain categorized Codex skills" }
  git push -u origin main
} finally { Pop-Location }
