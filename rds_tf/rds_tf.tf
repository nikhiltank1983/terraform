provider "aws" {
version = "2.69.0"
region="us-east-1"
}

variable "username" {
  description = "DB username"
}

variable "password" {
  description = "DB password"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = "${var.username}"
  password             = "${var.password}"
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name = "rds-alphabeta-subnetgroup"
  vpc_security_group_ids = ["sg-ad15addb" ]
  skip_final_snapshot  = true
  multi_az             = false
}
