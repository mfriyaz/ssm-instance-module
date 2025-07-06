# modules/ubuntu_ssm_instance/outputs.tf

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.ubuntu.id
}

output "public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.ubuntu.public_ip
}

output "security_group_id" {
  description = "The ID of the created security group"
  value       = aws_security_group.this.id
}

output "iam_role_name" {
  description = "The name of the IAM role attached to the instance"
  value       = aws_iam_role.ubuntu_ssm_role.name
}
