# Provider-1 for us-east-1 (Default Provider)
provider "aws" {
  region = "ap-south-1"
}

#Another provider alias 
provider "aws" {
  region = "ap-south-2"
  alias = "country"
}

resource "aws_s3_bucket" "test" {
  bucket = "thok-bmvjhcck"

}
resource "aws_s3_bucket" "test2" {
  bucket = "vcdkjug-hdghvbjgtc"
  provider = aws.country  #provider.value of alias
  
}