# IGW
resource "aws_internet_gateway" "igw-prod" {
    vpc_id = "${ aws_vpc.vpc-prod.id }"
    
    tags {
        Name = "igw-prod"
    }
}
