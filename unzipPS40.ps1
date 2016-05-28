<#
Windows Server 2012 R2 has PowerShell 4.0 by default 
PowerShell 5.0 has native Expand-Archive cmdlet to unzip files
This script will unzip a file in PowerShell 4.0 without the need to update the server to PowerShell 5 which would require a reboot
#>

$shellApplication = new-object -com shell.application
$zipPackage = $shellApplication.NameSpace($args[0])
New-Item -Path $args[1] -ItemType directory -Force
$destinationFolder = $shellApplication.NameSpace($args[1])
$destinationFolder.CopyHere($zipPackage.Items())
