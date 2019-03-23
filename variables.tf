variable "name" {
  type        = "string"
  description = "A friendly name for the netlify site."
}

variable "custom_domain" {
  type        = "string"
  description = "FQDN built using the zone domain and name."
}

variable "project" {
  type        = "string"
  description = "The integer that uniquely identifies the project within the gitlab install."
}
