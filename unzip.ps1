<#
Azure DevTest Lab 'formula' templates contain artifacts to 'Download file from URI' like a .zip file
but no artifacts to actually unzip the file. You can unzip a file using PowerShell Expand-Archive command
but the 'Run PowerShell' artifact requires a script rather than entering a single command line.

This is just a wrapper for Expand-Archive to support Azure DevTest Lab artifacts.
#>
Expand-Archive $args[0] -dest $args[1]
