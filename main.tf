resource "aws_instance" "example" {
  ami = "ami-00569e54da628d17c"
  instance_type = "t2.micro"
  tags = {
    "name" = "example"
    "Name" = "example"
  }
}