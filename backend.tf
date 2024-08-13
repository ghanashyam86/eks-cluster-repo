terraform {
  backend "s3" {
    bucket = "eks-cluster-setup-using-jenkins-ghana"
    key    = "eks-cluster/terraform.tfstate"
    region = "ap-south-1"
  }
}

