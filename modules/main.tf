module "db" {
  identifier                          = "demodb"
  port                                = "5432"
  iam_database_authentication_enabled = true
  region                              = "us-east-1"
  vpc_id                              = "vpc-014c6a07c4d7787d7"
  vpc_security_group_ids              = ["sg-0a8853ae1f2511d01"]
  maintenance_window                  = "Mon:00:00-Mon:03:00"
  backup_window                       = "03:00-06:00"
  monitoring_interval                 = "30"
  monitoring_role_name                = "MyRDSMonitoringRole"
  create_monitoring_role              = true
  create_db_subnet_group              = true
  subnet_ids                          = ["subnet-0b5ed33dc727fefa7", "subnet-0b523ccf6483e0081", "subnet-0f316a92a44c6e1bc"]
  family                              = "default.postgres15"
  major_engine_version                = "default:postgres-15"
  deletion_protection                 = true
}