resource "aws_cloudtrail" "audit-trail" {
    name = "audit-trail"

    s3_bucket_name = "${aws_s3_bucket.audit-trail.id}"
    cloud_watch_logs_role_arn = "${aws_iam_role.audit-trail.arn}"
    cloud_watch_logs_group_arn = "${aws_cloudwatch_log_group.audit-trail.arn}"

    include_global_service_events = true
    is_multi_region_trail = true
    enable_log_file_validation = true
}
