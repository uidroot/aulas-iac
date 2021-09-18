provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias   = "sao-paulo"
  region  = "sa-east-1"
  profile = "conta2"
}

