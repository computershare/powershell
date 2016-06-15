Configuration Utilities 
{ 

    Import-DscResource -ModuleName cChoco 

    Node "localhost" {   

        cChocoInstaller installChoco
        { 
            InstallDir = "C:\ProgramData\chocolatey" 
        }

        cChocoPackageInstaller 7zip 
        { 
            Name = "7zip" 
            DependsOn = "[cChocoInstaller]installChoco" 
        } 

        cChocoPackageInstaller adobeReader 
        { 
            Name = "adobereader" 
            DependsOn = "[cChocoInstaller]installChoco" 
        } 

        <# Free open source tool for editing text and script files with syntax highlighting (better than Windows Notepad) 
         # Note SOE developer image already contains UltraEdit BUT ULTRAEDIT IS NOT FREE! #>
        cChocoPackageInstaller notepadplusplus 
        { 
            Name = "notepadplusplus" 
            DependsOn = "[cChocoInstaller]installChoco" 
        } 

        <# Free open source tool for taking screenshots and annotate them (better than Windows Snipping Tool) 
         # Note SOE developer image already contains Greenshot #>
        cChocoPackageInstaller greenshot 
        { 
            Name = "greenshot" 
            DependsOn = "[cChocoInstaller]installChoco" 
        } 

        <# Free open source tool for comparing files (useful for comparing results from proxy data tool) #>
        cChocoPackageInstaller kdiff 
        { 
            Name = "kdiff3" 
            DependsOn = "[cChocoInstaller]installChoco" 
        } 

       <# Free open source tool for audio recording / mixing (may be useful for recording presentations) #>
         # Note SOE developer image already contains Audacity #>
        cChocoPackageInstaller audacity 
        { 
            Name = "audacity" 
            DependsOn = "[cChocoInstaller]installChoco" 
        } 

    }
}

Utilities
Start-DscConfiguration Utilities -Wait -Verbose
