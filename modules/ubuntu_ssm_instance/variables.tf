variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "instance_name" {}
variable "security_group_name" {}
variable "allowed_ports" {
  type = list(number)
}
variable "user_data_script" {
  type = string
}
