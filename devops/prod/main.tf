module "vpc" {
    source = "../../modules/vpc"
    cidr = "${var.cidr}"
    project = "${var.project}"
    env = "${var.env}"
}

module "prod" {
    source = "../../"
    team = "${var.team}"
    project = "${var.project}"
    env = "${var.env}"
}
