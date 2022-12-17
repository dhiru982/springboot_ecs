terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.39.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "dhirubucket"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
