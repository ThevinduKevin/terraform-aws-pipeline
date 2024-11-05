variable "subnet_id" {
  type = string
  description = "ID of the sunet to launch the instance in"
}

variable "instance_type" {
  type = string
  description = "EC2 instance type"
  default = "t2.micro"
}

variable "ami_id" {
  type = string
  description = "AMI ID for the instance"
}