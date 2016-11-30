module "vpc" {
    source = "../../modules/vpc"
    cidr = "${var.cidr}"
}

module "stg" {
    source = "../../"
    team = "${var.team}"
    project = "${var.project}"
    env = "${var.env}"
}
