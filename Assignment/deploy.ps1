New-AzResourceGroupDeployment -ResourceGroupName publiccloud -TemplateUri https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-webapp-linux-node/azuredeploy.json

New-AzResourceGroupDeployment -ResourceGroupName publiccloud -TemplateFile .\deploy.nodejs.json
