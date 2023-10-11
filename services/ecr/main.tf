resource "aws_ecr_repository" "this" {
  name                 = var.ecr_name
  image_tag_mutability = var.image_tag_mutability

  encryption_configuration {
    encryption_type = var.encryption_type
  }

  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }

  tags = var.tags
}