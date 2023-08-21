module "rds-host" {

  source = "../../rds"

  environment             = var.environment
  rds_name                = var.rds_name
  rds_storage_capacity    = var.rds_storage_capacity
  rds_engine_version      = var.rds_engine_version
  rds_instance_size       = var.rds_instance_size
  rds_skip_final_snapshot = var.rds_skip_final_snapshot
  random_password         = random_password.rds_password.result

  vpc_id = var.vpc_id

}


resource "random_password" "rds_password" {
  length  = 24
  special = false
}

