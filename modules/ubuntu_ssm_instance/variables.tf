variable "ami_id" {
  description = "AMI ID for the Ubuntu instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "Key pair name to access the instance"
  type        = string
}

variable "instance_name" {
  description = "Tag name for the EC2 instance"
  type        = string
}

variable "security_group_name" {
  description = "Name of the security group"
  type        = string
}

variable "allowed_ports" {
  description = "List of ports to allow in the security group"
  type        = list(number)
}

variable "user_data_script" {
  description = "Startup script for EC2 instance"
  type        = string
}
