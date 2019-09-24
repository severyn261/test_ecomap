################################################################################
#                                   REGION                                     #
################################################################################
provider "aws" {
  region = "${var.aws_region}"
}
################################################################################
#                                  INSTANCE                                    #
################################################################################
# resource "aws_instance" "Sev_ubuntu" {
#   ami                    = "${var.ami}"
#   instance_type          = "${var.instance_type}"
#   availability_zone      = "${var.availability_zone}"
#   count                  = "${var.count_inst}"
#   vpc_security_group_ids = ["${var.vpc_security_group_ids}"]
#   subnet_id              = "${var.subnet_id}"
#   security_groups        = ["${var.security_group_ids}"]
#   key_name               = "${var.key_acc}"
#   user_data              = "${file("testrun.sh")}"
#   monitoring             = false
#   root_block_device {
#     volume_type           = "gp2"
#     volume_size           = 10
#     delete_on_termination = true
#   }

#   volume_tags = {
#     "${var.tag-name}" = "${var.tag-value}"
#   }

#   associate_public_ip_address = true
#   source_dest_check           = false

#   tags = {
#     Name              = "${var.name_inst}-${count.index + 1}"
#     "${var.tag-name}" = "${var.tag-value}"
#   }
# }
################################################################################
#                              Security Group                                  #
# ##############################################################################
# resource "aws_security_group" "Sev_sgubuntu" {
#   name        = "Sev_sdubuntu"
#   description = "Security Group for App"
#   ingress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   tags = {
#     Name              = "SevNewSG4app"
#     "${var.tag-name}" = "${var.tag-value}"
#   }
# }


################################################################################
#                                     EBS                                      #
################################################################################
resource "aws_elastic_beanstalk_application" "tftest" {
  name = "${var.app_name}-TRAVISBUILD"
  tags = {
    "${var.tag-name}" = "${var.tag-value}"
  }
}

resource "aws_elastic_beanstalk_environment" "tfenvtest" {
  name                = "ecomap-TRAVIS-TRAVISBUILD"
  application         = "${aws_elastic_beanstalk_application.tftest.name}"
  solution_stack_name = "${var.solution_stack_name}"
  user_data              = "${file("testrun.sh")}"

  setting {
    namespace = "aws:ec2:vpc"
    name      = "VPCId"
    value     = "${var.vpc_id}"
  }

  setting {
    namespace = "aws:ec2:vpc"
    name      = "Subnets"
    value     = "${var.subnet_id}"
  }
    setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "SecurityGroups"
    value     = "sg-0a66a80d3f8b2bbb6"
  }  
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = "aws-elasticbeanstalk-ec2-role"
  }
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "EC2KeyName"
    value     = "sevaws"
  }
    setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "ServiceRole"
    value     = "aws-elasticbeanstalk-service-role"
  }
#     setting {
#     namespace = "aws:elasticbeanstalk:environment"
#     name      = "LoadBalancerType"
#     value     = "application"
#   }
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = "t2.medium"
  }
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "ImageId"
    value     = "ami-05c1fa8df71875112"
  }
  tags = {
    "${var.tag-name}" = "${var.tag-value}"
  }
  provisioner "local-exec" {
    command = "export APP_NAME=${aws_elastic_beanstalk_application.tftest.name}"
  }
  provisioner "local-exec" {
    command = "export ENVIROMENT_NAME=${aws_elastic_beanstalk_environment.tfenvtest.name}"
  }
}


