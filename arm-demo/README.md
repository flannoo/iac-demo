# ARM Template

Documentation: [https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/)

## Exercise

Follow the tutorial on [https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/template-tutorial-create-first-template?tabs=azure-powershell](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/template-tutorial-create-first-template?tabs=azure-powershell)

## Demo

Deploys a storage account with a container to store files.
Edit the `infra.parameters.json` file and enter a unique storageaccount name (alphanumeric lowercase values only).

Ensure [AZ CLI](https://learn.microsoft.com/en-us/cli/azure/) is installed.

Login to your Azure subscription:

```bash
az login --tenant <tenant-id> 
```

Verify you are connected to the correct Azure Subscription

```bash
az account show
```

Deploy the template:

```bash
az deployment group create --resource-group <your-resource-group> --template-file infra.json --parameters infra.dev.parameters.json
```
