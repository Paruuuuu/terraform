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
#create security groups
  resource "aws_security_group" "myname" {
  name        = "allow_tls"
  vpc_id      = aws_vpc.myname.id

  tags = {
    Name = "my-security-group"
  }
 ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }


  }
  #create ec2 instance
  resource "aws_instance" "yname" {
      ami = "ami-0d7a109bf30624c99"
     key_name = "super"
    instance_type ="t2.micro"
    associate_public_ip_address = true
    security_groups = [ aws_security_group.myname.id ]

subnet_id = aws_subnet.myname.id

   
  }

   
  

