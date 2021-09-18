terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.55.0"
    }

    github = {
      source = "integrations/github"
      version = "4.13.0"
    }
  }
}

provider "aws" {}
provider "github" {}