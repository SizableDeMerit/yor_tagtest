locals {
  # Common tags to be assigned to all resources
  common_tags = {
    Team = local.team
    Department   = local.department
  }
}