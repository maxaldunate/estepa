variable "access_key" {}
variable "secret_key" {}
variable "tag_project" {}
variable "tag_project_module" {}
variable "domain_name" {}

locals {
  common_tags = {
    Project        = "${var.tag_project}"
    Project-Module = "${var.tag_project_module}"
  }
}

data "aws_caller_identity" "current" {}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "eu-west-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket        = "${var.domain_name}"
  acl           = "public-read"
  #policy = "${file("policies/s3-web-hosting.policy.json")}"

  website {
      index_document = "index.html"
      error_document = "error.html"
    }  

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST"]
    allowed_origins = ["https://s3-website-test.hashicorp.com"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }


  tags = "${local.common_tags}"
}







output "bucket-arn" {
  value = "${aws_s3_bucket.bucket.arn}"
}
