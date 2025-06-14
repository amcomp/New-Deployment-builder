Import-Module .\apps.psm1 -Force
Import-Module .\joinDomain.psm1 -Force

#import the CSV file
$data = import-csv .\data.csv


# Test network connectivity before proceeding
$isConnected = Test-Connection -ComputerName $data.variable -Count 1 -Quiet

# Check if the connection was successful
# If the connection is successful, proceed with the installation
if ($isConnected -contains $true) {
    Install-Apps
    if ($data.isDC -eq "True") {
        Join-Domain -DomainName $data.variable
    }

    } else {
    Write-Host "Network connectivity test failed. Please check your internet connection."
}
