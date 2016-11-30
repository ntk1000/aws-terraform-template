resource "aws_internet_gateway" "common" {
    vpc_id = "${aws_vpc.common.id}"
    tags {
        "project" = "common"
        "env" = "all"
        "Name" = "common-igw"
    }
}

resource "aws_internet_gateway" "prod" {
    vpc_id = "${aws_vpc.prod.id}"
    tags {
        "project" = "common"
        "env" = "prod"
        "Name" = "prod-igw"
    }
}

resource "aws_internet_gateway" "stg" {
    vpc_id = "${aws_vpc.stg.id}"
    tags {
        "project" = "common"
        "env" = "stg"
        "Name" = "stg-igw"
    }
}
