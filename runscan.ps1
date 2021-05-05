dotnet sonarscanner begin /k:"test3" /d:sonar.login="16dbd156ed8d0a0a9e384f3aa7aebfff1449675b" /d:"sonar.cs.opencover.reportsPaths=**/coverage.cobertura.xml" 
dotnet build
#dotnet test --collect:"XPlat Code Coverage" 

dotnet test --logger trx --no-build /p:CollectCoverage=true /p:CoverletOutputFormat=opencover /p:CoverletOutput=coverage/ 

dotnet sonarscanner end /d:sonar.login="16dbd156ed8d0a0a9e384f3aa7aebfff1449675b" 
