variable "vpc-name" {
  type = string
}

variable "vpc-cidr" {
  type = string
}

variable "region" {
  type = string
}

variable "based-tags" {
  type = map(string)
}
