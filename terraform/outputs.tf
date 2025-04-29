# VPC Outputs
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value       = module.vpc.private_subnet_ids
}

output "web_security_group_id" {
  description = "Security Group ID for Web"
  value       = module.vpc.web_sg_id
}

# EC2 Instance Output
output "web_instance_id" {
  description = "EC2 instance ID for the web server"
  value       = module.web_server.instance_id
}

# S3 Bucket Output
output "s3_bucket_name" {
  description = "Name of the S3 bucket for app logs"
  value       = module.s3_app_logs.bucket_name
}
output "web_public_ip" {
  value = module.web_server.public_ip
}