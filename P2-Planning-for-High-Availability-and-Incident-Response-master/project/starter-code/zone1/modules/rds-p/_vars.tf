# variable "name" {}
variable "vpc_id" {}
variable "private_subnet_ids" {}

variable "rds_instance_count" {
  default = "2"
}