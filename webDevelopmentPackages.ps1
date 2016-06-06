iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

choco install googlechrome -y
choco install firefox -y

# Free open source tool for debugging proxy tool
choco install fiddler4 -y

# Free open source tool for record / playback security test scenarios
choco install burp-suite-free-edition -y