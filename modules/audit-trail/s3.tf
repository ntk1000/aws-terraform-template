
resource "aws_s3_bucket" "audit-trail" {
    bucket = "${var.team}-audit-trail"
    acl = "private"
    force_destroy = true

    lifecycle_rule {
        id = "log"
        prefix = "AWSLogs/"
        enabled = true

        transition {
            days = 30
            storage_class = "GLACIER"
        }
        expiration {
            days = 365
        }
    }

    policy = <<POLICY
{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Sid": "AWSCloudTrailAclCheck20150319",
			"Effect": "Allow",
			"Principal": {
				"Service": "cloudtrail.amazonaws.com"
			},
			"Action": "s3:GetBucketAcl",
			"Resource": "arn:aws:s3:::${var.team}-audit-trail"
		},
		{
			"Sid": "AWSCloudTrailWrite20150319",
			"Effect": "Allow",
			"Principal": {
				"Service": "cloudtrail.amazonaws.com"
			},
			"Action": "s3:PutObject",
			"Resource": "arn:aws:s3:::${var.team}-audit-trail/AWSLogs/*",
			"Condition": {
				"StringEquals": {
					"s3:x-amz-acl": "bucket-owner-full-control"
				}
			}
		}
	]
}
POLICY

    tags {
        "project" = "global"
        "env" = "all"
        "Name" = "${var.team}-audit-trail"
    }
}
