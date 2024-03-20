data "aws_ami" "keyname" {
   most_recent = true
  owners = [ "amazon" ]
  filter {
    name = "name"
    values = [ "amzn2-ami-hvm-*-gp2" ]
  }
  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }
}
data "aws_subnet" "myname" {
  id = "subnet-038882ff6fdde2ae0"

  
}

data "aws_security_group" "myname" {
  id = "sg-0843d557fbb6ad4ff"
  
}