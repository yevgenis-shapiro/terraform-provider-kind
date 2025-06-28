output "kind_cluster_name" {
  description = "The name of the Kind cluster"
  value       = kind_cluster.default.name
}

output "kubeconfig_path" {
  description = "The path to the kubeconfig file for the Kind cluster"
  value       = kind_cluster.default.kubeconfig_path
}

output "control_plane_endpoint" {
  description = "The endpoint for the Kind control-plane API server"
  value       = "https://127.0.0.1:${kind_cluster.default.kubeconfig_ports[0].host_port}"
}

output "nodes_info" {
  description = "Names of nodes in the Kind cluster"
  value = [
    for node in kind_cluster.default.nodes : node.name
  ]
}
