output "inst_id" {
  description = "ID of the EC2 Instance"
  value = aws_instance.my-test-server.id
}

output "inst_pub_ip" {
  description = "Public IP address of the EC2 instance"
  value = aws_instance.my-test-server.public_ip
}

