data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    region   = var.region
    bucket   = "${var.bucket_tfstate}-${var.environment}"
    key      = "${var.region}/${var.environment}/vpc.tfstate"
  }
}