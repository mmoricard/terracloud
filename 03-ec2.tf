resource "aws_instance" "webserver" {
  ami                    = var.web_params.image
  instance_type          = var.web_params.type
  key_name               = var.web_params.key
  vpc_security_group_ids = [aws_security_group.allow_ssh_conn.id]
  tags = {
    Name = var.web_params.name[count.index]
  }
  count = 2
}

resource "aws_instance" "appserver" {
  ami                    = var.apps_params.image
  instance_type          = var.apps_params.type
  key_name               = var.apps_params.key
  vpc_security_group_ids = [aws_security_group.allow_ssh_conn.id]
  tags = {
    Name = var.apps_params.name[count.index]
  }
  count = 3
}

resource "aws_instance" "mngtserver" {
  ami                    = var.mngt_params.image
  instance_type          = var.mngt_params.type
  key_name               = var.mngt_params.key
  vpc_security_group_ids = [aws_security_group.allow_ssh_conn.id]
  tags = {
    Name = var.mngt_params.name[count.index]
  }

  count = 1
}
