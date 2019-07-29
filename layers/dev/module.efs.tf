module "efs" {
  source = "../../modules/efs"
  region = "${var.region}"
  availability_zones = "${var.availability_zones}"
 // kms_key_id = "${module.efs.kms_arn}"
 
}
