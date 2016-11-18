resource "aws_iam_role" "audit-trail"{
    name = "audit-trail-role"
    assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
    {
        "Sid": "",
        "Effect": "Allow",
        "Principal": {
            "Service": "cloudtrail.amazonaws.com"
        },
        "Action": "sts:AssumeRole"
    }
    ]
}
EOF
}

resource "aws_iam_role_policy" "audit-trail" {
    name = "audit-trail-policy"
    role = "${aws_iam_role.audit-trail.id}"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
    {
        "Sid": "AWSCloudTrail",
        "Effect": "Allow",
        "Action": [
            "logs:CreateLogStream",
            "logs:PutLogEvents"
        ],
        "Resource": [
            "*"
        ]
    }
    ]
}
EOF
}
