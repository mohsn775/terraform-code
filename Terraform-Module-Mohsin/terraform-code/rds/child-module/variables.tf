

variable "rds_name" {
  type    = string
  default = "test"
}

variable "rds_storage_capacity" {
  type    = number
  default = 50
}

variable "rds_engine_version" {
  type    = string
  default = "8.0.31"
}

variable "rds_instance_size" {
  type    = string
  default = "db.t2.micro"
}

variable "rds_skip_final_snapshot" {
  type    = bool
  default = true
}

variable "vpc_id" {
  type    = string
  default = "vpc-06c634b53cf764e8d"
}

variable "region" {
  type    = string
  default = "us-west-2"
}

variable "environment" {
  type    = string
  default = "dev"
}
