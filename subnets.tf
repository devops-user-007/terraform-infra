# Subnets
# DMZ 1
resource "aws_subnet" "dmz-subnet-1" {
    vpc_id = "${ aws_vpc.vpc-prod.id }"
    cidr_block = "192.168.1.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "us-east-2a"

    tags {
        Name = "dmz-subnet-1"
    }
}

# DMZ 2
resource "aws_subnet" "dmz-subnet-2" {
    vpc_id = "${ aws_vpc.vpc-prod.id }"
    cidr_block = "192.168.2.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "us-east-2b"

    tags {
        Name = "dmz-subnet-2"
    }
}

# APP 1
resource "aws_subnet" "app-subnet-1" {
    vpc_id = "${aws_vpc.vpc-prod.id}"
    cidr_block = "192.168.3.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "us-east-2a"
    
    tags {
        Name = "app-subnet-1"
    }
}

# APP 2
resource "aws_subnet" "app-subnet-2" {
    vpc_id = "${ aws_vpc.vpc-prod.id }"
    cidr_block = "192.168.4.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "us-east-2b"
    
    tags {
        Name = "app-subnet-2"
    }
}
