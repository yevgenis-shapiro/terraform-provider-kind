![397890132-24bcbfd4-a2bb-4951-a75c-8887f5c2f37c](https://github.com/user-attachments/assets/2f491baf-73be-423d-9e1d-07f5a8839544)

## Module Kind | Local Kuberenetes
Deploy application using terraform in which you can have multiple iterations of same resource based on the resource or different application. Usage of terraform can simplified the deployment, however it depends on your use case and scenario


🎯  Key Features
```
✅ ArgoCD Provider in Terraform
✅ ArgoCD Application Deployment using Terraform
✅ ArgoCD Repository using Terraform
```

🚀 
```
terraform init
terraform validate
terraform plan -var-file="template.tfvars"
terraform apply -var-file="template.tfvars" -auto-approve
```

🧩 Ingress Example 

```
resource "kubernetes_ingress_v1" "my_app_ingress" {
  metadata {
    name      = "my-app-ingress"
    namespace = "default"
    annotations = {
      "kubernetes.io/ingress.class" = "nginx"
    }
  }

  spec {
    rule {
      host = "my-app.example.com"

      http {
        path {
          path     = "/"
          path_type = "Prefix"

          backend {
            service {
              name = "my-app-service"  # the service Argo CD deploys
              port {
                number = 80
              }
            }
          }
        }
      }
    }
  }

  depends_on = [argocd_application.my_app]  # ensure Argo CD app is created first
}
```

