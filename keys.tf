resource "tls_private_key" "front_end_key" {
    algorithm = "RSA"
    rsa_bits = 2048
  
}


resource "tls_private_key" "private_instances_key" {
    algorithm = "RSA"
    rsa_bits = 2048
  
}

resource "aws_key_pair" "front_end_key" {
    key_name = "front_end_key"
    public_key = tls_private_key.front_end_key.public_key_openssh

    provisioner "local-exec" {
        command = "echo '${tls_private_key.front_end_key.private_key_pem}' > ./front_end_key.pem "
      
    }
  
}

resource "aws_key_pair" "private_instances_key_pair" {
    key_name = "private-ec2-key"
    public_key = tls_private_key.private_instances_key.public_key_openssh
  
}

