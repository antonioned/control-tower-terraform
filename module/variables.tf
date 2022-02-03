variable "region" {
  type        = string
  description = "The region to create resources in."
}

variable "organizational_unit_name" {
  type        = string
  description = "The OU where we create the new AWS account in."
}