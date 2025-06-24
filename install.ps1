$link = "https://github.com/bestcordofficial/Bestcord-Installer/releases/latest/download/BestcordInstallerCli.exe"

$outfile = "$env:TEMP\BestcordInstallerCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
