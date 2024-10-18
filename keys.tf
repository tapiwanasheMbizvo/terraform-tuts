resource "tls_private_key" "public_instances_key" {
    algorithm = "RSA"
    rsa_bits = 2048
  
}


resource "tls_private_key" "private_instances_key" {
    algorithm = "RSA"
    rsa_bits = 2048
  
}

resource "aws_key_pair" "public_instances_key_pair" {
    key_name = "public-ec2"
    public_key = tls_private_key.public_instances_key.public_key_openssh
  
}

resource "aws_key_pair" "private_instances_key_pair" {
    key_name = "private-ec2"
    public_key = tls_private_key.private_instances_key.public_key_openssh
  
}