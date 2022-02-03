locals {
  accounts = csvdecode(file("${path.module}/control-tower-accounts.csv"))
}