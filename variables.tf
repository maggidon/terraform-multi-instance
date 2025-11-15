variable "aws_region" {
  default = "eu-west-2"
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  default     = 3
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for Ubuntu"
  default     = "ami-052170fbf7afddf75"
}

variable "key_name" {
  description = "EC2 key pair to use"
}
