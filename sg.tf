resource "aws_security_group" "rds_sg" {
  name        = format("%s-sg-%s", var.service_name, var.environment)
  description = format("%s %s security group", var.product_domain, var.service_role)
  vpc_id      = local.vpc_id

  tags = merge({
    Name        = format("%s-sg", var.service_name)
    Description = format("%s %s security group", var.product_domain, var.service_role)
    },
    local.default_tags
  )
}
