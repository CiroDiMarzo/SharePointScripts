. .\Variables.ps1

Write-Host "Updating the solution $literalPath"

Update-SPSolution -Identity AwesomeCalculator.wsp -LiteralPath $literalPath -GACDeployment