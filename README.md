# Weather API for Azure DevOps

This project is an API that should be deployed on Azure with Azure DevOps.
The concept of IAC is also part of this project with infrastructure provisioning with Terraform.

## Create first the base image with Docker

    nerdctl build -t chrisnt5/weatherapi .

Once the image is built, we can launch it to test the application.

    nerdctl run -p 8080:80 chrisnt5/weatherapi:1.0

The application can be reached at the following url: http://localhost:8080/weatherforecast

## Terraform

    terraform init
    terraform plan

## Manual deployment

    terraform init
    terraform plan
    terraform apply

You can reach the application live. Here is for instance my QDNS: 
http://chrisnt5wa.westeurope.azurecontainer.io/weatherforecast

## Service principal

It's like a user account for an application to interact with Azure. We need the following information:

- ARM_CLIENT_ID
- ARM_CLIENT_SECRET
- ARM_TENANT_ID (id of Azure Directory that hosts the client account)
- ARM_SUBSCRIPTION_ID

You have to register a new application in Azure. Move forward to "Azure Active Directory", "App registrations", "New registration"

See [Azure Provider: Authenticating using a Service Principal with a Client Secret](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret)

Go then to "Certificates and secrets", "Add a client secret".

Finally, move to Active Directory, IAM. Then, add a role assignment.