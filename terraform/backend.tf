terraform {
  backend "s3" {
    bucket = "wj-eks-tfstate"
    key    = "eks/terraform.tfstate"
    region = "ap-southeast-2"
  }
}