# # metric alarm

# resource "aws_cloudwatch_metric_alarm" "my_alarm" {
#   alarm_name          = "terraform-sns-demo"
#   comparison_operator = "LessThanOrEqualToThreshold"
#   evaluation_periods  = "1"
#   metric_name         = "CPUUtilization"
#   namespace           = "AWS/EC2"
#   period              = "60"
#   statistic           = "Average"
#   threshold           = "40"
#   alarm_description   = "This metric monitors ec2 cpu utilization"
#   alarm_actions       = ["arn:aws:sns:us-east-1:589076428231:my-sns-topic-new"]

# }