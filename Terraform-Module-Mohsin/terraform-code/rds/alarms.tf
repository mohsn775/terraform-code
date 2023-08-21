# ################################################
# # RDS Cloud Watch Alarms
# ################################################

# # CPUUtilization >= 80%
# resource "aws_cloudwatch_metric_alarm" "rds_cpu" {
#   alarm_name                = "rds-cpu"
#   comparison_operator       = "GreaterThanOrEqualToThreshold"
#   evaluation_periods        = "3"
#   metric_name               = "CPUUtilization"
#   namespace                 = "AWS/RDS"
#   period                    = "180"
#   statistic                 = "Average"
#   threshold                 = "80"
#   alarm_description         = "This metric monitors rds cpu utilization"
#   insufficient_data_actions = []
#   ok_actions                = [aws_sns_topic.tfe.arn]
#   alarm_actions             = [aws_sns_topic.tfe.arn]

#   dimensions = {
#     DBInstanceIdentifier = aws_db_instance.tfe_rds.identifier
#   }

#   tags = var.tags
# }

# # FreeStorageSpace =< 10GB
# resource "aws_cloudwatch_metric_alarm" "rds_diskfree" {
#   alarm_name                = "rds-diskfree"
#   comparison_operator       = "LessThanOrEqualToThreshold"
#   evaluation_periods        = "2"
#   metric_name               = "FreeStorageSpace"
#   namespace                 = "AWS/RDS"
#   period                    = "120"
#   statistic                 = "Average"
#   threshold                 = "10737418240"
#   alarm_description         = "DB Storage free space is lower than 1GB"
#   insufficient_data_actions = []
#   ok_actions                = [aws_sns_topic.tfe.arn]
#   alarm_actions             = [aws_sns_topic.tfe.arn]

#   dimensions = {
#     DBInstanceIdentifier = aws_db_instance.tfe_rds.identifier
#   }

#   tags = var.tags
# }

# # FreeableMemory =< 1GB
# resource "aws_cloudwatch_metric_alarm" "rds_memfree" {
#   alarm_name                = "rds-memfree"
#   comparison_operator       = "LessThanOrEqualToThreshold"
#   evaluation_periods        = "2"
#   metric_name               = "FreeableMemory"
#   namespace                 = "AWS/RDS"
#   period                    = "120"
#   statistic                 = "Average"
#   threshold                 = "1073741824"
#   alarm_description         = "DB Free Memory is lower than 1GB"
#   insufficient_data_actions = []
#   ok_actions                = [aws_sns_topic.tfe.arn]
#   alarm_actions             = [aws_sns_topic.tfe.arn]

#   dimensions = {
#     DBInstanceIdentifier = aws_db_instance.tfe_rds.identifier
#   }

#   tags = var.tags
# }