resource "kubernetes_manifest" "kubemonkey_deployment" {
  manifest = {
    "apiVersion" = "apps/v1"
    "kind"       = "Deployment"
    "metadata" = {
      "name"      = "kube-monkey"
      "namespace" = "${var.namespace}"
    }
    "spec" = {
      "replicas" = 1
      "selector" = {
        "matchLabels" = {
          "app" = "kube-monkey"
        }
      }
      "template" = {
        "metadata" = {
          "labels" = {
            "app" = "kube-monkey"
          }
        }
        "spec" = {
          "containers" = [
            {
              "args" = [
                "-v=5",
                "-log_dir=/var/log/kube-monkey",
              ]
              "command" = [
                "/kube-monkey",
              ]
              "env" = [
                {
                  "name"  = "KUBE_MONKEY_ID"
                  "value" = "${data.aws_eks_cluster.cluster.name}"
                },
              ]
              "image" = "ayushsobti/kube-monkey:${var.kubemonkey_version}"
              "name"  = "kube-monkey"
              "volumeMounts" = [
                {
                  "mountPath" = "/etc/kube-monkey"
                  "name"      = "config-volume"
                },
              ]
            },
          ]
          "volumes" = [
            {
              "configMap" = {
                "name" = "kube-monkey-config-map"
              }
              "name" = "config-volume"
            },
          ]
        }
      }
    }
  }
  depends_on = [
    kubernetes_manifest.kubemonkey_configmap
  ]
}
