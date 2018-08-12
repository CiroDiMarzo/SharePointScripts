$sln = Get-SPsolution -identity AwesomeCalculator.wsp

Uninstall-SPsolution -identity AwesomeCalculator.wsp -confirm:$false

Write-Host "Starting solution uninstall operation..." 

while($sln.JobExists) {
    echo "> Uninstall in progress..."
    start-sleep -s 3
}

Write-Host "Done. Starting remove process"

Remove-SPsolution -identity AwesomeCalculator.wsp -confirm:$false

Write-Host "Done"