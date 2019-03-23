output "id" {
  description = "The unique identifier."
  value       = "${netlify_site.main.id}"
}

output "custom_domain" {
  description = "a custom domain name, must be configured using a cname in accordance with [netlify's docs](https://www.netlify.com/docs/custom-domains/)"
  value       = "${netlify_site.main.custom_domain}"
}

output "name" {
  description = "name of your site on netlify"
  value       = "${netlify_site.main.name}"
}
