locals {
  ecr_repository_name = "typescript-aws-container-demo"

  ecs_cluster_name             = "tsacd-cluster"
  ecs_task_famliy              = "tsacd-task"
  ecs_task_name                = "tsacd-task"
  ecs_task_execution_role_name = "tsacd-task-execution-role"
  esc_service_name             = "tsacd-service"

  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
  container_port     = 3000

  application_load_balancer_name = "tsacd-alb"
  target_group_name              = "tsacd-alb-tg"
}