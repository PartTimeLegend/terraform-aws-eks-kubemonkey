variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "assume_role_arn" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "run_hour" {
  type    = number
  default = 1
}

variable "start_hour" {
  type    = number
  default = 10
}

variable "end_hour" {
  type    = number
  default = 16
}

variable "blacklisted_namespaces" {
  type    = list(string)
  default = ["kube-system"]
}

variable "kubemonkey_version" {
  type    = string
  default = "latest"
}

variable "namespace" {
  type    = string
  default = "kube-system"
}