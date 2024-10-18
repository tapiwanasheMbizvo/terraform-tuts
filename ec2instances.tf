resource "aws_instance" "public_front_end_instance" {

  subnet_id                   = aws_subnet.public_subnet.id
  security_groups             = [aws_security_group.public_facing_instances_sg.id]
  instance_type               = var.public_instance_type
  key_name                    = aws_key_pair.public_instances_key_pair.key_name
  ami                         = var.public_instance_ami
  associate_public_ip_address = true

  tags = {
    Name = "Pet App Front End Instance"
  }

}


resource "aws_instance" "private_backend_instance" {

  subnet_id       = aws_subnet.private_subnet.id
  security_groups = [aws_security_group.private_instances_sg.id]
  instance_type   = var.private_instance_type
  key_name        = aws_key_pair.private_instances_key_pair.key_name          
  ami             = var.private_instance_ami

  tags = {
    Name = "Pet App Backend Instance"
  }


}