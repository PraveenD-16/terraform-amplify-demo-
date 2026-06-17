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
