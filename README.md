# Azure Terraform
Example Terraform templates for creating resources in Azure

# Terraform setup
[Local installation](https://learn.hashicorp.com/tutorials/terraform/install-cli)

Run the following commands in the relevant directory to create a resource.

`terraform init`
Initialize your Terraform configuration

`terraform validate (Optional)`
Validate your configuration

`terraform plan`
Output the execution plan

`terraform apply`
Apply the execution plan. Type yes at the confirmation prompt to proceed.

`terraform destroy`
Destroy remote objects managed by a particular Terraform configuration.

After the successful terraform apply it will create the following resources

- Resource Group
- App Service plan
- App Service(Web App)
- Storage Account
- Remote State Setup
