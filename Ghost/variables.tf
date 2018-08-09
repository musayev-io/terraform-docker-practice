variable "image" {
  description = "Image for Container"
  default = "ghost:latest"
}

variable "container_name" {
  description = "Name of Docker Container"
  default = "blog"
}

variable "int_port" {
  default = "2368"
}

variable "ext_port" {
  default = "80"
}
