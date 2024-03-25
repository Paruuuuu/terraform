resource "aws_instance" "myname" {
    ami = "ami-013168dc3850ef002"
    key_name = "devsecops"
    instance_type = "t2.micro"
    user_data = file("test.sh")

    tags = {
        Name = "prabhas3"
    }
}

  