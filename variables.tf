variable "vpc_params" {
  type = object({
    name            = string
    cidr            = string
    private_subnets = list(string)
    public_subnets  = list(string)
    azs             = list(string)
  })
  description = "my VPC variables"
}

variable "web_params" {
  type = object({
    name  = list(string)
    type  = string
    key   = string
    image = string
  })
  description = "my webservers variables"
}

variable "apps_params" {
  type = object({
    name  = list(string)
    type  = string
    key   = string
    image = string
  })
  description = "my appservers variables"
}

variable "mngt_params" {
  type = object({
    name  = list(string)
    type  = string
    key   = string
    image = string
  })
  description = "my mngtservers variables"
}