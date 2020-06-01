provider "aws" {
  region = var.region
}

module "s3" {
  source = "../../modules/s3"
  bucket_name = var.bucket_name
  region = var.region
  enable_encryption = false
}
