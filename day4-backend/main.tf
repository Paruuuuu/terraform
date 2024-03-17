resource "aws_instance"  "yname" {
    ami = "ami-0d7a109bf30624c99"
     key_name = "super"
    instance_type ="t2.micro"

    tags = {
        Name = "prabhas2"
    }
}
