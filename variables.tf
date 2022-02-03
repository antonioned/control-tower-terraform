variable "profile" {
  default = "aws-profile"
  type    = string
}

variable "region" {
  default = "us-east-1"
  type    = string
}

# Tags Array ( referenced as ${var.tags["tagname"]} )
variable "tags" {
  type = map(any)

  default = {
    Environment = "env"
    Application = "application"
    Script      = "Terraform"
  }
}
