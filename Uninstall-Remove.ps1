. .\Variables.ps1

$sln = Get-SPsolution -identity $solutionName.wsp

Uninstall-SPsolution -identity $solutionName.wsp -WebApplication $webApp -confirm:$false

Write-Host "Starting solution uninstall operation..." 

while($sln.JobExists) {
    Write-Host -ForegroundColor Gray "> Uninstall in progress..."
    start-sleep -s 3
}

Write-Host -ForegroundColor Gray "Done. Starting remove process"

Remove-SPsolution -identity $solutionName.wsp -confirm:$false

Write-Host "Done"