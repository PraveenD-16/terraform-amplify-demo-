terraform {

required_version = ">= 1.5.0"

required_providers {
aws = {
source  = "hashicorp/aws"
version = "~> 6.0"
}
}

}

provider "aws" {
region = var.aws_region
}

variable "aws_region" {
description = "AWS region where Amplify app will be created"
type        = string
}

variable "app_name" {
description = "Amplify application name"
type        = string
}

variable "repository_url" {
description = "GitHub repository URL"
type        = string
}

variable "branch_name" {
description = "GitHub branch name"
type        = string
}

variable "github_token" {
description = "GitHub Personal Access Token"
type        = string
sensitive   = true
}

resource "aws_amplify_app" "demo" {

name         = var.app_name
repository   = var.repository_url
access_token = var.github_token

build_spec = <<-EOT
version: 1

frontend:
phases:
preBuild:
commands:
- npm ci --cache .npm --prefer-offline

```
build:
  commands:
    - npm run build
```

artifacts:
baseDirectory: dist
files:
- '**/*'

cache:
paths:
- .npm/**/*
EOT

tags = {
Project     = "Orqestra"
ManagedBy   = "Terraform"
Environment = "Demo"
}

}

resource "aws_amplify_branch" "main" {

app_id      = aws_amplify_app.demo.id
branch_name = var.branch_name

framework = "React"
stage     = "DEVELOPMENT"

}

output "amplify_app_name" {
value = aws_amplify_app.demo.name
}

output "amplify_app_id" {
value = aws_amplify_app.demo.id
}

output "amplify_default_domain" {
value = aws_amplify_app.demo.default_domain
}

