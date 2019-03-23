# Terraform Netlify Gitlab CI/CD

Terraform module which creates a site on Netlify with the necessary variables for GitLab CI deployments.

These types of resources are supported:

* [Netlify Site](https://www.terraform.io/docs/providers/netlify/r/netlify_site.html)

## Usage

```hcl
module "cloudability" {
  source = "git::https://gitlab.com/infraprints/modules/netlify/gitlab-cicd.git?ref=master"

  name          = "my-netlify-website"
  custom_domain = "www.example.com"
  project       = "01234567"
}
```

## Examples

* [Basic Example](examples/basic)

## Notes

* Three GitLab CI Environment Variables (`NETLIFY_SITE_ID`, `NETLIFY_NAME`, `NETLIFY_CUSTOM_DOMAIN`)

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | A friendly name for the netlify site. | string | - | yes |
| custom_domain | FQDN built using the zone domain and name. | string | - | yes |
| project | The integer that uniquely identifies the project within the gitlab install. | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | The unique identifier. |
| name | Name of your site on netlify. |
| custom_domain | A custom domain name, must be configured using a cname in accordance with [netlify's docs](https://www.netlify.com/docs/custom-domains/). |