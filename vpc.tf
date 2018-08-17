# AWS VPC
resource "aws_vpc" "vpc-prod" {
    cidr_block = "192.168.0.0/16"
    instance_tenancy = "default"
    enable_dns_support = "true"
    enable_dns_hostnames = "true"
    enable_classiclink = "false"
    
    tags {
        Name = "vpc-prod"
    }
}
