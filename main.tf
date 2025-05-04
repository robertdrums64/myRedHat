  terraform {
    required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 3.0"
      }
    }
  }

  provider "aws" {
    region = "us-east-1"
  }

  resource "aws_instance" "web" {
    ami                                  = "ami-0c15e602d3d6c6c4a"
    associate_public_ip_address          = true
    availability_zone                    = "us-east-1c"
    cpu_core_count                       = 1
    cpu_threads_per_core                 = 1
    disable_api_termination              = false
    ebs_optimized                        = false
    get_password_data                    = false
    hibernation                          = false
    host_id                              = null
    iam_instance_profile                 = null
    instance_initiated_shutdown_behavior = "stop"
    instance_type                        = "t2.micro"
    ipv6_address_count                   = 0
    ipv6_addresses                       = []
    key_name                             = "myKeyPair"
    monitoring                           = false
    placement_group                      = null
    placement_partition_number           = null
    private_ip                           = "172.31.87.107"
    secondary_private_ips                = []
    security_groups                      = ["launch-wizard-1"]
    source_dest_check                    = true
    subnet_id                            = "subnet-061981f57679fbe5e"
    
    tags = {
      Name = "myRHEL"
    }
  }