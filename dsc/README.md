# Desired State Configuration

##Using PowerShell Desired State Configuration
The configuration scripts are initially planned for local execution on the machine you want to apply the configuration.
Just open the .ps1 file on the local machine to install and configure the software packages defined in the configuration.

* dscUtilityPackages.ps1 - General development tools e.g. for editing files and taking screenshots
* dscWebPackages.ps1 - Web development tools e.g. Chrome, Firefox and proxy tools for debugging web requests

The configurations may be later adapted to be pushed to remote machines or to be remotely pulled from a DSC pull server.

Most of the software packages contained in the configurations are obtained from Chocolatey, a community driven repository of common software packages. You can install a wide range of software by entering a command prompt or PowerShell session
````powershell
choco install 7zip
choco install firefox
````
You can also bulk update ALL your Chocolatey installed software to latest versions using one command
````powershell
choco update all -y
````
It's magic! https://chocolatey.org/docs/why#what-is-chocolatey

##Installing PowerShell Desired State Configuration
DSC is possible with PowerShell 4.x but much easier to author and manage with PowerShell 5.x
You can find your PowerShell version by entering 
````powershell
$PSVersionTable.PSVersion 
````
and can upgrade to PowerShell 5.x using the script 
https://github.com/computershare/powershell/blob/master/InstallPowerShell5.ps1

##Azure DSC Overview
* Add any dependency DSC resource modules to the Azure automation account Assets using the Azure portal.
* Upload local configuration file to an Azure automation account using the Azure portal.
* Use the Azure portal to 'compile' the configuration - this publishes the configuration to Azure DSC pull server
* Use the Azure portal to onboard a new virtual machine node or select an existing virtual machine.
