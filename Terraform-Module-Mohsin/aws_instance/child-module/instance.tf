module "aws_instance" {

  source = "../../aws_instance"

  environment = var.environment

  instance_count = var.instance_count
  ec2_ami_id     = var.ec2_ami_id
  instance_type  = var.instance_type
  # ssh_key_name   = var.ssh_key_name
  volume_size    = var.volume_size

  vpc_id    = var.vpc_id
  subnet_id = var.subnet_id

  tags        = local.tags
  volume_tags = local.tags

}

