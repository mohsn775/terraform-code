output "ec2_private_ip" {
  value = module.aws_instance.private_ip
}

output "ec2_public_ip" {
  value = module.aws_instance.public_ip
}
