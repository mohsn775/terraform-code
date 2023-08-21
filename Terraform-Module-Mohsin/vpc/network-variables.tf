
variable "aws_region" {
  default = "us-west-2"
}

variable "vpc_cidr" {
  default     = "172.168.0.0/16"
  description = "VPC CIDR"
}

variable "public-subnet" {
  type        = list(any)
  default     = ["172.168.0.0/24", "172.168.1.0/24"]
  description = "CIDR block for Public Subnet"
}

variable "private-subnet" {
  type        = list(any)
  default     = ["172.168.2.0/24", "172.168.3.0/24"]
  description = "CIDR block for Private Subnet"
}

variable "environment" {
  type    = string
  default = "dev"
}