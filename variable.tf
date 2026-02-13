variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "pem_key" {
  type = string
  default = "Kiran_H"
}

variable "ami_id" {
    type=string
    default = "ami-0ff5003538b60d5ec"
  
}