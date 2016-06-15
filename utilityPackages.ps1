iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# PowerShell 5 for DSC support
choco install powershell -pre -y

# Free open source tool for editing text and script files with syntax highlighting (better than Windows Notepad)
# Note SOE developer image already contains UltraEdit
choco install notepadplusplus -y

# Free open source tool for taking screenshots and annotate them (better than Windows Snipping Tool)
# Note SOE developer image already contains Greenshot
choco install greenshot -y

# Free open source tool for comparing files (useful for comparing results from proxy data tool)
choco install kdiff3 -y
