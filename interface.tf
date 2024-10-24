variable "name" {
  type        = string
  description = "The name of the VPC."
  default = "vpc"
}

variable "cidr" {
  type        = string
  description = "The CIDR of the VPC."
  default = "10.0.0.0/16"
}

variable "public_subnet" {
  type        = string
  description = "The public subnet to create."
  default = "10.0.0.1/24"
}

variable "enable_dns_hostnames" {
  description = "Should be true if you want to use private DNS within the VPC"
  default     = true
  type        = bool
}

variable "enable_dns_support" {
  description = "Should be true if you want to use private DNS within the VPC"
  default     = true
  type        = bool
}

variable "map_public_ip_on_launch" {
  description = "Should be false if you do not want to auto-assign public IP on launch"
  default     = true
  type        = bool
}


# variable "key_name" {
#     description = "The key pair of the instance"
#     type = string

# }
variable "ami" {
    type = string
    description = "The AMI "
    default = "ami-40d28157"
}

variable "region" {
    type = string
    default = "The region of the instance"
}

variable "server_port" {
  description = "The port of the server"
  default     = 8080
}

variable "instance_type" {
    type = string
    description = "The type of the instance"
    default = "t2.micro"
}