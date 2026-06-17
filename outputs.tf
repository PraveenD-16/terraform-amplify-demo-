output "amplify_app_name" {

  description = "Amplify application name"

  value = aws_amplify_app.demo.name

}

output "amplify_app_id" {

  description = "Amplify application ID"

  value = aws_amplify_app.demo.id

}

output "amplify_default_domain" {

  description = "Amplify default domain"

  value = aws_amplify_app.demo.default_domain

}
