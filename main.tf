resource "aws_db_instance" "kthamel-postgres" {
  identifier          = "kthamel-postgres"
  db_name             = "POSTGRES"
  username            = "dbuser"
  instance_class      = "db.t3.micro"
  engine              = "postgres"
  engine_version      = "15.3"
  allocated_storage   = 20
  password            = random_password.master.result
  publicly_accessible = true
  skip_final_snapshot = true

  provisioner "local-exec" {
    command = "mysql --host=${self.address} --port=${self.port} --user=${self.username} --password=${self.password} < ./schema.sql"
  }
}
