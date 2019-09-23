variable "aws_region" {
  description = "Region for the Instance"
  default     = "us-east-2"
}
variable "ami" {
  description = "OS identifier"
  default     = "ami-05c1fa8df71875112"
}

variable "instance_type" {
  description = "Type of nessesary instance"
  default     = "t2.medium"
}

variable "availability_zone" {
  description = "AWS availability zone"
  default     = "us-east-2a"
}

variable "vpc_security_group_ids" {
  description = "Nessesary security group ids"
  default     = "sg-0a66a80d3f8b2bbb6"
}

variable "security_group_ids" {
  description = "Nessesary security group ids"
  default     = "sg-0a66a80d3f8b2bbb6"
}

variable "subnet_id" {
  description = "Nessesary subnet id"
  default     = "subnet-02e34e705e6fa2e82"
}
variable "secsubnet_id" {
  description = "Nessesary subnet id"
  default     = "subnet-03ef19a85b6f681e2"
}

variable "vpc_id" {
  description = "Nessesary subnet id"
  default     = "vpc-092147521744388ca"
}
variable "count_inst" {
  description = "Count of instanses"
  default     = 1
}
variable "name_lb" {
  description = "nameLB"
  default     = "ecomap-lb"
}

variable "key_acc" {
  description = "key access"
  default     = "sevaws"
}

variable "tag-name" {
  description = "Name"
  default     = "ita_group"
}

variable "tag-value" {
  description = "Name"
  default     = "Lv-428"
}

variable "user-data" {
  description = "Name"
  default     = "/home/severyn/work/terraformscripts/amazonecomap/testrun.sh"
}
variable "name_inst" {
  default = "EcoMap"
}
variable "solution_stack_name" {
  default = "64bit Amazon Linux 2018.03 v2.9.2 running Python 3.6"
}
variable "app_name" {
  default = "ecomap-travis-TRAVISBUILD"
}
