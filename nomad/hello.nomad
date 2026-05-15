job "hello-devops" {
  datacenters = ["dc1"]

  group "app" {
    task "hello-task" {
      driver = "docker"

      config {
        image = "devops-app"
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}