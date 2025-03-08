terraform {
  backend "s3" {
    bucket = "priya-08-03-25" # Replace with your actual S3 bucket name
    key    = "EKS/terraform.tfstate"
    region = "ap-south-1"
  }
}
