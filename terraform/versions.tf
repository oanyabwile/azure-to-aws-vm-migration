terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = "omari-terraform-state"
    key            = "azure-to-aws-vm-migration/dev/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
