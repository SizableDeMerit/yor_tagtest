# resource "aws_organizations_organization" "r-7plq" {
#   aws_service_access_principals = ["access-analyzer.amazonaws.com"]
# }
#
# resource "aws_accessanalyzer_analyzer" "account_level" {
#   depends_on = [aws_organizations_organization.r-7plq]

#   analyzer_name = "ConsoleAnalyzer-5f9facca-fc40-4973-8cd2-9526136ad4be"
#   type          = "ACCOUNT"
# }
#
#
data "aws_organizations_organization" "r-7plq" {}

resource "aws_accessanalyzer_analyzer" "account_level" {
  depends_on    = [data.aws_organizations_organization.r-7plq]
  analyzer_name = "Terraformed-AsAcountLevelAccessAnalyzer"
  #arn           = "arn:aws:access-analyzer:us-east-1:132619814380:analyzer/ConsoleAnalyzer-5f9facca-fc40-4973-8cd2-9526136ad4be"
  #id            = "ConsoleAnalyzer-5f9facca-fc40-4973-8cd2-9526136ad4be"
  #tags           = local.common_tags
  type = "ACCOUNT"
  tags = {
    git_commit           = "9d431a68b25e187fd937e43c1a76b181d96a4d95"
    git_file             = "main.tf"
    git_last_modified_at = "2022-05-26 20:38:09"
    git_last_modified_by = "102994153+SizableDeMerit@users.noreply.github.com"
    git_modifiers        = "102994153+SizableDeMerit"
    git_org              = "SizableDeMerit"
    git_repo             = "yor_tagtest"
    yor_trace            = "fb00fbe3-385d-474b-a0a0-8e0b3bdd1030"
  }
}


resource "aws_accessanalyzer_analyzer" "org_level" {
  depends_on    = [data.aws_organizations_organization.r-7plq]
  analyzer_name = "Terraformed-AsOrgLevelAccessAnalyzer"
  #arn           = "arn:aws:access-analyzer:us-east-1:132619814380:analyzer/ConsoleAnalyzer-5f9facca-fc40-4973-8cd2-9526136ad4be"
  #id            = "ConsoleAnalyzer-5f9facca-fc40-4973-8cd2-9526136ad4be"
  #tags          = local.common_tags
  type = "ORGANIZATION"
  tags = {
    git_commit           = "9d431a68b25e187fd937e43c1a76b181d96a4d95"
    git_file             = "main.tf"
    git_last_modified_at = "2022-05-26 20:38:09"
    git_last_modified_by = "102994153+SizableDeMerit@users.noreply.github.com"
    git_modifiers        = "102994153+SizableDeMerit"
    git_org              = "SizableDeMerit"
    git_repo             = "yor_tagtest"
    yor_trace            = "7d215f85-0c42-4405-9709-64c5a76f95b9"
  }
}
