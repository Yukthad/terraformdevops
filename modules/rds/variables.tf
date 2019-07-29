variable "region" {
  description = "Region"
}
variable "availability_zones" {
  description = "Availability zones that are going to be used for the subnets"
  type        = "list"
}

variable "engine" {
    description = "engine "
    //default = "false"
    type = "string"
}

variable "engine_version" {
    description = "engine_version"
    //default = "false"
    type = "string"
}

variable "instance_class" {
    description = "instance_class"
    //default = "false"
    type = "string"
}

variable "username" {
    description = "username for db"
    //default = "false"
    type = "string"
}

variable "password" {
    description = "password for db "
    //default = "false"
    type = "string"
}

