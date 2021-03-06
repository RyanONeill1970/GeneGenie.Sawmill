dotnet tool install --global dotnet-sonarscanner --version 4.10.0
dotnet test GeneGenie.Sawmill.Tests\GeneGenie.Sawmill.Tests.csproj /p:CollectCoverage=true /p:CoverletOutputFormat=opencover /p:CoverletOutput="%CD%\opencover.xml"
dotnet build-server shutdown
dotnet sonarscanner begin /k:"GeneGenie.Sawmill" /o:"thegenegenieproject" /d:sonar.host.url="https://sonarcloud.io" /d:sonar.login=%SonarQubeApiKey% /d:sonar.cs.opencover.reportsPaths="%CD%\opencover.xml"
dotnet build
dotnet sonarscanner end /d:sonar.login=%SonarQubeApiKey%
