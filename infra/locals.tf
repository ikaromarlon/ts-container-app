locals {
  ecr_repository_name = "typescript-aws-container-demo"

  ecs_cluster_name             = "typescript-aws-container-demo-cluster"
  ecs_task_famliy              = "typescript-aws-container-demo-task"
  ecs_task_name                = "typescript-aws-container-demo-task"
  ecs_task_execution_role_name = "typescript-aws-container-demo-task-execution-role"
  esc_service_name             = "typescript-aws-container-demo-service"

  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
  container_port     = 3000

  application_load_balancer_name = "typescript-aws-container-demo-alb"
  target_group_name              = "typescript-aws-container-demo-alb-tg"
}