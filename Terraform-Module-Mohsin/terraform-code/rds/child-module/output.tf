resource "random_password" "password_generator" {
  length = 16
  special = true
}

output "random_password" {
  value     = random_password.password_generator.result
  sensitive = true
}
