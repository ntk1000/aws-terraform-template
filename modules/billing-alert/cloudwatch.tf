provider "aws" {
    alias = "us"
    region = "us-east-1"
}

resource "aws_cloudwatch_metric_alarm" "billing" {
    provider = "aws.us"
    alarm_name = "billing alarm lv.${count.index + 1} (${lookup(var.billing-threshold,count.index)} USD)"
    namespace = "AWS/Billing"
    metric_name = "EstimatedCharges"
    statistic = "Maximum"
    evaluation_periods = "1"
    comparison_operator = "GreaterThanOrEqualToThreshold"
    period = "21600"
    threshold = "${lookup(var.billing-threshold,count.index)}"
    alarm_description = "Total Charge ${lookup(var.billing-threshold, count.index)} USD"
    alarm_actions = ["${var.email_sns_subscription_arn_us}"]
    count = "${var.billing-count}"
}

