resource "digitalocean_kubernetes_cluster" "sundial-cluster" {
  name = "sundial-cluster"
  region = "lon1"
  version = "1.19.3-do.2"

  node_pool {
    name = "sundial-pool"
    size = "s-2vcpu-4gb"
    auto_scale = false
    node_count = 3
  }
}