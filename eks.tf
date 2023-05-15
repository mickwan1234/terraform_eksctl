provider "eksctl" {
}
resource "eksctl_cluster" "primary" {
  eksctl_bin = "eksctl"
  name       = "redpanda-cluster-2"
  region     = "ap-southeast-1"
  version    = "1.26"
  spec       = file("./eksctl.yaml")
}
output "eksctl" {
  value = eksctl_cluster.primary.output
}
