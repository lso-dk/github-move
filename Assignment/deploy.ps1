
# deploy web app with private endpoints(hostname webapp.cloudtest.dk), app service plan, AppGW with WAF #
New-AzResourceGroupDeployment -name webapp -ResourceGroupName MyResGroup -TemplateFile .\deploy.nodejs.json

# Deploy Azure Cosmos DB Account #
New-AzResourceGroupDeployment -name mongodb -ResourceGroupName myresgroup -TemplateFile .\deploy.mongodb.json -TemplateParameterFile .\deploy.mongodb.parameters.json

# #
New-AzResourceGroupDeployment -name sftp -ResourceGroupName myresgroup -TemplateFile .\deploy.sftp.json -TemplateParameterFile .\deploy.sftp.parameters.json

