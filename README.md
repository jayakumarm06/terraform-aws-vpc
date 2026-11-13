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
