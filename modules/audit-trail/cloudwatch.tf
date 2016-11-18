resource "aws_cloudwatch_log_group" "audit-trail" {
    name = "audit-trail-log-group"
    retention_in_days = 3
}

resource "aws_cloudwatch_log_metric_filter" "bad-ip-login" {
    name = "bad-ip-login"
    pattern = <<PATTERN
        { $.responseElements.ConsoleLogin = "Success" && ($.sourceIPAddress != "${var.gip_1}" && $.sourceIPAddress != "${var.gip_2}" && $.sourceIPAddress != "${var.gip_3}") }
PATTERN
    log_group_name = "${aws_cloudwatch_log_group.audit-trail.name}"
    metric_transformation {
        name = "bad-ip-login"
        namespace = "LogMetrics"
        value = "1"
    }
}

resource "aws_cloudwatch_log_metric_filter" "login-failure" {
    name = "login-failure"
    pattern = <<PATTERN
        { $.responseElements.ConsoleLogin = "Failure" }
PATTERN
    log_group_name = "${aws_cloudwatch_log_group.audit-trail.name}"
    metric_transformation {
        name = "login-failure"
        namespace = "LogMetrics"
        value = "1"
    }
}

resource "aws_cloudwatch_metric_alarm" "bad-ip-login" {
    alarm_name = "${aws_cloudwatch_log_metric_filter.bad-ip-login.name}"
    metric_name = "${aws_cloudwatch_log_metric_filter.bad-ip-login.name}"
    namespace = "LogMetrics"

    comparison_operator = "GreaterThanOrEqualToThreshold"
    evaluation_periods = "1"

    period = "300"
    statistic = "Sum"
    threshold = "1"
    alarm_description = "Trail detect console login outside of office"
    alarm_actions = ["${var.email_sns_subscription_arn}"]
}

resource "aws_cloudwatch_metric_alarm" "login-failure" {
    alarm_name = "${aws_cloudwatch_log_metric_filter.login-failure.name}"
    metric_name = "${aws_cloudwatch_log_metric_filter.login-failure.name}"
    namespace = "LogMetrics"

    comparison_operator = "GreaterThanOrEqualToThreshold"
    evaluation_periods = "1"

    period = "300"
    statistic = "Sum"
    threshold = "1"
    alarm_description = "Trail detect console login failure"
    alarm_actions = ["${var.email_sns_subscription_arn}"]
}

