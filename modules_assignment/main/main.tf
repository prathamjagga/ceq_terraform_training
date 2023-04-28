module "s3" {
  source = "../s3"
  bucket = "pratham-practice"
  tags = {
    name  = "pratham-practice"
    owner = "pratham.jagga@cloudeq.com"
  }
}
