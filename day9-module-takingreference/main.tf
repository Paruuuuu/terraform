module "myname" {
    source = "../day9-modules"
    key_name = "devsecops"
  aws_instance = "ami-013168dc3850ef002"
  instance_type = "t2.micro"
}