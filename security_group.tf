resource "aws_security_group" "terra-SG" {
  name        = "terra-SG"
  description = "terra-SG inbound traffic and all outbound traffic"
  vpc_id      = "vpc-0982db6142d60174d"
  tags = {
    Name = "terra-SG"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.terra-SG.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}