Import-Module ActiveDirectory
<# Import CSV File with populated AD Names & Field entries before/after#>
$User = Import-Csv -Path "C:\Attribute-Replace.csv"
<# Clear AD attribute - replace 'MobilePhone' with the chosen attribute#>
$User | ForEach {Set-ADUser $_.Name -Clear MobilePhone}
<# Populate attribute with data in csv#>
$User | ForEach {Set-ADUser $_.Name -Replace @{MobilePhone="$($_.MobilePhone)"}}
