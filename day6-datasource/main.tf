resource "aws_instance" "super" {
    ami = data.aws_ami.keyname.id
    instance_type = "t2.micro"
    key_name = "super"
     subnet_id = data.aws_subnet.myname.id

    security_groups = [data.aws_security_group.myname.id]
   
    tags = {
        Name = "datasource"
    }
  
}
