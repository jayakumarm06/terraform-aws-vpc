data "aws_availability_zones" "available" {
  state = "available"
}

# Fetch the default VPC for the current region
data "aws_vpc" "default" {
  default = true
}
