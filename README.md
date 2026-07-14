# Terraform AWS Infrastructure

This repository contains Terraform code to provision a basic AWS web infrastructure. It creates a VPC, two public subnets, an internet gateway, a route table, a security group, two EC2 instances, and an Application Load Balancer.

## Architecture Overview

- VPC with CIDR block `10.0.0.0/16`
- Two public subnets in different availability zones
- Internet gateway and public route table
- Security group allowing SSH and HTTP traffic
- Two EC2 web servers with user data scripts
- Application Load Balancer (ALB) forwarding traffic to both instances

## Project Files

- `main.tf` – Main Terraform configuration for AWS resources
- `variables.tf` – Input variables used by the configuration
- `terraform.tfvars` – Values for the variables
- `userdata.sh` – User data script for the first EC2 instance
- `userdata1.sh` – User data script for the second EC2 instance

## Prerequisites

Before deploying, make sure you have:

- Terraform installed
- An AWS account
- AWS credentials configured through the AWS console and available to the AWS CLI/Terraform
- Appropriate IAM permissions to create VPC, EC2, and ELB resources

## Getting Started

1. Initialize Terraform:
   ```bash
   terraform init
   ```

2. Review the planned changes:
   ```bash
   terraform plan
   ```

3. Apply the infrastructure:
   ```bash
   terraform apply
   ```

4. When finished, destroy the resources:
   ```bash
   terraform destroy
   ```

## Notes

- The EC2 instances use the AMI and instance type defined in `terraform.tfvars`.
- The ALB listens on port 80 and forwards traffic to the target group attached to both web servers.
- You may need to update the AMI ID in `terraform.tfvars` depending on your AWS region and account.

Output screenshots:
<img width="1920" height="1080" alt="Screenshot (199)" src="https://github.com/user-attachments/assets/034ad7b6-4d03-4e3c-8424-8b84716d88f4" />
<img width="1920" height="1080" alt="Screenshot (220)" src="https://github.com/user-attachments/assets/3402de8e-73f5-43c4-9ba6-2fadce841cd1" />
<img width="1920" height="1080" alt="Screenshot (203)" src="https://github.com/user-attachments/assets/fd204999-db0b-4bdb-9edf-569402fda4fa" />
<img width="1920" height="1080" alt="Screenshot (204)" src="https://github.com/user-attachments/assets/bd179e33-8e27-480a-b72a-187cf535ed8b" />
<img width="1920" height="1080" alt="Screenshot (216)" src="https://github.com/user-attachments/assets/491a6dd4-2b08-4a79-9231-ec56a70acb0e" />
<img width="1920" height="1080" alt="Screenshot (223)" src="https://github.com/user-attachments/assets/6f0e3c81-a410-4d86-a8d4-535e7afc9194" />




