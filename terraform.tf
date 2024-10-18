terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.72.1"
    }
  }

backend "s3" {
    bucket = "terrafomrstate020923"
    key    = "plearn/key"
    region = "af-south-1"
}
}
