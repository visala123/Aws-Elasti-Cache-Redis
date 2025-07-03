terraform {
   backend "s3" {
    bucket = "terraform-remote-state-v"
    key    = "terraform.tfstate.elasticache"
    region = "ap-northeast-2"
  }
}
