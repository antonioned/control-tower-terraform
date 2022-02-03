resource "controltower_aws_account" "accounts" {
  for_each            = { for account in local.accounts : account.account_name => account }
  name                = each.value.account_name
  email               = each.value.account_owner_email
  organizational_unit = var.organizational_unit_name

  sso {
    first_name = each.value.sso_user_first_name
    last_name  = each.value.sso_user_last_name
    email      = each.value.sso_user_email
  }

  lifecycle {
    prevent_destroy = true
  }
}