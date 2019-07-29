//output "kms_arn" {
 // value = "${aws_kms_alias.kms.arn}"
  //  value = "${module.kms.kms_arn}"

//}

module "kms" {
  source = "../../modules/kms"
  //alias_name = "my-key-alias"

  
  
}
