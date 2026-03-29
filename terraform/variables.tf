variable "cluster_name" {
  type    = string
  default = "wj-eks-cluster"
}

variable "cluster_version" {
  type    = number
  default = 1.31
}

variable "region" {
  type    = string
  default = "ap-southeast-2"
}

variable "availability_zones" {
  type    = list(string)
  default = ["ap-southeast-2a", "ap-southeast-2b"]
}

variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))
  default = [
    {
      name    = "kube-proxy"
      version = "v1.31.2-eksbuild.3"
    },
    {
      name    = "vpc-cni"
      version = "v1.19.0-eksbuild.1"
    },
    {
      name    = "coredns"
      version = "v1.11.3-eksbuild.1"
    },
    {
      name    = "aws-ebs-csi-driver"
      version = "v1.37.0-eksbuild.1"
    }
  ]
}