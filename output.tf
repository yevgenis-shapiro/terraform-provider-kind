
output "kind_cluster_name" {
  description = "The name of the Kind cluster"
  value       = kind_cluster.default.name
}

output "kubeconfig_path" {
  description = "The path to the kubeconfig file for the Kind cluster"
  value       = kind_cluster.default.kubeconfig_path
}

output "kubeconfig_raw" {
  description = "Raw kubeconfig content (useful for CI/CD embedding)"
  value       = kind_cluster.default.kubeconfig
  sensitive   = true
}
