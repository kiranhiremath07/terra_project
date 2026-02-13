
output "ec2_public" {
  
  value  =aws_instance.my_ec2.public_ip
}
output "ec2_private" {
  
  value  =aws_instance.my_ec2.private_ip
}

output "Subnet_id" {
  
  value  =aws_instance.my_ec2.subnet_id
}