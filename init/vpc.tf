resource "aws_vpc" "common" {
    cidr_block           = "10.0.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support   = true
    instance_tenancy     = "default"
    tags {
        "project" = "common"
        "env" = "all"
        "Name" = "common-vpc"
    }
}

resource "aws_vpc" "prod" {
    cidr_block           = "10.1.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support   = true
    instance_tenancy     = "default"
    tags {
        "project" = "common"
        "env" = "prod"
        "Name" = "prod-vpc"
    }
}

resource "aws_vpc" "stg" {
    cidr_block           = "10.2.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support   = true
    instance_tenancy     = "default"
    tags {
        "project" = "common"
        "env" = "stg"
        "Name" = "stg-vpc"
    }
}
