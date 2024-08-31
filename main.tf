provider "aws" {

  region  = "af-south-1"

}
# terraform init 

resource "aws_vpc" "main" {

  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}