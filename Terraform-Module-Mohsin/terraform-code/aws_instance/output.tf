output "private_ip" {
  value = aws_instance.test-instance.*.private_ip

}

output "public_ip" {
  value = aws_instance.test-instance.*.public_ip
}

