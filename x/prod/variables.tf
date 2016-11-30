variable "team" {}
variable "project" {}
variable "env" {}

variable "gip_1" {}
variable "gip_2" {}
variable "gip_3" {}
variable "vpc_id_prod" {}

variable "cidr-public-aza" {
    default = "10.1.64.0/23"
}
variable "cidr-public-azc" {
    default = "10.1.66.0/23"
}
variable "cidr-protected-aza" {
    default = "10.1.72.0/23"
}
variable "cidr-protected-azc" {
    default = "10.1.74.0/23"
}
variable "cidr-private-aza" {
    default = "10.1.80.0/23"
}
variable "cidr-private-azc" {
    default = "10.1.82.0/23"
}
