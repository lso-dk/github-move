$subscriptionId = 'c6482e07-d710-4ba6-b9ee-ac4b235294b4'
Select-AzSubscription -Subscription $subscriptionId

New-AzDeployment  `
    -TemplateFile .\azuredeploy.initiative.json `
   # -TemplateParameterFile ".\Landing%20Zone%20baseline\Microsoft.Authorization\policySetDefinitions\azuredeploy.parameters.json"


   New-AzDeployment  `
    -TemplateFile .\azuredeploy.policyassigment.json