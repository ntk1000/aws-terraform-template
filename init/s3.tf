variable "team" {}
resource "aws_s3_bucket" "tfstate" {
    bucket = "${var.team}-tfstate"
    acl = "private"
    force_destroy = false

    versioning {
        enabled = true
    }

    tags {
        "project" = "global"
        "env" = "all"
        "Name" = "${var.team}-tfstate"
    }
}
