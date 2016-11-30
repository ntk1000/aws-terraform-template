# these variables are expected to define by env
variable "team" {}
variable "email_sns_subscription_arn" {
    default = "dummy_arn"
}
variable "email_sns_subscription_arn_us" {
    default = "dummy_arn"
}
variable "gip_1" {
    default = "127.0.0.1"
}
variable "gip_2" {
    default = "127.0.0.1"
}
variable "gip_3" {
    default = "127.0.0.1"
}
variable "vpc-id" {}
variable "vpc_id_common" {
    default = "dummy"
}
variable "vpc_id_prod" {
    default = "dummy"
}
variable "vpc_id_stg" {
    default = "dummy"
}

# these variables are defined via Makefile Args(environment variables)
variable "project" {}
variable "env" {}

# these variables are defined at project/env directry
variable "cidr-public-aza" {}
variable "cidr-public-azc" {}
variable "cidr-protected-aza" {}
variable "cidr-protected-azc" {}
variable "cidr-private-aza" {}
variable "cidr-private-azc" {}
