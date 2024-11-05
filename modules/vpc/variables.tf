variable "vpc_cidr" {
  type = string
  description = "cidr block for the vpc"
  default = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  type = list(string)
  description = "List of cidrs for public subnets"
  default = [ "10.0.1.0/24" ]
}