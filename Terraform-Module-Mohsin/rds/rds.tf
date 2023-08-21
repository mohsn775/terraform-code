################################################
# RDS Security Group
################################################

resource "aws_security_group" "rds-sg" {
  name        = "rds-sg-${var.environment}"
  description = "Allow access"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    { Name = var.rds_name, },
    { Description = "MYSQL database" }
  )
}



resource "aws_db_instance" "rds" {
  allocated_storage   = var.rds_storage_capacity
  identifier          = var.rds_name
  storage_type        = "gp3"
  engine              = "mysql"
  engine_version      = var.rds_engine_version
  db_name             = var.rds_name
  instance_class      = var.rds_instance_size
  username            = "admin"
  password            = var.random_password  
  skip_final_snapshot = var.rds_skip_final_snapshot



  tags = merge(
    { Name = var.rds_name },
    { Description = "MYSQL database" }
  )
}
