variable "team" {}
variable "project" {}
variable "env" {}

variable "email_sns_subscription_arn" {}
variable "email_sns_subscription_arn_us" {}
variable "gip_1" {}
variable "gip_2" {}
variable "gip_3" {}
variable "vpc_id_common" {}

variable "cidr-public-aza" {
    default = "10.0.0.0/23"
}
variable "cidr-public-azc" {
    default = "10.0.2.0/23"
}
variable "cidr-protected-aza" {
    default = "10.0.8.0/23"
}
variable "cidr-protected-azc" {
    default = "10.0.10.0/23"
}
variable "cidr-private-aza" {
    default = "10.0.16.0/23"
}
variable "cidr-private-azc" {
    default = "10.0.18.0/23"
}
