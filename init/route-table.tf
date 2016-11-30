resource "aws_route_table" "common" {
    vpc_id = "${aws_vpc.common.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.common.id}"
    }
    tags {
        "project" = "common"
        "env" = "all"
        "Name" = "common-route-table"
    }
}

resource "aws_route_table" "prod" {
    vpc_id = "${aws_vpc.prod.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.prod.id}"
    }
    tags {
        "project" = "common"
        "env" = "prod"
        "Name" = "prod-route-table"
    }
}

resource "aws_route_table" "stg" {
    vpc_id = "${aws_vpc.stg.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.stg.id}"
    }
    tags {
        "project" = "common"
        "env" = "stg"
        "Name" = "stg-route-table"
    }
}
