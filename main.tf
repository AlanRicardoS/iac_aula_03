terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

module "ec2" {
  source   = "git::https://github.com/AlanRicardoS/modulo-ec2"
  ami      = var.ami
  counter  = var.counter
  instance = var.instance
}

module "rds" {
  source               = "git::https://github.com/AlanRicardoS/modulo-rds"
  allocated_storage    = var.allocated_storage
  db_name              = var.db_name
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = var.skip_final_snapshot
}

module "sqs" {
  source                    = "git::https://github.com/AlanRicardoS/module-sqs"
  name                      = var.name
  delay_seconds             = var.delay_seconds
  max_message_size          = var.max_message_size
  message_retention_seconds = var.message_retention_seconds
  receive_wait_time_seconds = var.receive_wait_time_seconds
  Environment               = var.Environment

}