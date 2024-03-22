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
data "aws_security_group" "myname" {
  filter {
    name = "tag:Name"
    values = ["my-security-group"]

  }  
  
}
data "aws_subnet" "myname" {
  filter {
    name = "tag:Name"
    values = ["subnet"]


  }
  
}
