terraform {
   backend "s3" {
     bucket = "udacity-tf-nsaavedra-west"
     key    = "terraform/terraform.tfstate"
    region = "us-west-1"
  }
}

provider "aws" {
  shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]
  region                   = "us-west-1"
  #profile = "default"

  default_tags {
    tags = local.tags
  }
}