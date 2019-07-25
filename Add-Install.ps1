. .\Variables.ps1

Write-Host -ForegroundColor Gray "Adding the solution $literalPath"

$sln = Add-SPSolution -LiteralPath $literalPath

Write-Host -ForegroundColor Green "Solution added, starting installation..."

Install-SPSolution -Identity $solutionName -GACDeployment -WebApplication $webApp  -Force

while($sln.JobExists) {
    -ForegroundColor Gray "> Installation in progress..."
    start-sleep -s 3
}

Write-Host -ForegroundColor Green "Done"