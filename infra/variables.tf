variable "aws_region" {
  type    = string
  default = "eu-north-1"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "key_name" {
  type    = string
  default = "gh-ec2-key"
}

variable "public_key" {
  type        = string
  description = "Public SSH key to deploy"
}

variable "project_name" {
  type    = string
  default = "vpn-temp"
}
