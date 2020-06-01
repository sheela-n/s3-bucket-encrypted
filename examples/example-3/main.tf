provider "aws" {
  region = var.region
}

module "s3" {
  source = "../../modules/s3"
  bucket_name = var.bucket_name
  region = var.region
  retention_days_infrequently_accessed = 40
  retention_days_glacier = 70
}
