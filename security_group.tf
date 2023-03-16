resource "aws_security_group" "websg" {
    name = "websg"
    description = "Allow 8080 port"
    ingress  {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
      "Name" = "example"
    }
  
}