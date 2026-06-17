# Terraform AWS Amplify Demo

## Project Overview

This project creates a new AWS Amplify application using Terraform.

The purpose of this project is to convert a manually created AWS Amplify setup into Infrastructure as Code (IaC).

Existing Application:

* App Name: orqestra-insight-hub-new
* Framework: React
* Branch: main
* Hosting: AWS Amplify

New Application:

* App Name: orqestra-insight-hub-demo
* Region: eu-west-1
* Branch: main

---

## Prerequisites

Install:

* Terraform
* AWS CLI
* Git

Verify installation:

terraform version

aws --version

git --version

---

## Project Files

versions.tf

Defines Terraform version and AWS provider version.

provider.tf

Configures AWS provider and region.

variables.tf

Defines reusable variables.

terraform.tfvars

Stores variable values.

amplify.tf

Creates Amplify application and branch.

outputs.tf

Displays resource information after deployment.

---

## Variables

aws_region

AWS deployment region.

app_name

Amplify application name.

repository_url

GitHub repository URL.

branch_name

GitHub branch to deploy.

github_token

GitHub Personal Access Token.

---

## Terraform Commands

Initialize project:

terraform init

Format code:

terraform fmt

Validate configuration:

terraform validate

Generate execution plan:

terraform plan

Deploy resources:

terraform apply

Destroy resources:

terraform destroy

---

## Expected Resources

AWS Amplify Application

* orqestra-insight-hub-demo

AWS Amplify Branch

* main

---

## Outputs

Amplify Application Name

Amplify Application ID

Amplify Default Domain

---

## Notes

* Repository is private.
* GitHub Personal Access Token is required.
* AWS credentials must be configured before running Terraform.
* Terraform code should be reviewed before applying changes.

---

## Author

Bhushan and Praveen Dwivedi

Terraform Learning Project
AWS Amplify Infrastructure as Code

