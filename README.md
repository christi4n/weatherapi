# Weather API for Azure DevOps

This project is an API that should be deployed on Azure with Azure DevOps.
The concept of IAC is also part of this project with infrastructure provisioning with Terraform.

## Create first the base image with Docker

    nerdctl build -t chrisnt5/weatherapi .

Une fois l'image buildé, on peut lancer un docker build en local pour tester l'application.

    nerdctl run -p 8080:80 chrisnt5/weatherapi:1.0

L'application est accessible depuis l'URL suivante : http://localhost:8080/weatherforecast

## Terraform

    terraform init
    terraform plan

## Déploiement manuel

    terraform init
    terraform plan
    terraform apply

Accessible depuis http://chrisnt5wa.westeurope.azurecontainer.io/weatherforecast