# PowerShell
This repository contains PowerShell scripts, snippets, and Desired State Configuration modules.

## Installing PowerShell
PowerShell is included in the Windows operating system however earlier versions of Windows have earlier versions of PowerShell,
and you really need the latest version to take advantage of the simplified (and more powerful) features.

### Azure Virtual Machines
If you are planning to utilise PowerShell Desired State Configuration to install software and configure settings 
(and ensure they always remain in the desired state) then you do not need to manually install PowerShell 5.x.

When you onboard a virtual machine to Azure automation account DSC, Azure will install PowerShell 5.x as part of the onboarding process.

### On Premises Virtual Machines
You can install PowerShell 5.x using the Chocolatey package manager.
````powershell
choco install powershell
````
