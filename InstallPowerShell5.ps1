# Get-ExecutionPolicy must be at least RemoteSigned
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
choco install powershell -y
# Restart-Computer # for the new version to take effect!
