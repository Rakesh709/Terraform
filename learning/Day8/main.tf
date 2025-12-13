resource "aws_s3_bucket" "bucket1" {
#   count = length(var.bucket_name)
count = 2
  bucket = var.bucket_name[count.index]

  tags = {
     Name        = "Test Backend Bucket"
     Environment = "dev"
   }
}

resource "aws_s3_bucket" "bucket2" {
  for_each = var.bucket_name_set
  bucket = each.value

  tags = {
     Name        = "Test Backend Bucket"
     Environment = "pre-dev"
   }

   depends_on = [ aws_s3_bucket.bucket1 ]
}