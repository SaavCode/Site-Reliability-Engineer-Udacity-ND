terraform {
   backend "s3" {
     bucket = "udacity-tf-nsaavedra"
     key    = "terraform/terraform.tfstate"
     region = "us-east-2"
   }
 }

 provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = local.tags
  }
}

provider "aws" {
  shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]
  alias                    = "usw1"
  region                   = "us-west-1"
}