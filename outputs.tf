output "webservers-public-ip" {
  value = zipmap(var.web_params.name, aws_instance.webserver[*].public_ip)
}

output "appservers-public-ip" {
  value = zipmap(var.apps_params.name, aws_instance.appserver[*].public_ip)
}

output "mngtservers-public-ip" {
  value = zipmap(var.mngt_params.name, aws_instance.mngtserver[*].public_ip)
}