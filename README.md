This repo contains an S3 module that does the following:

 * Creates an S3 bucket
 * Uses an AWS KMS key to encrypt the bucket should the user choose to
 * Allows the user to configure the number of days data should be retained after which it will either be transitioned to IA or transferred to Glacier
 * Allows the user to specify a bucket policy if they want to apply one to the bucket

 ** Requirements: **
  * Terraform v0.12.26
  * provider.aws v2.63.0

** Running the examples: **
 * To set AWS credentials, run `aws configure` to configure your AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY; Or export AWS_ACCESS_KEY_ID and AWS_ACCESS_KEY_ID as environment variables
 * Run terraform init in the directory you wish to see the example in
 * To view which resources will be created, run `terraform plan`
