param (
    [string]$Action
)

# Import your custom module
Import-Module .\functions\GetInstalledApps.psm1 -Force
Import-Module .\functions\Generate-List.psm1 -Force
Import-Module .\functions\Install-Apps.psm1 -Force

switch ($Action) {
    "Extract" {
        Get-InstalledApps
        Compare-DatabaseAndManifest
    }
    "Install" {
        Install-Apps
    }
    Default {}
}


