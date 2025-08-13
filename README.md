# PROG 8870 Final Project: AWS Infrastructure Automation with Terraform & CloudFormation

## Project Overview  
This project demonstrates deploying AWS infrastructure using Infrastructure as Code (IaC) with Terraform and CloudFormation.  
The deployed resources include:  
- Private S3 buckets with versioning  
- EC2 instance inside a custom VPC with SSH access  
- MySQL RDS database instance with public access  

## Project Components

### Terraform  
- Defines VPC, subnets, internet gateway, route tables, security groups.  
- Creates 4 private S3 buckets with versioning enabled.  
- Deploys EC2 instance with dynamic AMI and instance type variables.  
- Provisions MySQL RDS instance inside dedicated subnet group with security groups.  
- Uses variables and tfvars file for dynamic configuration.  
- Stores state locally using backend configuration.

### CloudFormation  
- Creates 3 private S3 buckets with versioning and public access blocked.  
- Launches EC2 instance with public IP, SSH access, inside custom VPC and subnet.  
- Deploys publicly accessible MySQL RDS instance with proper security group and subnet group.

## How to Deploy

### Terraform  
1. Run `terraform init` to initialize.  
2. Run `terraform plan` to preview changes.  
3. Run `terraform apply` to provision resources.  

### CloudFormation  
1. Upload respective YAML templates via AWS CloudFormation console.  
2. Provide parameters like VPC ID, subnet IDs, SSH key name, DB credentials.  
3. Create stack and monitor deployment progress.  
4. Outputs will provide resource IDs and public IPs.

## Key Features  
- Private, versioned S3 buckets to protect data.  
- Custom VPC with public subnet and internet gateway for EC2 access.  
- Security groups configured for SSH and MySQL traffic.  
- RDS instance deployed with required subnet group and access settings.  
- Dynamic, modular code using variables and parameters for flexibility.  

## Challenges  
- Ensured RDS password meets AWS policy for special characters.  
- Managed resource dependencies to avoid deployment failures.  
- Integrated Terraform and CloudFormation effectively.  

## Conclusion  
The project showcases scalable, secure AWS infrastructure deployment using Terraform and CloudFormation.


