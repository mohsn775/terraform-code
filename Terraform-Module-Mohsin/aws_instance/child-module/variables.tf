########## Variables ##########

variable "aws_region" {
  default = "us-west-2"
}

# variable "ssh_private_key" {
#   type        = string
#   default     = ""
#   description = "Add your ssh_private_key"
# }

variable "vpc_id" {
  type        = string
  default     = "vpc-06c634b53cf764e8d"
  description = "Add your vpc id"
}

# variable "ssh_key_name" {
#   type        = string
#   default     = "test-instance"
#   description = "Add your ssh_key name"
# }

variable "environment" {

  default     = "dev"
  description = "specify envoinment name"

}

variable "instance_count" {
  default = "3"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ec2_ami_id" {
  default     = "ami-06810ab448caa0133"
  description = "Canonical, Ubuntu, 22.04 LTS, amd64 jammy image build on 2023-05-16"
}

variable "subnet_id" {
  default     = "subnet-05f0518657f2bd10c"
  description = "dev-us-west-2a-public-subnet"
}

variable "volume_size" {
  default     = "50"
  description = "volume size"
}


# variable "tags" {
#   default = {
#     "Name" = "Test-instance"
#   }
# }

# variable "volume_tags" {
#   default = {
#     "Name" = "Test-instance"
#   }
# }