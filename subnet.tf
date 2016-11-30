
resource "aws_subnet" "public-aza" {
    vpc_id                  = "${var.vpc-id}"
    cidr_block              = "${var.cidr-public-aza}"
    availability_zone       = "ap-northeast-1a"
    map_public_ip_on_launch = true

    tags {
        "project" = "${var.project}"
        "env" = "${var.env}"
        "Name" = "${var.project}-${var.env}-subnet-public-aza"
    }
}

resource "aws_subnet" "public-azc" {
    vpc_id                  = "${var.vpc-id}"
    cidr_block              = "${var.cidr-public-azc}"
    availability_zone       = "ap-northeast-1c"
    map_public_ip_on_launch = true

    tags {
        "project" = "${var.project}"
        "env" = "${var.env}"
        "Name" = "${var.project}-${var.env}-subnet-public-azc"
    }
}

resource "aws_subnet" "protected-aza" {
    vpc_id                  = "${var.vpc-id}"
    cidr_block              = "${var.cidr-protected-aza}"
    availability_zone       = "ap-northeast-1a"
    map_public_ip_on_launch = true

    tags {
        "project" = "${var.project}"
        "env" = "${var.env}"
        "Name" = "${var.project}-${var.env}-subnet-protected-aza"
    }
}

resource "aws_subnet" "protected-azc" {
    vpc_id                  = "${var.vpc-id}"
    cidr_block              = "${var.cidr-protected-azc}"
    availability_zone       = "ap-northeast-1c"
    map_public_ip_on_launch = true

    tags {
        "project" = "${var.project}"
        "env" = "${var.env}"
        "Name" = "${var.project}-${var.env}-subnet-protected-azc"
    }
}

resource "aws_subnet" "private-aza" {
    vpc_id                  = "${var.vpc-id}"
    cidr_block              = "${var.cidr-private-aza}"
    availability_zone       = "ap-northeast-1a"
    map_public_ip_on_launch = true

    tags {
        "project" = "${var.project}"
        "env" = "${var.env}"
        "Name" = "${var.project}-${var.env}-subnet-private-aza"
    }
}

resource "aws_subnet" "private-azc" {
    vpc_id                  = "${var.vpc-id}"
    cidr_block              = "${var.cidr-private-azc}"
    availability_zone       = "ap-northeast-1c"
    map_public_ip_on_launch = true

    tags {
        "project" = "${var.project}"
        "env" = "${var.env}"
        "Name" = "${var.project}-${var.env}-subnet-private-azc"
    }
}
