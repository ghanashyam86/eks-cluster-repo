data "aws_availability_zones" "available" {
}


# Create VPC Terraform Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.2.0"

  # VPC Basic Details
  name           = "${local.name}-${var.vpc_name}"
  cidr           = var.vpc_cidr_block
  azs            = data.aws_availability_zones.available.names
  public_subnets = var.vpc_public_subnets
  #  private_subnets = var.vpc_private_subnets
  map_public_ip_on_launch = true
  tags                    = local.common_tags
  vpc_tags                = local.common_tags

  # Additional Tags to Subnets
  public_subnet_tags = {
    Type = "Public Subnets"
  }
}
