resource "aws_db_instance" "kthamel-postgres" {
  identifier          = "kthamel-postgres"
  db_name             = "POSTGRES"
  username            = "userdba"
  instance_class      = "db.t3.micro"
  engine              = "postgres"
  engine_version      = "15.3"
  allocated_storage   = 20
  password            = random_password.master.result
  publicly_accessible = true
  skip_final_snapshot = true
}