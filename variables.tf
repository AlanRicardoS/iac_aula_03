# Variaveis do EC2
variable "ami" {
  default = "ami-00c39f71452c08778"
}
variable "instance" {
  default = "t2.micro"
}
variable "counter" {
  default = "1"
}

# Variaveis do RDS
variable "db_name" {
  default = "mydb"
}

variable "allocated_storage" {
  default = 10
}

variable "engine" {
  default = "mysql"
}

variable "engine_version" {
  default = "5.7"
}

variable "instance_class" {
  default = "db.t3.micro"
}

variable "username" {
  default = "foo"
}

variable "password" {
  default = "SenhaSuperComplexa123"
}

variable "parameter_group_name" {
  default = "default.mysql5.7"
}

variable "skip_final_snapshot"{
  default = true
}
# Variaveis do SQS
variable "name" {
  default = "terraform-example-queue"
}

variable "delay_seconds" {
  default = 90
}

variable "max_message_size" {
  default = 2048
}

variable "message_retention_seconds" {
  default = 86400
}

variable "receive_wait_time_seconds" {
  default = 10
}

variable "Environment" {
  default = "production"
}

variable "maxReceiveCount" {
  default = 4
}

variable "name-queue" {
  default = "terraform-example-deadletter-queue"
}

variable "redrivePermission" {
  default = "byQueue"
}
