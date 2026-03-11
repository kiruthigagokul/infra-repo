terraform {
    backend "s3" {
        bucket = "infra-repo-1003-bucket"
        key = "eks/terraform.tfstate"
        region = "ap-south-1"
        dynamodb_table = "terraform-lock"
    }
}