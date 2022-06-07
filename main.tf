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
  tags = merge(local.common_tags, {
    yor_trace = "6d73b702-ff6e-4ef1-93d9-45f33f1ab71f"
    }, {
    git_commit           = "9d431a68b25e187fd937e43c1a76b181d96a4d95"
    git_file             = "main.tf"
    git_last_modified_at = "2022-05-26 20:38:09"
    git_last_modified_by = "102994153+SizableDeMerit@users.noreply.github.com"
    git_modifiers        = "102994153+SizableDeMerit"
    git_org              = "SizableDeMerit"
    git_repo             = "yor_tagtest"
  })
  type = "ACCOUNT"
}


resource "aws_accessanalyzer_analyzer" "org_level" {
  depends_on    = [data.aws_organizations_organization.r-7plq]
  analyzer_name = "Terraformed-AsOrgLevelAccessAnalyzer"
  #arn           = "arn:aws:access-analyzer:us-east-1:132619814380:analyzer/ConsoleAnalyzer-5f9facca-fc40-4973-8cd2-9526136ad4be"
  #id            = "ConsoleAnalyzer-5f9facca-fc40-4973-8cd2-9526136ad4be"
  tags = merge(local.common_tags, {
    yor_trace = "4985921e-7f03-49f3-ab0c-f1037ddc1c23"
    }, {
    git_commit           = "9d431a68b25e187fd937e43c1a76b181d96a4d95"
    git_file             = "main.tf"
    git_last_modified_at = "2022-05-26 20:38:09"
    git_last_modified_by = "102994153+SizableDeMerit@users.noreply.github.com"
    git_modifiers        = "102994153+SizableDeMerit"
    git_org              = "SizableDeMerit"
    git_repo             = "yor_tagtest"
  })
  type = "ORGANIZATION"
}
