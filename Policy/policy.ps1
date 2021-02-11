$subscriptionId = 'c6482e07-d710-4ba6-b9ee-ac4b235294b4'
Select-AzSubscription -Subscription $subscriptionId

New-AzDeployment  `
    -TemplateFile .\azuredeploy.initiative.json -Location "westeurope" `
 
New-AzDeployment  `
    -Location "West Europe" `
    -TemplateFile .\azuredeploy.policyassigment.json `
  #  -TemplateParameterFile .\AllowedLocations.json

    
$Subscription = Get-AzSubscription -SubscriptionName 'MSDN Platforms'
$PolicySet = Get-AzPolicySetDefinition -Custom | Where-Object { $_.Properties.DisplayName -eq 'location12' }
New-AzPolicyAssignment -Name 'MyInitiative' -PolicySetDefinition $PolicySet -Scope "/subscriptions/$($Subscription.Id)" -AssignIdentity -Location 'westeurope' -PolicyParameter .\AllowedLocations.json

