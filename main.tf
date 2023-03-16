resource "aws_instance" "example" {
  #ami = "ami-00569e54da628d17c"  ## Amazon linux 
  ami = "ami-0d221cb540e0015f4"  ### Ubuntu 20.04
  instance_type = "t2.micro"
  count = 2
  user_data = <<-EOF
  #!/bin/bash
  echo "Hello world1" > index.html
  nohup busybox httpd -f -p 8080 &
  EOF
  user_data_replace_on_change = true
  vpc_security_group_ids = [aws_security_group.websg.id]

  tags = {
    "Name" = "example"
  }
}