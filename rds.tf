# resource "aws_db_subnet_group" "rds_mysql" {
#   name       = "mysql"
#   subnet_ids = [ module.my_network.private_subnet_1_id , module.my_network.private_subnet_2_id]

#   tags = {
#     Name = "My_sql_subnet_group"
#   }
# }

# resource "aws_db_instance" "default" {
#   allocated_storage    = 10
#   db_name              = "mydb"
#   engine               = "mysql"
#   engine_version       = "5.7"
#   instance_class       = "db.t2.micro"
#   username             = var.db_user_name
#   password             = var.db_password
#   parameter_group_name = "default.mysql5.7"
#   skip_final_snapshot  = true
#   db_subnet_group_name = aws_db_subnet_group.rds_mysql.name
#   publicly_accessible = false
# }

# # data "aws_ssm_parameter" "rds_username" {
# #   name = "/dev/database/username"
# # }
# # data "aws_ssm_parameter" "rds_username" {
# #   name = "/dev/database/username"
# # }
# # username               = data.aws_ssm_parameter.rds_username.value