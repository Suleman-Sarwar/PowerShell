Import-Module ActiveDirectory
get-aduser -Filter * -Properties * | select-object CN, DisplayName, Description, EmailAddress, HomePhone, MobilePhone, Title, Manager | Export-Csv -Path "C:\AD.csv"

get-aduser -Filter * -SearchBase "OU=,OU=,OU=,DC,DC=local" | select-object CN, DisplayName, Description, EmailAddress, HomePhone, MobilePhone, Title, Manager | Export-Csv -Path "C:\ADOU.csv"