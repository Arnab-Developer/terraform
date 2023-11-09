locals {
  org_name = "org0101"
  app_name = "terraform"
  env_name = terraform.workspace == "default" ? "dev" : terraform.workspace
}