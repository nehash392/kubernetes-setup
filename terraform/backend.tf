terraform {
  backend "s3" {
    bucket         = "demo-eks-terraform-state"
    key            = "kubernetes-setup/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "demo-terraform-locks"
    encrypt        = true
  }
}
