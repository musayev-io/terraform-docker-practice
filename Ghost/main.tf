# Download the latest Ghost blogging image
resource "docker_image" "image_id" {
  name = "${var.image}"
}

# Start the Container
resource "docker_container" "container_id" {
  image = "${docker_image.image_id.latest}"
  name  = "${var.name}"

  ports {
    internal = "${var.internal_port}"
    external = "${var.external_port}"
  }
}
