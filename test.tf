resource "kubernetes_cron_job" "kaniko_project_executor" {
  spec {
    job_template {
      spec {
        template {
          spec {
            container {
              name    = "kaniko"
              image   = "gcr.io/kaniko-project/executor:v1.7.0@sha256:8504bde9a9a8c9c4e9a4fe659703d265697a36ff13607b7669a4caa4407baa52"
            }
          }
        }
      }
    }
  }
}
