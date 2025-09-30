module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = "1.27"
  subnets         = ["subnet-abc123", "subnet-def456"] # Example
  vpc_id          = "vpc-123abc" # Example

  node_groups = {
    demo_nodes = {
      desired_capacity = 2
      max_capacity     = 5
      min_capacity     = 1
      instance_type    = "t3.medium"
    }
  }
}
