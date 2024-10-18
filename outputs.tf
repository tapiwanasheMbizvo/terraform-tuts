output "pulic_instance_ip_addr" {
  value = aws_instance.public_front_end_instance[*].public_ip


}

output "public_instance_dns" {
  value = aws_instance.public_front_end_instance[*].public_dns
}

output "public_instance_key_name" {

  value = aws_instance.public_front_end_instance.key_name
}


output "public_instances_key" {

  value =  tls_private_key.front_end_key.private_key_pem
  sensitive = true
}