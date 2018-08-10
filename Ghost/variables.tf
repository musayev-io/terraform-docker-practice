
# export TF_VAR_env = dev | prod
variable "env" {
  description = "env: dev or prod"
}

variable "image" {
  description = "Image for Container"
  type = "map"
}

variable "container_name" {
  description = "Name of Docker Container"
  type = "map"
}

variable "int_port" {
  type = "map"
}

variable "ext_port" {
  type = "map"
}
