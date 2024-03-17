 terraform {
  backend "s3" {
    bucket = "rapidooooooo"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-lock-dynamo" # DynamoDB table used for state locking, note: first run day4-s3
    encrypt        = true  # Ensures the state is encrypted at rest in S3.

  }
}