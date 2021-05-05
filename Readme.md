# Simple Sonar Qube test project

This project shows how to run a SonarQube analysis on a .NET Core project. 

- Includes code coverage results
- Uses a Directory.Build.props file to show how you can globally exclude certain folders and files.

## Start SonarQube

The easiest way to try out SonarQube is by running it locally as a Docker container. You can do this by running startsonarqube.ps1.

After the container has started, you can access the SonarQube web ui by opening https://localhost:9000. The default credentials are 

- Username: admin
- Password: admin

## Configure an access token

To access SonarQube from the command line, you need an acces token. If you navigate to http://localhost:9000/account/security/ you can easily generate a new access token.

Copy the new token and store it in an environment variable named SonarToken.

## Running the analysis

You can now start the analys by running runscan.ps1.
This will build and test the code and upload the results to SonarQube in a new project named MyTestProject.