Install-Module -Name cChoco

Configuration WebTools 
{ 

    Import-DscResource -ModuleName cChoco 

    Node "localhost" {   

        cChocoInstaller installChoco
        { 
            InstallDir = "C:\ProgramData\chocolatey" 
        }


        cChocoPackageInstaller chrome 
        { 
            Name = "googlechrome" 
            DependsOn = "[cChocoInstaller]installChoco" 
        } 

        cChocoPackageInstaller firefox 
        { 
            Name = "firefox" 
            DependsOn = "[cChocoInstaller]installChoco" 
        } 

        <# Fiddler is a free proxy tool to support debugging / testing web traffic #>
        cChocoPackageInstaller fiddler 
        { 
            Name = "fiddler4" 
            DependsOn = "[cChocoInstaller]installChoco" 
        } 

        <# Burp is a free suite of proxy tools to support debugging and running security test scenarios. The free edition has no trial period, it's just reduced features. #>
        cChocoPackageInstaller burp 
        { 
            Name = "burp-suite-free-edition" 
            DependsOn = "[cChocoInstaller]installChoco" 
        } 

        <# To do - Pact a proxy tool for consumer driven contract tests between microservices 
         #  install the .NET version using Install-Package PactNet  in the VS library package manager#>
        <# To do - Diffy a proxy tool for regression testing updates to microservices #>

    }
}

WebTools
Start-DscConfiguration WebTools -Wait -Verbose
