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

}


resource "aws_accessanalyzer_analyzer" "org_level" {
  depends_on    = [data.aws_organizations_organization.r-7plq]
  analyzer_name = "Terraformed-AsOrgLevelAccessAnalyzer"
  #arn           = "arn:aws:access-analyzer:us-east-1:132619814380:analyzer/ConsoleAnalyzer-5f9facca-fc40-4973-8cd2-9526136ad4be"
  #id            = "ConsoleAnalyzer-5f9facca-fc40-4973-8cd2-9526136ad4be"
  #tags          = local.common_tags
  type = "ORGANIZATION"
  tags = {
    yor_trace = "884c1fce-95de-4c0f-9ea0-24ab71cde426"
  }
}
