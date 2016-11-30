module "prod" {
    source = "../../"
    team = "${var.team}"
    project = "${var.project}"
    env = "${var.env}"
    cidr = "${var.cidr}"
    gip_1 = "${var.gip_1}"
    gip_2 = "${var.gip_2}"
    gip_3 = "${var.gip_3}"
}
