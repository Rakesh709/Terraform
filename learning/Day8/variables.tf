variable "bucket_name" {
    description = "this is for s3"
    type = list(string)
    default = [ "my-unique-bucket-e8374sjha" ,"my-unique-bucket-e837ajwg"]
  
}

variable "bucket_name_set" {
  description = "this is s3 using set"
  type = set(string)
  default = [ "my-unique-bucket-rakesh000001" ,"my-unique-bucket-rakesh9999"]
}