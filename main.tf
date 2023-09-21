terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}

provider "aws" {
    region = "ap-southeast-1"
    access_key = ""
    secret_key = ""
}

resource "aws_instance" "linux_server" {
    ami = ""
    instance_type = "t2.micro"
}

output "public_ip" {
    value = aws_instance.linux_server.public_ip
}