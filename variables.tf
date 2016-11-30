# these variables are expected to define by env
variable "team" {
}
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

# these variables are defined via Makefile Args(environment variables)
variable "project" {}
variable "env" {}

# these variables are defined at project/env directry
variable "cidr" {
    default = "10.0.0.0/16"
}
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
