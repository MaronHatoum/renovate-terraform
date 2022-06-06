resource "kubernetes_cron_job" "foo" {
  spec {
    job_template {
      spec {
        ...
        template {
          spec {
            container {
              name    = "my-image"
              image   = "my.registry.io/my-repo/my-image:1.0.0@sha256:123456" 
            }
          }
        }
      }
    }
  }
}
