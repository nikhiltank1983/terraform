provider "aws" {
version = "2.69.0"
region="us-east-1"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name = "rds-alphabeta-subnetgroup"
  vpc_security_group_ids = ["sg-ad15addb" ]
  skip_final_snapshot  = true
  multi_az             = false
}
