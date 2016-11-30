resource "aws_internet_gateway" "main" {
    vpc_id                  = "${aws_vpc.main.id}"
    tags {
        "project" = "${var.project}"
        "env" = "${var.env}"
        "Name" = "${var.project}-${var.env}-igw"
    }
}
