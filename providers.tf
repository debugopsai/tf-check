terraform {
  required_version = "1.12.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.0"
    }
  }
  # backend "s3" {

  # }
  
  
  # cloud {
  #   organization = "remote-hcp"
  #   hostname     = "app.terraform.io"
  #   workspaces {
  #     name = "network-ws"
  #   }

  # }

  backend "local" {
    
  }

}

provider "aws" {
  region     = "us-east-1"
}

# provider "aws" {
#   alias      = "us_west_2"
#   region     = "us-west-2"
# }


# removed {
#   from = module.iam_account
#   lifecycle {
#     destroy = false
#   }
# }