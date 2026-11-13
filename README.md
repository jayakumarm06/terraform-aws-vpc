# VPC Creation

## Resource
* vpc - aws_vpc.main
* IGW - aws_internet_gateway.main
* Subnets:
    * Public_Subnet - aws_subnet.public
    * Private_Subnet - aws_subnet.private
    * Database_Subnet - aws_subnet.database
* Subnet_group - aws_db_subnet_group.main
* Routes tables & Associations:
    * Public - aws_route_table.public
    * Private - aws_route_table.private
    * Database - aws_route_table.database
    * Public  -  aws_route_table_association.public
    * Private  -  aws_route_table_association.private
    * Database  -  aws_route_table_association.database
* EIP - aws_eip.nat
* NAT - aws_nat_gateway.main
* Routes:
   * Public - aws_route.public
   * Private - aws_route.private
   * Database - aws_route.database

## Inputs:
* project(Mandatory) - Name you can give to the project
* environment(Mandatory) - Which environment this resource is getting created
* vpc_cidr(Optional) - cidr Ip range attached to the vpc
* vpc_tags(Optional)- A map of tags attached to the vpc
* igw_tags(Optional) - A map of tags attached to the IGW
* public_subnet_cidrs (Optional)- By default it takes cidr IP
* public_subnet_tags (Optional)- A map of tags attached to the public_subnet
* private_subnet_cidrs (Optional)- By default it takes cidr IP
* private_subnet_tags (Optional)-A map of tags attached to the private_subnet
* database_subnet_cidrs (Optional)- By default it takes cidr IP
* database_subnet_tags (Optional)- A map of tags attached to the database_subnet
* public_route_table_tags (Optional)- A map of tags attached to the public_route_table
* private_route_table_tags (Optional)- A map of tags attached to the private_route_table
* database_route_table_tags (Optional)- A map of tags attached to the database_route_table
* eip_tags (Optional)- A map of tags attached to the EIP
* nat_gateway_tags (Optional)- A map of tags attached to the NAT

## Outputs:
* vpc_id - IP of the VPC Creates
* azs_info - List of availability zones for particular region