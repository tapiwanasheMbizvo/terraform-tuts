provider "aws" {
  profile = "default"
  region  = "af-south-1"

}
# terraform init 

resource "aws_instance" "terrform_instance_app_server" {

  ami           = "ami-0c13b2d84424f9d8d"
  instance_type = "t2.nano"
  tenancy       = "default"
  tags = {
    Name = "PetAppFrontEnd",
    Env  = "dev"
  }
  key_name                    = "private_pet_server"
  associate_public_ip_address = true


}