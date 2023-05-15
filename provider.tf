terraform {
  required_providers {
    eksctl = {
      source  = "mumoshu/eksctl"
      version = "0.17.0"
    }
  }
}
terraform {
  backend "s3" {
    bucket                  = "cjc-terraform-01d0jipp99"
    key                     = "terraform.tfstate"
    region                  = "ap-southeast-1"
    profile                 = "voconic-dwv003" //If not specific, default profile name will be used from .aws\credentials file.
    shared_credentials_file = "~/.aws/credentials"
    encrypt                 = true
    kms_key_id              = "kms-key-id"
    dynamodb_table          = "tf-remote-state-lock"
  }
}

