output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "public_subnet" {
  value = aws_subnet.public.id
}

output "private_subnet" {
  value = aws_subnet.private.id
}

output "security_group" {
  value = aws_security_group.my_sg.id
}