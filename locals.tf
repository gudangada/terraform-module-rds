locals {
  # AWS Account
  aws_account = "708503013607"
  vpc_id      = data.terraform_remote_state.central-vpc.outputs.vpc_id
  region      = data.terraform_remote_state.central-vpc.outputs.region

  default_tags = {
    Service       = var.service_name
    ProductDomain = var.product_domain
    Environment   = var.environment
    ManagedBy     = "terraform"
  }
}
