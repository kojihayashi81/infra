terraform {
  required_version = ">= 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  // Terraform cloudのアカウントが必須
  cloud {
    organization = "[Organization名]"
    hostname     = "app.terraform.io"

    workspaces {
      name = "[Workspace名]"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
