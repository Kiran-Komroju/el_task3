terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      # optional: pin a version like ">= 2.0.0"
    }
  }
  required_version = ">= 0.13"
}

# Provider: leave empty to let the provider auto-detect the Docker socket or DOCKER_HOST env var.
provider "docker" {}

# Pull the nginx image
resource "docker_image" "nginx" {
  name = "nginx:stable"
}

# Create a container from the image
resource "docker_container" "nginx" {
  name  = "tf-nginx"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8080
  }

  restart = "on-failure"
}

# Optional: output container id
output "container_id" {
  value = docker_container.nginx.id
}

