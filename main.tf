resource "aws_vpc" "hc-backend-vpc" {
  cidr_block       = var.vpc-cidr
  region           = var.region
  instance_tenancy = "default"

  tags = merge(var.based-tags,
    {
      Name = "${var.prefix-name}-vpc"
  })
}


resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.hc-backend-vpc.id

  tags = merge(var.based-tags,
    {
      Name = "${var.prefix-name}-igw"
  })
}


## Public Route table ##
resource "aws_route_table" "public-routeTable" {
  vpc_id = aws_vpc.hc-backend-vpc.id

  tags = merge(var.based-tags,
    {
      Name = "${var.prefix-name}-igw"
  })
}
