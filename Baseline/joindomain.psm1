function Join-Domain {

    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$DomainName
    )


    Add-Computer -DomainName $DomainName
    
}