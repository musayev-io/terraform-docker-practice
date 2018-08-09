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
