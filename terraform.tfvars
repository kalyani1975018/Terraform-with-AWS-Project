aws_region         = "us-east-1"
cidr               = "10.0.0.0/16"
availability_zone1 = "us-east-1a"
availability_zone2 = "us-east-1b"
subnet1_cidr       = "10.0.0.0/24"
subnet2_cidr       = "10.0.1.0/24"
web_ami            = "ami-0b6d9d3d33ba97d99"
instance_type      = "t3.micro"

common_tags = {
  Project     = "TerraformProject"
  Environment = "dev"
  Owner       = "Kalyani"
}