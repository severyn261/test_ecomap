################################################################################
#                                   REGION                                     #
################################################################################
provider "aws" {
  region     = "${var.aws_region}"
}


################################################################################
#                                  INSTANCE                                    #
# ################################################################################
resource "aws_instance" "Sev_ubuntu" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  availability_zone      = "${var.availability_zone}"
  count                  = "${var.count_inst}"
  vpc_security_group_ids = ["${var.vpc_security_group_ids}"]
  subnet_id              = "${var.subnet_id}"
  security_groups        = ["${var.security_group_ids}"]
  key_name               = "${var.key_acc}"
  user_data              = "${file("testrun.sh")}"
  monitoring             = false
  root_block_device {
    volume_type           = "gp2"
    volume_size           = 10
    delete_on_termination = true
  }

  volume_tags = {
    "${var.tag-name}" = "${var.tag-value}"
  }

  associate_public_ip_address = true
  source_dest_check           = false

  tags = {
    Name              = "${var.name_inst}-${count.index+1}"
    "${var.tag-name}" = "${var.tag-value}"
  }
}
################################################################################
#                              Security Group                                  #
# ##############################################################################
# resource "aws_security_group" "Sev_sgubuntu" {
#   name        = "Sev_sdubuntu"
#   description = "New Security Group"
#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   tags = {
#     ita_group = "Lv-428"
#   }
# }