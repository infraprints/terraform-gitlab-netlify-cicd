output "id" {
  description = "The unique identifier."
  value       = "${netlify_site.main.id}"
}

output "name" {
  description = "Name of your site on netlify."
  value       = "${netlify_site.main.name}"
}

output "custom_domain" {
  description = "A custom domain name, must be configured using a cname in accordance with [netlify's docs](https://www.netlify.com/docs/custom-domains/)."
  value       = "${netlify_site.main.custom_domain}"
}
