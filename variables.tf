variable "project_name" {
  type        = string
  description = "This is the name of the VPC"
}

variable "cidr_block" {
  type        = string
  description = "This is the cidr block for VPC"
}

variable "iam_user_name" {
  type        = string
  description = "This is the IAM user name"
}