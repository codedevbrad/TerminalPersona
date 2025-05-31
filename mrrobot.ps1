
# FSOCIETY BOOT-UP SEQUENCE
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
Clear-Host

# Glitchy loading spinner
$loading = @("|", "/", "-", "\")
for ($i = 0; $i -lt 20; $i++) {
    Write-Host -NoNewline "`r[FSOCIETY] Booting system " -ForegroundColor DarkRed
    Write-Host -NoNewline $loading[$i % $loading.Count]
    Start-Sleep -Milliseconds 100
}
Write-Host "`r[FSOCIETY] Access granted.            " -ForegroundColor Green
Start-Sleep -Milliseconds 300

# Spinner function
function Show-Spinner {
    param (
        [int]$Duration = 800,
        [int]$Delay = 100
    )
    $chars = "|/-\"
    $end = (Get-Date).AddMilliseconds($Duration)
    while ((Get-Date) -lt $end) {
        foreach ($char in $chars.ToCharArray()) {
            Write-Host -NoNewline "`b$char"
            Start-Sleep -Milliseconds $Delay
        }
    }
    Write-Host -NoNewline "`b "  # Clear spinner
}

# Fake ACCESS LOG
Write-Host "`n[ACCESS LOG]" -ForegroundColor DarkGreen

# Authenticating...
Write-Host -NoNewline "  > Authenticating..." -ForegroundColor Gray
Show-Spinner
Write-Host " Access granted" -ForegroundColor Green
Start-Sleep -Milliseconds 200

# Retrieving digital footprint...
Write-Host -NoNewline "  > Spoofing digital footprint..." -ForegroundColor Gray
Show-Spinner
Write-Host " Retrieved" -ForegroundColor Green
Start-Sleep -Milliseconds 200

# Loading payload...
Write-Host -NoNewline "  > Loading payload..." -ForegroundColor Gray
Show-Spinner
Write-Host " Injected" -ForegroundColor Green
Start-Sleep -Milliseconds 500

# Spoofed IP and Port Connection
$fakeIP = "192.168." + (Get-Random -Minimum 10 -Maximum 254) + "." + (Get-Random -Minimum 2 -Maximum 254)

Write-Host "`n[NETWORK]" -ForegroundColor DarkCyan

Write-Host -NoNewline "  > Spoofing IP identity ($fakeIP)..." -ForegroundColor Gray
Show-Spinner
Write-Host " Spoofed" -ForegroundColor Green
Start-Sleep -Milliseconds 300

Write-Host -NoNewline "  > Connecting to fs0c13ty://1337..." -ForegroundColor Gray
Show-Spinner
Write-Host " Connection established" -ForegroundColor Green
Start-Sleep -Milliseconds 600

# FSOCIETY Banner
$banner = @(
  "                                                                    ",
  "        hello, friend.                                              ",
  "        welcome to the system.                                      ",
  "        we are fsociety.                                            ",
  "        there is no turning back now.                               ",
  "                                                                    "
)
foreach ($line in $banner) {
    Write-Host $line -ForegroundColor Red
    Start-Sleep -Milliseconds (Get-Random -Minimum 40 -Maximum 120)
}

# Random Elliot quote
$quotes = @(
  "Control is an illusion.",
  "People always told me growing up, It's never what you do that matters, it's what you think.",
  "The world is a dangerous place. Not because of those who do evil, but because of those who look on and do nothing.",
  "There's a powerful group of people out there that are secretly running the world."
)
$quote = Get-Random -InputObject $quotes
Start-Sleep -Milliseconds 500
Write-Host "`n💬  $quote" -ForegroundColor DarkGray

Start-Sleep -Milliseconds 500
Write-Host "`n👁️  If you're seeing this, you've been chosen. Time to wake up." -ForegroundColor DarkGray


