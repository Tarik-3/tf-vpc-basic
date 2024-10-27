
output "vpc_id" {
  value = aws_vpc.vpc.id
}
output "vpc_cidr" {
  value = aws_vpc.vpc.cidr_block
}

output "subnet_id" {
  value = aws_subnet.subnet.id
  # sensitive = true
}
output "security_group_id" {
  value = aws_security_group.sg.id
}


