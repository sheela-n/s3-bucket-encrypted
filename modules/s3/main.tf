resource "aws_kms_key" "kms_key" {
  count = var.enable_encryption == "true" ? "1" : "0"
  description = "Key used to encrypt S3 bucket"
  is_enabled = true
}


resource "aws_s3_bucket" "s3_bucket" {
  bucket =  var.bucket_name
  region = var.region

  lifecycle_rule {
    id = "retention"
    enabled = true

    transition {
      days = var.retention_days_infrequently_accessed
      storage_class = "STANDARD_IA"
    }

    transition {
      days = var.retention_days_glacier 
      storage_class = "GLACIER"
    }
  }
  
  dynamic "server_side_encryption_configuration" {
    for_each = var.enable_encryption == "true" ? [var.encryption_type] : []
    content {
        rule {
          apply_server_side_encryption_by_default {
            kms_master_key_id = aws_kms_key.kms_key[0].arn
            sse_algorithm = var.encryption_type
            }  
        }
    }
  }

  policy = fileexists(var.s3_bucket_policy_file_name) ?  templatefile(var.s3_bucket_policy_file_name, { bucket_name: "arn:aws:s3::${var.bucket_name}" } ) : ""
}
