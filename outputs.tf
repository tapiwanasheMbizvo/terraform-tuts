output "pulic_instance_ip_addr" {
  value = aws_instance.public_front_end_instance.public_ip


}

output "public_instance_dns" {
  value = aws_instance.public_front_end_instance.public_dns
}

output "public_instance_key_name" {

  value = aws_instance.public_front_end_instance.key_name
}

output "private_instance_ip_addr" {
  value = aws_instance.private_backend_instance.private_ip


}

output "private_instance_dns" {
  value = aws_instance.private_backend_instance.private_dns
}

output "private_instance_key_name" {

  value = aws_instance.private_backend_instance.key_name
}
