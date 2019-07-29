resource "aws_efs_file_system" "efs" {
    creation_token = "file_system"
    encrypted = "true"
    //kms_key_id = "${aws_kms_key.kms.arn}" 
    //["${module.aws.account-id}"]
   // kms_key_id = "${data.aws_kms_alias.kms.arn}"
   // kms_key_id = "${module.kms.kms_arn}"
    kms_key_id = "${data.aws_kms_key.kms.arn}"
}
data "aws_kms_key" "kms" {
  key_id = "alias/alias"
  
}
  
//data "aws_kms_alias" "kms" {
//    name = "alias/kms"
    
    
//}
