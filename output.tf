output "ec2_pub_ip" {
  value = aws_instance.terraform-ec2.public_ip
}

output "ec2_id" {
  value = aws_instance.terraform-ec2.id
}

output "pri_ip" {
  value = aws_instance.terraform-ec2.private_ip
}

