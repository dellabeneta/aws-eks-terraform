module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = var.tags
}

module "eks_cluster" {
  source           = "./modules/cluster"
  eks_version      = var.eks_version
  subnet_public_1a = module.eks_network.subnet_pub_1a
  subnet_public_1b = module.eks_network.subnet_pub_1b
  project_name     = var.project_name
  tags             = var.tags
}

module "eks_node_group" {
  source            = "./modules/nodegroup"
  cluster_name      = module.eks_cluster.cluster_name
  desired_size      = var.desired_size
  min_size          = var.min_size
  max_size          = var.max_size
  instance_types    = var.instance_types
  subnet_private_1a = module.eks_network.subnet_priv_1a
  subnet_private_1b = module.eks_network.subnet_priv_1b
  project_name      = var.project_name
  tags              = var.tags
}

module "eks_load_balancer" {
  source       = "./modules/loadbalancer"
  cluster_name = module.eks_cluster.cluster_name
  oidc         = module.eks_cluster.oidc
  project_name = var.project_name
  tags         = var.tags
}