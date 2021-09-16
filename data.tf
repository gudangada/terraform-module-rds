# Remote central-vpc state
data "terraform_remote_state" "central-vpc" {
  backend = "remote"

  config = {
    organization = "gudangadacom"
    workspaces = {
      name = "${var.environment == "production" ? "central-vpc-prod" : (var.environment == "staging" ? "central-vpc-staging" : "central-vpc-dev")}"
    }
  }
}
