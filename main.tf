provider "aws" {
  region = "us-east-1"
  profile = "terraform"
}

resource "aws_ecr_repository" "ts_container_aws" {
  name = "ts-container-aws"
  image_tag_mutability = "MUTABLE"
}
