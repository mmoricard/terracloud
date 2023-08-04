module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.1"
  name    = var.vpc_params.name
  cidr    = var.vpc_params.cidr

  azs             = var.vpc_params.azs
  private_subnets = var.vpc_params.private_subnets
  public_subnets  = var.vpc_params.public_subnets

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}