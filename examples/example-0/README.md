This example demonstrates a simple usage of the module. It does the following:

* Creates an S3 bucket that is encrypted with AWS KMS by default.
* Creates a KMS key to encrypt the bucket
* The variables region and name of the resources terraform creates are compulsory. If the user doesn't provide these variables in the variables.tf file, it asks for the user input.


