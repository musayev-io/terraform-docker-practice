# Download the latest Ghost blogging image
resource "docker_image" "image_id" {
  name = "ghost:latest"
}

# Start the Container
resource "docker_container" "container_id" {
  image = "${docker_image.image_id.latest}"
  name = "blog"
  ports {
    internal = "2368"
    external = "80"
  }
}

output "IP Address" {
  value = "${docker_container.container_id.ip_address}"
}

output "Container_Name" {
  value = "${docker_container.container_id.name}"
}
