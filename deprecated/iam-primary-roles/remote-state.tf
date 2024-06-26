module "sso" {
  source  = "cloudposse/stack-config/yaml//modules/remote-state"
  version = "0.22.2"

  component   = "sso"
  environment = var.sso_environment_name
  stage       = var.sso_stage_name
  privileged  = true

  context = module.this.context
}

module "account_map" {
  source  = "cloudposse/stack-config/yaml//modules/remote-state"
  version = "0.22.2"

  component   = "account-map"
  environment = var.account_map_environment_name
  stage       = var.account_map_stage_name
  privileged  = true

  context = module.this.context
}
