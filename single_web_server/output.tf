output "public_ip" {
  value = aws_instance.example.public_ip
  description = "The public IP address of the web server"
  sensitive = false
  depends_on = [
    aws_security_group.websg
  ]
}