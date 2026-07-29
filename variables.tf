variable "region" {
  type        = string
  description = "AWS Region"
  default     = "ap-south-1"
}


variable "buckets" {
  type        = map(string)
  description = "A map of bucket identifiers and their name prefixes"
  default = {}
}
