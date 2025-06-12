terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.1"
    }
  }
}

provider "null" {}

resource "null_resource" "push_image" {
  provisioner "local-exec" {
    command = <<EOT
      docker tag ${var.image_name}:latest ${var.username}/${var.image_name}:latest
      docker push ${var.username}/${var.image_name}:latest
    EOT
  }
}
