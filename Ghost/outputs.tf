output "Container Name" {
  value = "${docker_container.container_id.name}"
}

output "IP Address" {
  value = "${docker_container.container_id.ip_address}"
}
