
output "vpc_id" {
value = aws_vpc.vpc.id
}
output "cidr" {
value = aws_vpc.vpc.cidr_block
}

output "public_subnet_id2" {
value = aws_subnet.public.id
# sensitive = true
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}
