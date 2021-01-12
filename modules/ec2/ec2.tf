resource "aws_instance" "ec2_pro" {
    availability_zone = "${var.availability_zones}"
    ami ="${var.ami}"
    instance_type = "${var.instance_type}"
    key_name= "personal"
    security_groups= ["${aws_security_group.ALLTRAFFIC.name}"]
    
}

 resource "aws_ebs_volume" "volume1" {
    availability_zone = "eu-central-1a"
    size = 1
    encrypted = true
    //_key_id = "${data.aws_kms_key.kms.arn}"  

  
}
resource "aws_volume_attachment" "ebsattchment" {
    device_name = "/dev/sdh"
    volume_id = "${aws_ebs_volume.volume1.id}"
    instance_id = "${aws_instance.ec2_pro.id}"
  
}
/*
data "aws_kms_key" "kms" {
  key_id = "alias/alias"
  
}
*/
