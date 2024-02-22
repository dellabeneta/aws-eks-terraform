resource "aws_eks_node_group" "eks_managed_node_group" {
  cluster_name    = var.cluster_name
  node_group_name = "${var.project_name}-nodegroup"
  node_role_arn   = aws_iam_role.nodegroup_role.arn
  subnet_ids = [
    var.subnet_private_1a,
    var.subnet_private_1b
  ]
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-nodegroup"
    }
  )
  
  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }

  instance_types = [var.instance_types]

  depends_on = [
    aws_iam_role_policy_attachment.nodegroup_role_attachment_worker,
    aws_iam_role_policy_attachment.nodegroup_role_attachment_ecr,
    aws_iam_role_policy_attachment.nodegroup_role_attachment_cni
  ]
}