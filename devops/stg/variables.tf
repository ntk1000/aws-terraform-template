variable "team" {}
variable "project" {}
variable "env" {}

variable "gip_1" {}
variable "gip_2" {}
variable "gip_3" {}
variable "vpc_id_stg" {}

variable "cidr-public-aza" {
    default = "10.2.0.0/23"
}
variable "cidr-public-azc" {
    default = "10.2.2.0/23"
}
variable "cidr-protected-aza" {
    default = "10.2.8.0/23"
}
variable "cidr-protected-azc" {
    default = "10.2.10.0/23"
}
variable "cidr-private-aza" {
    default = "10.2.16.0/23"
}
variable "cidr-private-azc" {
    default = "10.2.18.0/23"
}
