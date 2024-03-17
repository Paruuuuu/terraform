resource "aws_instance" "myname" {
    ami = var.aws_instance
    key_name = var.key_name
    instance_type =var.instance_type

    tags = {
        Name = "prabhas"
    }

}