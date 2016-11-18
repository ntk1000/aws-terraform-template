# these variables are expected to define by env
variable "team" {}
variable "email_sns_subscription_arn" {}
variable "gip_1" {}
variable "gip_2" {}
variable "gip_3" {}
variable "email_sns_subscription_arn_us" {}

# these variables are defined via Makefile Args(environment variables)
variable "project" {}
variable "env" {}

# these variables are defined at project/env directry
variable "cidr" {
    default = "192.168.0.0/16"
}
