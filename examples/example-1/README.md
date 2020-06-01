This example demonstrates a simple usage of the module. It does the following:

* Creates an S3 bucket that is encrypted with AWS KMS by default but the option is configurable and is disabled in this example. Any value other than true will disable this setting
* No KMS key will be created since the user of this module has disabled encryption.
* The variables region and name of the resources terraform creates are compulsory. The variables are passed to the module via a variables.tf file. 


