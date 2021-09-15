# Remote central-vpc-dev state
data "terraform_remote_state" "central-vpc-dev" {
  backend = "remote"

  config = {
    organization = "gudangadacom"
    workspaces = {
      name = "central-vpc-dev"
    }
  }
}
