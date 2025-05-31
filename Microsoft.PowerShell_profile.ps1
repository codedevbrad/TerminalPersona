# OH MY POSH
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" | Invoke-Expression

# Theme path and mode config
$themePath = "D:\001. programming\shellPersonas"
$modeFile = "$themePath\current_mode.txt"

# Default to mrrobot if the mode file doesn't exist
if (-not (Test-Path $modeFile)) {
    "mrrobot" | Out-File -Encoding ascii $modeFile
}

# Read the current mode
$terminalMode = (Get-Content $modeFile).Trim().ToLower()
$themeScript = Join-Path $themePath "$terminalMode.ps1"

# Load the selected script if it exists
if (Test-Path $themeScript) {
    . $themeScript
} else {
    Write-Host "Warning: Theme script not found: $themeScript" -ForegroundColor Yellow
}

# Terminal mode switch function
function ChangePersona {
    param (
        [ValidateSet("mrrobot", "jarvis")]
        [string]$mode
    )

    $configPath = "D:\001. programming\shellPersonas\current_mode.txt"
    $scriptPath = "D:\001. programming\shellPersonas\$mode.ps1"

    # Save the selected mode
    $mode | Out-File -Encoding ascii $configPath

    Write-Host ""
    Write-Host "Terminal persona changed to: $mode" -ForegroundColor Cyan

    # Load the new persona script immediately
    if (Test-Path $scriptPath) {
        Write-Host "Loading $mode.ps1..." -ForegroundColor DarkGray
        . $scriptPath
    } else {
        Write-Host "Error: Persona script '$scriptPath' not found." -ForegroundColor Red
    }
}

function Boot-Into {
    param([string]$projectName)

    $projectPath = ""
    $found = $true

    switch ($projectName.ToLower()) {
        "bootcamp" {
            $projectPath = "D:\001. programming\interview_showcase\004. the coding bootcamp"
        }
        "projectb" {
            $projectPath = "D:\001. programming\projectB"
        }
        default {
            Write-Host "ERROR: Unknown project '$projectName'" -ForegroundColor Red
            $found = $false
        }
    }

    if ($found) {
        Write-Host ""
        Write-Host "Initializing interface..." -ForegroundColor Cyan
        Start-Sleep -Milliseconds 300

        Write-Host ""
        Write-Host "Brute forcing in..." -ForegroundColor DarkCyan

        for ($i = 0; $i -lt 16; $i++) {
            $dots = "." * (($i % 4) + 1)
            Write-Host -NoNewline ("`r    " + $dots)
            Start-Sleep -Milliseconds 120
        }

        Write-Host ""
        Write-Host "Access granted. Opening $projectName..." -ForegroundColor Green
        Start-Sleep -Milliseconds 500

        code $projectPath
    }
}


