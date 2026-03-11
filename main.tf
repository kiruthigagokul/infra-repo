module "vpc" {
  source = "./modules/vpc"
}

module "iam" {
  source = "./modules/iam"
}

module "eks" {
  source           = "./modules/eks"
  cluster_role_arn = module.iam.cluster_role_arn
  node_role_arn    = module.iam.node_role_arn
  subnet_ids = [
    module.vpc.public_subnet,
    module.vpc.private_subnet
  ]
  security_group = module.vpc.security_group
}