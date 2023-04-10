module "project_rds_p" {
  source = "./modules/rds-p"
  private_subnet_ids = module.vpc.private_subnet_ids
  vpc_id = module.vpc.vpc_id
  # availability_zones = ["us-east-2a","us-east-2b","us-east-2c"]
  # rds_instances_count = 2
  # rds_backup_retention_period = 5
}

module "project_rds_s" {
  source                  = "./modules/rds-s"
  primary_db_cluster_arn  = module.project_rds_p.db_cluster_arn
  providers = {
    aws = aws.usw1
  }
  private_subnet_ids = module.vpc_west.private_subnet_ids
  vpc_id = module.vpc_west.vpc_id
  # availability_zones = ["us-west-1a","us-west-1c"]
  # rds_instances_count = 2
  # rds_backup_retention_period = 5
}