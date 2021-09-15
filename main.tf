module "rds" {
    source  = "terraform-aws-modules/rds/aws"
    version = "~> 3.0"

    identifier = var.identifier
    
    allocated_storage = var.allocated_storage
    storage_type = var.storage_type
    storage_encrypted = var.storage_encrypted
    kms_key_id = var.kms_key_id
    
    replicate_source_db = var.replicate_source_db
    cross_region_replica = var.cross_region_replica
    
    engine = var.engine
    engine_version = var.engine_version
    skip_final_snapshot = var.skip_final_snapshot
    snapshot_identifier = var.snapshot_identifier
    copy_tags_to_snapshot = var.copy_tags_to_snapshot
    final_snapshot_identifier = var.final_snapshot_identifier
    final_snapshot_identifier_prefix = var.final_snapshot_identifier_prefix
    instance_class = var.instance_class
    
    name = var.database_name
    username = var.database_username
    password = var.database_password
    port = var.database_port
    
    vpc_security_group_ids = [aws_security_group.rds_sg.id]
    availability_zone = var.availability_zone
    multi_az = var.multi_az
    iops = var.iops
    publicly_accessible = var.publicly_accessible
    
    monitoring_interval = var.monitoring_interval
    monitoring_role_arn = var.monitoring_role_arn
    monitoring_role_name = var.monitoring_role_name
    create_monitoring_role = var.create_monitoring_role

    allow_major_version_upgrade = var.allow_major_version_upgrade
    auto_minor_version_upgrade = var.auto_minor_version_upgrade
    apply_immediately = var.apply_immediately
    maintenance_window = var.maintenance_window
    
    backup_retention_period = var.backup_retention_period
    backup_window = var.backup_window

    tags = var.tags

    create_db_subnet_group = var.create_db_subnet_group
    db_subnet_group_name = data.terraform_remote_state.central-vpc-dev.outputs.private_subnet_group_id
    db_subnet_group_use_name_prefix = var.db_subnet_group_use_name_prefix
    db_subnet_group_description = var.db_subnet_group_description
    subnet_ids = var.subnet_ids

    create_db_parameter_group = var.create_db_parameter_group
    parameter_group_name = format("%s-pgroup-%s", var.service_name, var.environment)
    parameter_group_use_name_prefix = var.parameter_group_use_name_prefix
    parameter_group_description = var.parameter_group_description
    family = var.parameter_group_family
    parameters = var.parameters

    create_db_option_group = var.create_db_option_group
    option_group_name = var.option_group_name
    option_group_use_name_prefix = var.option_group_use_name_prefix
    option_group_description = var.option_group_description
    major_engine_version = var.major_engine_version
    options = var.options

    enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports
    performance_insights_enabled = var.performance_insights_enabled
    performance_insights_retention_period = var.performance_insights_retention_period
    performance_insights_kms_key_id = var.performance_insights_kms_key_id

    create_random_password = var.create_random_password
}