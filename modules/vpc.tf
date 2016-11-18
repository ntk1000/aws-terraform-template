resource "aws_vpc" "main" {
    cidr_block           = "${var.cidr}"
    enable_dns_hostnames = true
    enable_dns_support   = true
    instance_tenancy     = "default"
    tags {
        "project" = "${var.project}"
        "env" = "${var.env}"
        "Name" = "${var.project}-${var.env}-vpc"
    }
}
