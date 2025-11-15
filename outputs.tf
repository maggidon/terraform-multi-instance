output "public_ips" {
  value = aws_instance.multi_instance[*].public_ip
}
