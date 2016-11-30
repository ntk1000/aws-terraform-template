
resource "aws_security_group" "lb" {
    name = "${var.project}-${var.env}-lb"
    description = "security group for elb"
    vpc_id = "${aws_vpc.main.id}"
    ingress {
        protocol = "tcp"
        from_port = 80
        to_port = 80
        cidr_blocks = ["${var.gip_1}/32","${var.gip_2}/32","${var.gip_3}/32"]
    }
    ingress {
        protocol = "tcp"
        from_port = 443
        to_port = 443
        cidr_blocks = ["${var.gip_1}/32","${var.gip_2}/32","${var.gip_3}/32"]
    }
    egress {
        protocol = "-1"
        from_port = 0
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags {
        "project" = "${var.project}"
        "env" = "${var.env}"
        "Name" = "${var.project}-${var.env}-security-group-lb"
    }
}

resource "aws_security_group" "app" {
    name = "${var.project}-${var.env}-app"
    description = "security group for app"
    vpc_id = "${aws_vpc.main.id}"
    ingress {
        protocol = "tcp"
        from_port = 80
        to_port = 80
        security_groups = ["${aws_security_group.lb.id}"]
    }
    ingress {
        protocol = "tcp"
        from_port = 443
        to_port = 443
        security_groups = ["${aws_security_group.lb.id}"]
    }
    egress {
        protocol = "-1"
        from_port = 0
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags {
        "project" = "${var.project}"
        "env" = "${var.env}"
        "Name" = "${var.project}-${var.env}-security-group-app"
    }
}

resource "aws_security_group" "mysql" {
    name = "${var.project}-${var.env}-mysql"
    description = "security group for mysql or aurora"
    vpc_id = "${aws_vpc.main.id}"
    ingress {
        protocol = "tcp"
        from_port = 3306
        to_port = 3306
        security_groups = ["${aws_security_group.app.id}"]
    }
    egress {
        protocol = "-1"
        from_port = 0
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags {
        "project" = "${var.project}"
        "env" = "${var.env}"
        "Name" = "${var.project}-${var.env}-security-group-mysql"
    }
}
