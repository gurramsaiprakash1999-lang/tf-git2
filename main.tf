terraform {
  backend "s3" {
    bucket = "s3-tf-07-2026-bucket-2" # Create this bucket manually in AWS first!
    key    = "terraform.tfstate"
    region = "ap-south-2"
  }
}
