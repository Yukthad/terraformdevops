
//resource "aws_kms_key" "kms" {
 //   description = "KMS key "
 //   deletion_window_in_days = "7"
  
//}

//resource "aws_kms_alias" "kms" {
  //name = "alias/my-key-alias"
  //target_key_id = "${aws_kms_key.kms.key_id}"
//target_key_arn = "${aws}"
  
//}
//output "kms_arn" {
//  value = "${aws_kms_alias.kms.arn}"
//}


//data "aws_kms_alias" "kms" {
//   name = "alias/my-key-alias"
    
    
//}

data "aws_kms_key" "kms" {
  key_id = "alias/alias"
  
}
//resource "aws_s3_bucket_object" "s3objectexample" {
//  key = "test.html"
//  bucket = "s3objectexample"
//  kms_key_id = "${data.aws_kms_key.kms.arn}"
  
//}

