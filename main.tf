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

  # tags = merge(local.common_tags, {
  #   yor_trace = "8c9fceac-da3b-4c9d-9991-db61b665ea00"
  # })

  tags = {
    yor_trace            = "cf314b13-6c92-48f1-9a5a-8e29eec0a327"
    git_commit           = "18ae04308c86227973cc20a889811590c9d8c208"
    git_file             = "main.tf"
    git_last_modified_at = "2022-06-02 15:23:29"
    git_last_modified_by = "sized-demerit-0u@icloud.com"
    git_modifiers        = "102994153+SizableDeMerit/sized-demerit-0u"
    git_org              = "SizableDeMerit"
    git_repo             = "yor_tagtest"
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
    yor_trace            = "884c1fce-95de-4c0f-9ea0-24ab71cde426"
    git_commit           = "9d431a68b25e187fd937e43c1a76b181d96a4d95"
    git_file             = "main.tf"
    git_last_modified_at = "2022-05-26 20:38:09"
    git_last_modified_by = "102994153+SizableDeMerit@users.noreply.github.com"
    git_modifiers        = "102994153+SizableDeMerit"
    git_org              = "SizableDeMerit"
    git_repo             = "yor_tagtest"
  }
}
