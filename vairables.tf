resource "random_password" "master" {
  length           = 8
  special          = false
  min_lower        = 2
  min_numeric      = 2
  min_special      = 2
  min_upper        = 2
}

resource "aws_secretsmanager_secret" "password" {
  name = "kthamel-postgres-db-password"
}

resource "aws_secretsmanager_secret_version" "password" {
  secret_id     = aws_secretsmanager_secret.password.id
  secret_string = random_password.master.result
}
