terraform {
    backend "s3"{
    encrypt = true
    bucket = "terraform-state-storage-s3-practice"
    dynamodb_table = "test"
    region = "eu-central-1"
    key = "terraform.tfstate"   

    }
}

