variable "image" {
  description = "Image for Container"
  default = "ghost:latest"
}

variable "name" {
  description = "Name of Docker Container"
  default = "blog"
}

variable "internal_port" {
  default = "2368"
}

variable "external_port" {
  default = "80"
}

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

output "IP Address" {
  value = "${docker_container.container_id.ip_address}"
}

output "Container_Name" {
  value = "${docker_container.container_id.name}"
}
