module "vpc" {
  source        = "./modules/vpc"
  project_name  = var.project_name
  cidr_block    = var.cidr_block
  iam_user_name = var.iam_user_name
}

module "ec2" {
  source = "./modules/ec2"
}

module "sg" {
  source        = "./modules/sg"
  project_name  = var.project_name
  cidr_block    = var.cidr_block
  iam_user_name = var.iam_user_name
  vpc_id        = module.vpc.my_vpc_id
}


# module "s3_bucket" {
#   source = "terraform-aws-modules/s3-bucket/aws"
#   version = "~>5.12.0"
# }

# module "iam_account" {
#   source  = "terraform-aws-modules/iam/aws//modules/iam-account"

#   account_alias = "${var.iam_user_name}-account"

#   max_password_age               = 90
#   minimum_password_length        = 24
#   require_uppercase_characters   = true
#   require_lowercase_characters   = true
#   require_numbers                = true
#   require_symbols                = true
#   password_reuse_prevention      = 3
#   allow_users_to_change_password = true
# }

# resource "aws_instance" "web" {
#   ami           = "ami-0c94855ba95c71c99"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "${var.project_name}-web"
#   }
#   # dynamic "ingress" {
#   #   for_each = [80, 443]
#   #   content {
#   #     from_port   = ingress.value
#   #     to_port     = ingress.value
#   #     protocol    = "tcp"
#   #     cidr_blocks = ["0.0.0.0/0"]
#   #   }
#   # }
# }


# resource "aws_s3_bucket" "demo" {
#   bucket = var.bucket_name
# }