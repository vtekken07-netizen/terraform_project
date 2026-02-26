resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = {
    name = "${var.env}-s3"
  }  
}
