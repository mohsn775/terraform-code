### Create Security Group for AWS Test Instance

resource "aws_security_group" "test-instance" {
  name   = "test-instance-${var.environment}"
  vpc_id = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    self      = true
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

 tags = tomap({
  "Name" = "test-instance-${var.environment}"
})

}

### Create AWS Test Instance

resource "aws_instance" "test-instance" {

  count                  = var.instance_count
  ami                    = var.ec2_ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
#  key_name               = var.ssh_key_name
  vpc_security_group_ids = [aws_security_group.test-instance.id]

  tags        = tomap({"Name" = "test-instance-${format("%02d", count.index + 1)}"})
  volume_tags = tomap({"Name" = "test-instance-${format("%02d", count.index + 1)}"})

  root_block_device {
    volume_type           = "gp3"
    volume_size           = var.volume_size
    delete_on_termination = true
  }

  # connection {
  #   host        = coalesce(self.public_ip, self.private_ip)
  #   type        = "ssh"
  #   user        = "ubuntu"
  #   private_key = file("${path.module}/test-instance.pem")
  # }

  # # Install nginx in the instance
  # provisioner "remote-exec" {
  #   inline = [
  #     "sudo apt update -y",
  #     "sudo apt install nginx -y",
  #     "sudo systemctl start nginx",
  #   ]
  # }

}


