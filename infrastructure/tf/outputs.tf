output "get-credentials-cmd" {
  value = "doctl kubernetes cluster kubeconfig save ${digitalocean_kubernetes_cluster.sundial-cluster.name}"
}