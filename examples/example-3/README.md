This example demonstrates a simple usage of the module. It does the following:

* Creates an S3 bucket that is encrypted with AWS KMS by default. 
* Creates a KMS key to encrypt the bucket.
* The variables region and name of the resources terraform creates are mandatory. The variables are passed to the module via a variables.tf file. 
* The user of this module configures when data in the bucket can transition to Amazon S3 Standard-Infrequent Access or Glacier.
* The user of this module passes along an S3 bucket policy to be attached to the bucket by supplying a filename to the bucket.
