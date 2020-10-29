variable "website-domain-main" {
  description = "Main website domain, e.g. cloudmaniac.net"
  type        = string
}

variable "website-domain-redirect" {
  description = "Secondary FQDN that will redirect to the main URL, e.g. www.cloudmaniac.net"
  default     = null
  type        = string
}

variable "lambda-exec-role-cloudfront-redirect-name" {
  description = <<EOF
                The name of the Cloudfront 'redirect' Lambda execution role.
                Only set this if you manage more than one site with this module.
                EOF
  default     = "LambdaExecRoleCloudFrontRedirect"
  type        = string
}

variable "website-lambda-redirect-folder-index-name" {
  description = <<EOF
                The name of the Websites Lambda for re-directing to indexes.
                Only set this if you manage more than one site with this module.
                EOF
  default     = "cloudfront-folder-index-redirect"
  type        = string
}
