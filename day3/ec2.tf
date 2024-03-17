resource "aws_instance"  "yname" {
    ami = "ami-05b8575d080b71baf"
     key_name = "key3"
    instance_type ="t3.micro"

    tags = {
        Name = "prabhas"
    }
}
