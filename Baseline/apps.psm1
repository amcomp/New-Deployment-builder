function Install-Apps {
$apps = Import-Csv .\apps.csv
foreach ($row in $apps
) {
        Write-host("Installing: " + $row.name)
        Invoke-Expression $row.response
    }
}

