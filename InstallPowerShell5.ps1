# Get-ExecutionPolicy must be at least RemoteSigned
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
choco install powershell -y