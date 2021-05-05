if ( -not (dotnet tool list -g | Select-String "dotnet-sonarscanner")) {
    Write-Host "Installing dotnet-sonarscanner"
    dotnet tool install --global dotnet-sonarscanner 
}
else {
    Write-Host "dotnet-sonarscanner already installed"
}

if ( -not (Test-Path env:SonarToken)) { 
    throw "Please set the Environment Variable SonarToken to a valid value"
}

$token = $env:SonarToken

$projectName = "test3"
$codeCoveragePath = "../coverage/"

dotnet sonarscanner begin /k:"$projectName" /d:sonar.login="$token" /d:"sonar.cs.opencover.reportsPaths=coverage/coverage.opencover.xml"
dotnet build
dotnet test --logger trx --no-build /p:CollectCoverage=true /p:CoverletOutputFormat=opencover /p:CoverletOutput=$codeCoveragePath
    
dotnet sonarscanner end /d:sonar.login="$token" 