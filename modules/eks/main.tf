resource "aws_eks_cluster" "my_cluster" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = [var.security_group]
  }
}

resource "aws_eks_node_group" "nodes" {
  cluster_name    = aws_eks_cluster.my_cluster.name
  node_group_name = "my_node_group"
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.subnet_ids

  scaling_config {
    desired_size = 2
    min_size     = 1
    max_size     = 3
  }

  instance_types = ["t3.medium"]
}