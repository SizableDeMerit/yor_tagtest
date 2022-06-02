


locals {
  # Common tags to be assigned to all resources
  common_tags = {
    Team = local.Team
    Department   = local.Department
  }
}

locals {
  Team             = "Cloud SEC"
  Department        = "Security"
}