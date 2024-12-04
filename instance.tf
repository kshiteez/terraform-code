resource "aws_instance" "terraform-ec2" {
  ami                         = var.myami
  instance_type               = var.ec2type
  vpc_security_group_ids      = [aws_security_group.terra-SG.id]
  key_name                    = var.mykey
  subnet_id                   = var.mysubnet
  associate_public_ip_address = true
  tags = {
    Name = "my-first-ec2"
  }
}
