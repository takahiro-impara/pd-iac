terraform {
  required_providers {
    pagerduty = {
      source  = "pagerduty/pagerduty"
      version = ">= 2.2.1"
    }
  }

  backend "s3" {
    bucket = "private-infra-poc-v2"
    key    = "terraform/terraform.tfstate.pd-iac"
    region = "ap-northeast-1"
  }
}
