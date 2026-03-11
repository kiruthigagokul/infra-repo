variable "cluster_name" {
  default = "my_cluster"
}

variable "cluster_role_arn" {}

variable "node_role_arn" {}

variable "subnet_ids" {
  type = list(string)
}

variable "security_group" {}