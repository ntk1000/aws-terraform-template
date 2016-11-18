variable "billing-count" {
    default = 3
}
variable "billing-threshold" {
    default = {
        "0" = 1
        "1" = 10
        "2" = 30
    }
}
variable "email_sns_subscription_arn_us" {}
