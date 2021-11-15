<#Install SharePoint Online Management Shell#>
<#Use Admin credentials which can access SharePoint Admin Center#>
$TenantUrl = Read-Host "Enter the SharePoint Tenant Admin URL" 
<#Set SharePoint Admin Center URL e.g. https://myorg-admin.sharepoint.com#>
Connect-SPOService -Url $TenantUrl 
<#Set OneDrive site URL, e.g. https://myorg-my.sharepoint.com/personal/example_myorg_onmicrosoft.com #>
$OneDriveSite = Read-Host "Enter the OneDrive Site URL" 
<# Set storage quota --> 1048576MB = 1 TB , 2097152MB = 2TB#>
$OneDriveStorageQuota = Read-Host "Enter the OneDrive Storage Quota in MB" 
$OneDriveStorageQuotaWarningLevel = Read-Host "Enter the OneDrive Storage Quota Warning Level in MB" 
Set-SPOSite -Identity $OneDriveSite -StorageQuota $OneDriveStorageQuota -StorageQuotaWarningLevel $OneDriveStorageQuotaWarningLevel 
Write-Host "Done" 