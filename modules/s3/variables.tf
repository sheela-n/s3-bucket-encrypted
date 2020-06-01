variable "region" {
  description = "[Required] The AWS region in which the S3 bucket should be created. If not specified, will ask for user input"
  type = string
}

variable "bucket_name" {
  description = "[Required] The name of the S3 bucket. If not specified, will ask for user input"
  type = string
}

variable "retention_days_infrequently_accessed" {
  description = "[Optional] Number of days after which the data in the bucket transitions to infrequently accessed"
  type = number
  default = 10
}

variable "retention_days_glacier" {
  description = "[Optional] Number of days after which the data in the bucket is transferred to Glacier"
  type = number
  default = 20
}

variable "enable_encryption" {
  description = "[Optional] Toggle if Server Side Encryption with KMS needs to be enabled on the bucket"
  type = string
  default = "true"
}

variable "encryption_type" {
  description = "[Optional] Type of encryption for the S3 bucket (Supported values are AWS KMS and AES256)"
  type = string
  default = "aws:kms"
}

variable "s3_bucket_policy_file_name" {
  description = "[Optional] File name of a valid json file containing the bucket policy for the bucket. If no filename is provided, no policy will be applied. The variable bucket_name can be passed to the json file if needed"
  default = "s3_policy.json"
}
