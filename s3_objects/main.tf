terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.7"
    }
  }

}
provider "aws" {
  region = "us-east-1"

}

resource "aws_s3_bucket" "S3" {
  bucket = "prathamobj"


  tags = {
    name    = "pratham-practice-s3-bucket"
    owner   = "pratham.jagga@cloudeq.com"
    purpose = "practice"
  }

}

variable "files" {
  type    = list(string)
  default = ["../images/myImage.jpg", "../images/image2.jpg"]
}


resource "aws_s3_object" "object" {
  bucket = "prathamobj"

  count  = length(tolist(fileset("C:/ceq/ceq_terraform/images", "*")))
  key    = (tolist(fileset("C:/ceq/ceq_terraform/images", "*")))[count.index]
  source = join("", ["C:/ceq/ceq_terraform/images/", (tolist(fileset("C:/ceq/ceq_terraform/images", "*")))[count.index]])
  depends_on = [
    aws_s3_bucket.S3
  ]
}



