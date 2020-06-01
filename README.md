This repo contains an S3 module that does the following:

 * Creates an S3 bucket
 * Uses an AWS KMS key to encrypt the bucket should the user choose to
 * Allows the user to configure the number of days data should be retained after which it will either be transitioned to IA or transferred to Glacier
 * Allows the user to specify a bucket policy if they want to apply one to the bucket
