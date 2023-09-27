provider "aws" {
  region = "ap-southeast-2"
}


# Add terraform AWS s3 module
module "s3" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "2.0.0"
  bucket = "test-terraform-backend-naresh"
  acl    = "private"
  tags = {
    Name        = "test-terraform-backend-naresh"
    Environment = "Dev"
  }
}