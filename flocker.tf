provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "ap-southeast-2"
}

resource "aws_instance" "flocker_client" {
  ami           = "ami-0d729a60"
  instance_type = "t2.micro"
}
