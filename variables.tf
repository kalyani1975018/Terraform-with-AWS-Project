variable "common_tags" {
  description = "Common tags for all AWS resources"
  type        = map(string)
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "cidr" {
  description = "VPC CIDR block"
  type        = string
}

variable "availability_zone1" {
  description = "Availability zone for subnet 1"
  type        = string
}

variable "availability_zone2" {
  description = "Availability zone for subnet 2"
  type        = string
}

variable "subnet1_cidr" {
  description = "CIDR block for subnet 1"
  type        = string
}

variable "subnet2_cidr" {
  description = "CIDR block for subnet 2"
  type        = string
}

variable "web_ami" {
  description = "AMI for web server instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}
