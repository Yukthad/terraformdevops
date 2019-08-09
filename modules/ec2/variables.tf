variable "region" {
  description = "Region"
}
variable "availability_zones" {
  description = "Availability zones that are going to be used for the subnets"

}


variable "ami" {
    description = "ami id"
    //default = ""
    type = "string"
}

variable "instance_type" {
    description = "instance_type t2.micro"
    //default = "false"
    type = "string"
}

