module "control-tower" {
  source = "./module"

  region                   = var.region
  organizational_unit_name = "OU"
}
