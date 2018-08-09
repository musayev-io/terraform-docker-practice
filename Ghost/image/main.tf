# Download the latest Ghost blogging image
resource "docker_image" "image_id" {
  name = "${var.image}"
}
