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

variable "ami" {
    type = string
    description = "The AMI "
}

variable "server_port" {
  description = "The port of the server"
}

variable "instance_type" {
    type = string
    description = "The type of the instance"
}
variable "ip_allow_ssh" {
  description = "The ips that can access to the port 22"
  default = "0.0.0.0/0"
}

