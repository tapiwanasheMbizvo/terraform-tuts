resource "aws_instance" "public_front_end_instance" {

  subnet_id                   = aws_subnet.public_subnet.id
  security_groups             = [aws_security_group.public_facing_instances_sg.id]
  instance_type               = var.public_instance_type
  key_name                    = aws_key_pair.front_end_key.key_name
  ami                         = var.public_instance_ami
  associate_public_ip_address = true
  count = 3

  tags = {
    Name = "Internet facing Instance - ${count.index}"
  }

}
