$context = Get-AzSubscription -SubscriptionId 9e294f6c-2378-494c-b409-06eb29a0f868
Set-AzContext $context

Get-AzVMExtension -ResourceGroupName rg-euw-p-fileservices -VMName s-euw-p-file-1

Remove-AzVMExtension -ResourceGroupName rg-euw-p-fileservices -VMName s-euw-p-file-1 -Name ‘MicrosoftMonitoringAgent’

Set-AzVMExtension -ResourceGroupName rg-euw-p-fileservices -VMName s-euw-p-file-1 -Name ‘MicrosoftMonitoringAgent’ -Publisher ‘Microsoft.EnterpriseCloud.Monitoring’ -ExtensionType ‘MicrosoftMonitoringAgent’ -Location
