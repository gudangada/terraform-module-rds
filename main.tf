module "rds" {
    source  = "terraform-aws-modules/rds/aws"
    version = "~> 3.0"

    identifier = variable.identifier
    
    allocated_storage = variable.allocated_storage
    storage_type = variable.storage_type
    storage_encrypted = variable.storage_encrypted
    kms_key_id = variable.kms_key_id
    
    replicate_source_db = variable.replicate_source_db
    cross_region_replica = variable.cross_region_replica
    
    engine = variable.engine
    engine_version = variable.engine_version
    skip_final_snapshot = variable.skip_final_snapshot
    snapshot_identifier = variable.snapshot_identifier
    copy_tags_to_snapshot = variable.copy_tags_to_snapshot
    final_snapshot_identifier = variable.final_snapshot_identifier
    final_snapshot_identifier_prefix = variable.final_snapshot_identifier_prefix
    instance_class = variable.instance_class
    
    name = variable.database_name
    username = variable.database_username
    password = variable.database_password
    port = variable.database_port
    
    vpc_security_group_ids = variable.vpc_security_group_ids
    availability_zone = variable.availability_zone
    multi_az = variable.multi_az
    iops = variable.iops
    publicly_accessible = variable.publicly_accessible
    
    monitoring_interval = variable.monitoring_interval
    monitoring_role_arn = variable.monitoring_role_arn
    monitoring_role_name = variable.monitoring_role_name
    create_monitoring_role = variable.create_monitoring_role

    allow_major_version_upgrade = variable.allow_major_version_upgrade
    auto_minor_version_upgrade = variable.auto_minor_version_upgrade
    apply_immediately = variable.apply_immediately
    maintenance_window = variable.maintenance_window
    
    backup_retention_period = variable.backup_retention_period
    backup_window = variable.backup_window

    tags = variable.tags

    create_db_subnet_group = variable.create_db_subnet_group
    db_subnet_group_name = variable.db_subnet_group_name
    db_subnet_group_use_name_prefix = variable.db_subnet_group_use_name_prefix
    db_subnet_group_description = variable.db_subnet_group_description
    subnet_ids = variable.subnet_ids

    create_db_parameter_group = variable.create_db_parameter_group
    parameter_group_name = variable.parameter_group_name
    parameter_group_use_name_prefix = variable.parameter_group_use_name_prefix
    parameter_group_description = variable.parameter_group_description
    family = variable.family
    parameters = variable.parameters

    create_db_option_group = variable.create_db_option_group
    option_group_name = variable.option_group_name
    option_group_use_name_prefix = variable.option_group_use_name_prefix
    option_group_description = variable.option_group_description
    major_engine_version = variable.major_engine_version
    options = variable.options

    enabled_cloudwatch_logs_exports = variable.enabled_cloudwatch_logs_exports
    performance_insights_enabled = variable.performance_insights_enabled
    performance_insights_retention_period = variable.performance_insights_retention_period
    performance_insights_kms_key_id = variable.performance_insights_kms_key_id

    create_random_password = variable.create_random_password
}