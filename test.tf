resource "kubernetes_cron_job" "kaniko_project_executor" {
  spec {
    job_template {
      spec {
        template {
          spec {
            container {
              name    = "kaniko"
              image   = "gcr.io/kaniko-project/executor:latest"
            }
          }
        }
      }
    }
  }
}
