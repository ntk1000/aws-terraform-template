resource "aws_s3_bucket" "project" {
    bucket = "${var.team}-${var.project}-${var.env}"
    acl = "private"
    force_destroy = true

    versioning {
        enabled = true
    }

    tags {
        "project" = "${var.project}"
        "env" = "${var.env}"
        "Name" = "${var.project}-${var.env}"
    }
}
