. .\Variables.ps1

$sln = Get-SPsolution -identity $solutionName

Uninstall-SPsolution -identity $solutionName -WebApplication $webApp -confirm:$false

Write-Host "Starting solution uninstall operation..." 

while($sln.JobExists) {
    Write-Host -ForegroundColor Gray "> Uninstall in progress..."
    start-sleep -s 3
}

Write-Host -ForegroundColor Gray "Done. Starting remove process"

Remove-SPsolution -identity $solutionName -confirm:$false

Write-Host "Done"