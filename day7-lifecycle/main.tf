resource "aws_instance" "myname" {
    ami = "ami-013168dc3850ef002"
    key_name = "devsecops"
    instance_type = "t2.micro"
   

    tags = {
        Name = "prabhas3"
    }
   
   # lifecycle {
   # create_before_destroy = true    #this attribute will create the new object first and then destroy the old one
  

 lifecycle {
   prevent_destroy = false    #Terraform will error when it attempts to destroy a resource when this is set to true:
 }


#   lifecycle {
#     ignore_changes = [tags,] #This means that Terraform will never update the object but will be able to create or destroy it.
#   }
}

  