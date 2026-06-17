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

    build:
      commands:
        - npm run build

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
    Owner       = "Bhushan & Praveen"
    Environment = "Demo"
  }

}
