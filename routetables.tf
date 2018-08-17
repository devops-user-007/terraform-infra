resource "aws_route_table" "dmz-rt" {
	vpc_id = "${ aws_vpc.vpc-prov.id }"

	route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.igw-prod.id}"
	}

	tags {
	    Name = "dmz-rt"
	}
}
