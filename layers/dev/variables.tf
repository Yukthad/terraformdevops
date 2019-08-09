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


variable "engine" {
    description = "engine "
    //default = ""
    type = "string"
}

variable "engine_version" {
    description = "engine_version"
    //default = ""
    type = "string"
}

variable "instance_class" {
    description = "instance_class"
    //default = ""
    type = "string"
}

variable "username" {
    description = "username for db"
    //default = ""
    type = "string"
}

variable "password" {
    description = "password for db "
    //default = ""
    type = "string"
}



