resource "aws_cloudwatch_metric_alarm" "myServeralarm" {
  alarm_name                = "myServeralarm"
  comparison_operator       = "LessThanOrEqualToThreshold"
  evaluation_periods        = 2
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/EC2"
  period                    = 120
  statistic                 = "Average"
  threshold                 = 10
  alarm_description         = "This metric monitors ec2 cpu utilization"
  insufficient_data_actions = []
  dimensions = {
    InstanceId = aws_instance.server1.id
  }
  alarm_actions = ["arn:aws:automate:us-east-1:ec2:stop"]
}