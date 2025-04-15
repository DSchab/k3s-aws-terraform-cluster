terraform {
  required_version = ">= 1.0.11"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.8"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.2"
    }
  }
}

provider "aws" {
  alias = "infra-admin"
  profile = var.aws_infra_profile
  region  = var.aws_region
}

provider "aws" {
  alias = "iam-admin"
  profile = var.aws_admin_profile
  region  = var.aws_region
}
