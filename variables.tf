variable "aws_region" {
  type        = string
  description = "AWS Region your EKS cluster is in."
}

variable "assume_role_arn" {
  type        = string
  description = "The role to use to deploy your changes."
}

variable "cluster_name" {
  type        = string
  description = "The name of your EKS cluster."
}

variable "run_hour" {
  type        = number
  default     = 1
  description = "Hour of the day to schedule. Defaults to 1am."
}

variable "start_hour" {
  type        = number
  default     = 10
  description = "Do not scheduled any pod deaths before. Defaults to 10am."
}

variable "end_hour" {
  type        = number
  default     = 16
  description = "Do not scheduled any pod deaths after. Defaults to 4pm."
}

variable "blacklisted_namespaces" {
  type        = list(string)
  default     = ["kube-system"]
  description = "Namespaces to exclude. Defaults to kube-system."
}

variable "kubemonkey_version" {
  type        = string
  default     = "latest"
  description = "What version of Kubemonkey to deploy. Defaults to latest."
}

variable "namespace" {
  type        = string
  default     = "kube-system"
  description = "The namespace to deploy into. Defaults to kube-system."
}

variable "dry_run" {
  type        = bool
  default     = false
  description = "Terminations are only logged. Defaults to false."
}

variable "time_zone" {
  type        = string
  default     = "Europe/London"
  description = "The time zone to use. Defaults to Europe/London"
}
