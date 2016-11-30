variable "team" {}
variable "project" {}
variable "env" {}

variable "gip_1" {}
variable "gip_2" {}
variable "gip_3" {}

variable "cidr" {
    default = "10.1.0.0/16"
}

variable "cidr-public-aza" {
    default = "10.1.0.0/23"
}
variable "cidr-public-azc" {
    default = "10.1.2.0/23"
}
variable "cidr-protected-aza" {
    default = "10.1.8.0/23"
}
variable "cidr-protected-azc" {
    default = "10.1.10.0/23"
}
variable "cidr-private-aza" {
    default = "10.1.16.0/23"
}
variable "cidr-private-azc" {
    default = "10.1.18.0/23"
}
