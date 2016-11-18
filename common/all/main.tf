module "audit-trail" {
    source = "../../modules/audit-trail"
    team = "${var.team}"
    email_sns_subscription_arn = "${var.email_sns_subscription_arn}"
    gip_1 = "${var.gip_1}"
    gip_2 = "${var.gip_2}"
    gip_3 = "${var.gip_3}"
}

module "common" {
    source = "../../"
    team = "${var.team}"
    email_sns_subscription_arn = "${var.email_sns_subscription_arn}"
    gip_1 = "${var.gip_1}"
    gip_2 = "${var.gip_2}"
    gip_3 = "${var.gip_3}"
    project = "${var.project}"
    env = "${var.env}"
}

