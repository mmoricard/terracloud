web_params = {
  name  = ["webserver-1", "webserver-2"]
  type  = "t2.micro"
  key   = "terraform"
  image = "ami-06ca3ca175f37dd66"
}

apps_params = {
  name  = ["appserver-1", "appserver-2", "appserver-3"]
  type  = "t2.micro"
  key   = "terraform"
  image = "ami-06ca3ca175f37dd66"
}

mngt_params = {
  name  = ["mngtserver-1"]
  type  = "t2.micro"
  key   = "terraform"
  image = "ami-06ca3ca175f37dd66"
}

cidr = ["0.0.0.0/0"]

nsg_ports = [22, 80]

vpc_params = {
  name  = "matt-vpc"
  cidr  = "10.0.0.0/16"
  private_subnets   = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
  azs = ["us-east-1a","us-east-1b"]
}