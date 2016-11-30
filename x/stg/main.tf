module "stg" {
    source = "../../"
    team = "${var.team}"
    project = "${var.project}"
    env = "${var.env}"
    cidr-public-aza = "${var.cidr-public-aza}"
    cidr-public-azc = "${var.cidr-public-azc}"
    cidr-protected-aza = "${var.cidr-protected-aza}"
    cidr-protected-azc = "${var.cidr-protected-azc}"
    cidr-private-aza = "${var.cidr-private-aza}"
    cidr-private-azc = "${var.cidr-private-azc}"
    gip_1 = "${var.gip_1}"
    gip_2 = "${var.gip_2}"
    gip_3 = "${var.gip_3}"
    vpc-id = "${var.vpc_id_stg}"
}