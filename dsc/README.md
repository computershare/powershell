# Desired State Configuration

##Using PowerShell Desired State Configuration
The configuration scripts are initially planned for local execution on the machine you want to apply the configuration.
Just open the .ps1 file on the local machine to install and configure the software packages defined in the configuration.

* dscUtilityPackages.ps1 - General development tools e.g. for editing files and taking screenshots
* dscWebPackages.ps1 - Web development tools e.g. Chrome, Firefox and proxy tools for debugging web requests

The configurations may be later adapted to be pushed to remote machines or to be remotely pulled from a DSC pull server.

##Installing PowerShell Desired State Configuration
DSC is possible with PowerShell 4.x but much easier to author and manage with PowerShell 5.x
You can find your PowerShell version by entering 
````powershell
$PSVersionTable.PSVersion 
````
and can upgrade to PowerShell 5.x using the script 
https://github.com/computershare/powershell/blob/master/InstallPowerShell5.ps1
