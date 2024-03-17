#create vpc
resource "aws_vpc" "myname" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "myvpc"
    }
  
}
#create internet gatewat
resource "aws_internet_gateway" "myname" {
    vpc_id = aws_vpc.myname.id

    tags = {
        Name = "myig"

    }

    }
  

#create subnet
resource "aws_subnet" "myname" {
    vpc_id = aws_vpc.myname.id
    cidr_block = "10.0.0.0/24"

    tags = {
      Name = "subnet"
    }



  
}
#create route tabla and attch ig to rt
resource "aws_route_table" "myname" {
    vpc_id = aws_vpc.myname.id
    route  {
        cidr_block="0.0.0.0/0"
        gateway_id = aws_internet_gateway.myname.id
    }
  
}
#create subnet association and attach to rt 
resource "aws_route_table_association" "myname" {
    route_table_id = aws_route_table.myname.id
    subnet_id = aws_subnet.myname.id
    
  
}
