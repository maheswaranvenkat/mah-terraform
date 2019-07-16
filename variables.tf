variable "vpc_cidr" {
  description = "Choose cidr for vpc"
  type        = "string"
  default     = "10.20.0.0/16"
}
variable "pub_sub_cidrs" {
  description = "Choose cidr for public subnets"
  type        = "list"
  default     = ["10.20.1.0/24", "10.20.2.0/24", "10.20.3.0/24"]
}

variable "region" {
  description = "Choose region for your stack"
  type        = "string"
  default     = "us-east-1"
}
