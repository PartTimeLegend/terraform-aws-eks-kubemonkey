output "cluster_name" {
  value       = data.aws_eks_cluster.cluster.name
  description = "The name of your EKS cluster."
}

output "run_hour" {
  value       = var.run_hour
  description = "Hour of the day to schedule."
}

output "start_hour" {
  value       = var.start_hour
  description = "Do not scheduled any pod deaths before."
}

output "end_hour" {
  value       = var.end_hour
  description = "Do not scheduled any pod deaths after."
}

output "blacklisted_namespaces" {
  value       = var.blacklisted_namespaces
  description = "Namespaces to exclude."
}

output "kubemonkey_version" {
  value       = var.kubemonkey_version
  description = "What version of Kubemonkey to deploy."
}

output "dry_run" {
  value       = var.dry_run
  description = "Terminations are only logged."
}

output "time_zone" {
  value       = var.time_zone
  description = "The time zone to use."
}
