data "aws_ssm_parameter" "gcp_priv" {
  provider = aws.aws

  name = "/gcp/project/priv"
}
