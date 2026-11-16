# Loaded from $PROFILE (PowerShell 7 and Windows PowerShell 5.1).
# Compatible with 5.1: no ??, no ternary, no &&.

# Built-in aliases (gl = Get-Location, gp = Get-ItemProperty, ...) would shadow our functions.
foreach ($name in 'gs', 'gd', 'gl', 'll', 'la') {
    Remove-Item "Alias:$name" -Force -ErrorAction SilentlyContinue
}

function ll { Get-ChildItem -Force @args }
function la { Get-ChildItem -Force -Hidden @args }
function .. { Set-Location .. }

function gs { git status -sb @args }
function gd { git diff @args }
function gl { git log --oneline --graph --decorate -20 @args }

if (Get-Command starship -ErrorAction SilentlyContinue) {
    Invoke-Expression (&starship init powershell)
}
