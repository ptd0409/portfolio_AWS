terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "portfolio-dev"
    key            = "portfolio-platform/dev/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "portfolio-locks"
    encrypt        = true
  }
}
