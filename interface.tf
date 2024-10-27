variable "env" {
  type        = string
  description = "The name of the environment."
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR of the VPC."
}

variable "subnet_cidr" {
  type        = string
  description = "The public subnet to create."
}

variable "server_port" {
  description = "The port of the server"
}

variable "ip_to_allow_ssh" {
  type = string
  description = "The ips that can access to the port 22"
}

