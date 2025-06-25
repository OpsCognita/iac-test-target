resource "aws_eks_node_group" "general_purpose_nodes" {
  cluster_name    = "my-cluster"
  node_group_name = "general_purpose-nodes"
  instance_types  = ["t3.large"]
  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }
}
