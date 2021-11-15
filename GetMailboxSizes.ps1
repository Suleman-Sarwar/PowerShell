#Run in Exchange shell

$path = 'c:\'

Get-PSSession

#Import mailbox data, sorts it and export to csv                                                                              Mailbox owner, Mailbox Size, Email Address, last time updated 
Get-Mailbox -Database '' | Get-MailboxStatistics -Server MyServerNamehHere | Sort-Object -Property TotalItemSize -Descending | Select-Object DisplayName, TotalItemSize, EmailAddresses, WhenChanged | Export-Csv $path -NoTypeInformation