resource "aws_vpc" "hc-backend-vpc" {
  cidr_block       = var.vpc-cidr
  region           = var.region
  instance_tenancy = "default"

  tags = merge(var.based-tags,
    {
      Name = var.vpc-name
  })
}
