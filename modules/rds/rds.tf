resource "aws_db_instance" "rds" {
    allocated_storage = 20
    storage_type = "gp2"
    engine = "${var.engine}"
    engine_version = "${var.engine_version}"
    instance_class = "${var.instance_class}"
    name = "practice"
    username = "${var.username}"
    password = "${var.password}"
    parameter_group_name = "default.mysql5.7"
    skip_final_snapshot = "true"
    //kms_key_id = "${data.aws_kms_key.kms.arn}"

}
