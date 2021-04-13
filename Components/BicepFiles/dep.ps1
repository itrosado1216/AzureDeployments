$bicepFile = "C:\Users\Elvis Rosado\CentreStack%20Azure\Components\BicepFiles\azuredeploy.bicep"
New-AzResourceGroupDeployment `
    -Name Mynameor `
    -ResourceGroupName myResourceGroup `
    -TemplateFile $bicepFile