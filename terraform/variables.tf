variable "bucket_names" {
  type    = set(string)
  default = ["preethi-8942071-bucket-1", "preethi-8942071-bucket-2", "preethi-8942071-bucket-3", "preethi-8942071-bucket-4"]
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "db_name" {
  type    = string
  default = "mydatabase"
}

variable "db_username" {
  type    = string
  default = "Preethi"
}

variable "db_password" {
  type    = string
  default = "Preethi123!"
}