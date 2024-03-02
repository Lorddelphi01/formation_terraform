terraform {
  backend "remote" {
    organization = "gop_labs"

    workspaces {
      name = "aws"
    }
  }
}