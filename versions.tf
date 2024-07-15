terraform {

  backend "s3" {
    bucket         = "soat1-terraform-state-lock"
    key            = "rds/main.tf"
    region         = "us-east-1"
    profile        = "default"
    encrypt        = true
    dynamodb_table = "terraform-state-lock"
  }
}