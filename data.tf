data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    region   = var.region
    bucket   = "dinosandbox-prod-tf-states-us-east-1"
    key      = "production/us-east-1/vpc/terraform.tfstate"
  }
}