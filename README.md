# tf-vpc_basic
This is a basic vpc that use it to create a private network
This is variables that you should declare:
    server_port =
    vpc_cidr =
    env =
    subnet_cidr =
    ip_to_allow_ssh =
    instance_type =
    public_key_path =

The outputs are:
    security_group_id: The id of the security group
    subnet_id: the subnet's id
    vpc_cidr: the vpc's cidr
    vpc_id: The vpc's id
