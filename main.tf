resource "kubernetes_horizontal_pod_autoscaler" "example" {
  metadata {
    name      = "example-hpa"
    namespace = "default"
  }

  spec {
    scale_target_ref {
      api_version = "apps/v1"
      kind        = "Deployment"
      name        = kubernetes_deployment.example.metadata[0].name
    }

    min_replicas                      = 1
    max_replicas                      = 10
    target_cpu_utilization_percentage = 50
  }
}
