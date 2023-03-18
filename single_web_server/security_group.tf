resource "aws_security_group" "websg" {
    name = "websg"
    description = "Allow ${var.server_port} port"
    ingress  {
        from_port = var.server_port
        to_port = var.server_port
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
      "Name" = "example"
    }
  
}