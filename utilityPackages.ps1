iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))


choco install powershell -pre -y


# Free open source tool for editing text and script files with syntax highlighting (better than Windows Notepad)
choco install notepadplusplus -y

# Free open source tool for taking screenshots and annotate them (better than Windows Snipping Tool)
choco install greenshot -y

# Free open source tool for comparing files (useful for comparing results from proxy data tool)
choco install kdiff3 -y
