// backend.tf
terraform {
  backend "s3" {
    bucket  = "s3-backend"
    key     = "s3-backend/backend/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}
