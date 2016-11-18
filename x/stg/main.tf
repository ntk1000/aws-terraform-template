module "stg" {
    source = "../../"
    team = "${var.team}"
    project = "${var.project}"
    env = "${var.env}"
    cidr = "${var.cidr}"
}
