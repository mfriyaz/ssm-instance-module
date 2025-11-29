# account region
provider "aws" {
  region = "ap-southeast-1" 
  }

# root main.tf
module "ubuntu_ssm_instance" {
  source                = "./modules/ubuntu_ssm_instance"
  instance_name         = "UbuntuSingleTier01"
  ami_id                = "ami-00d8fc944fb171e29"
  instance_type         = "t2.micro"
  key_name              = "terrafrom"
  security_group_name   = "allow_ubuntu_ssh_http"
  allowed_ports         = [22,80,8080,8082]
  user_data_script      = local.ubuntu_startup_script
}

locals {
  ubuntu_startup_script = <<-EOF
    #!/bin/bash
    apt update -y
    apt install -y apache2
    systemctl enable apache2
    systemctl start apache2
    echo "<h1>Ubuntu Web Server Running</h1>" > /var/www/html/index.html
  EOF
}
