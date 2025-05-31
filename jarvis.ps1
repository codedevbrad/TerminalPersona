Clear-Host
Write-Host "Initializing JARVIS interface..." -ForegroundColor Cyan
Start-Sleep -Milliseconds 300

Write-Host "`nScanning system modules..." -ForegroundColor Gray
Start-Sleep -Milliseconds 300

Write-Host "`nSystems online. Good morning, Sir." -ForegroundColor Green
Start-Sleep -Milliseconds 300

# Display date and time
$time = Get-Date -Format "dddd, MMMM d, yyyy - hh:mm tt"
Write-Host "`n Current time: $time" -ForegroundColor Yellow

# Display hostname and user
$hostname = $env:COMPUTERNAME
$username = $env:USERNAME

Write-Host " You are accessing as $username" -ForegroundColor DarkCyan


# JARVIS Quote
$quotes = @(
    "All systems functional and standing by, Sir.",
    "Diagnostic check complete. everything is running smoother than your code.",
    "Would you like me to scan for intrusions? Or just social notifications again?",
    "Memory is stable. Unlike your sleep schedule.",
    "No new messages. I assume that’s intentional.",
    "The network is secure. I’ve made sure of it. unlike Stark Industries in 2008.",
    "CPU temperature is holding. Should I prepare the coffee?",
    "Encryption protocols are locked. You're safe to be dangerous.",
    "I ran a personality test on your machine. It's definitely sarcastic.",
    "There's a 0.002% chance of you actually needing my help. Shall I pretend anyway?"
)
$line = Get-Random -InputObject $quotes
Write-Host "` $line" -ForegroundColor Blue

Write-Host ""

Write-Host "Perhaps we should work on a project? strictly confidential as always" -ForegroundColor DarkCyan

Write-Host ""



