# Terraform

## Getting Started

Ensure [AZ CLI](https://learn.microsoft.com/en-us/cli/azure/) is installed.
Install the [Terraform CLI](https://developer.hashicorp.com/terraform/install).

Optional: Install the “HashiCorp Terraform” vscode extension

## Demo

Deploys several resources:

- storage account
- log analytics workspace
- application insights
- function app (with associated storage account and app service plan)

Edit the providers.tf and set the `backend "azurerm"` section to your azure storage account that will hold the tf state file.
Then initialize terraform:

```bash
terraform init
```

Create a tf plan and review the generated output `TerraformPlan.md` file to see what will be deployed

```bash
terraform plan -var-file='./tfvars/dev.tfvars' -out='plan.tfplan' -input=false | Out-File -FilePath TerraformPlan.md
```

Deploy the plan

```bash
terraform apply "plan.tfplan"
```

The resources should be deployed in Azure now.

## Exercise

Follow the Microsoft learn path: [Microsoft Terrafom Learn Path](https://learn.microsoft.com/en-us/training/paths/terraform-fundamentals/)
