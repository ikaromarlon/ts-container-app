locals {
  app_name = "typescript-aws-container-demo"
  app_shortName = "tsacd"

  ecr_repository_name = local.app_name

  ecs_cluster_name             = "${local.app_name}-cluster"
  ecs_task_famliy              = "${local.app_name}-task"
  ecs_task_name                = "${local.app_name}-task"
  ecs_task_execution_role_name = "${local.app_name}-task-execution-role"
  esc_service_name             = "${local.app_name}-service"

  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
  container_port     = 3000

  application_load_balancer_name = "${local.app_shortName}-alb"
  target_group_name              = "${local.app_shortName}-alb-tg"
}