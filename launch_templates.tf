resource "aws_launch_template" "back_end_launch_template" {

  instance_type = var.public_instance_type
  key_name      = var.public_instance_key_name
  image_id = var.public_instance_ami
  security_group_names = [ aws_security_group.public_facing_instances_sg.id ]
  #user_data = filebas64()


}