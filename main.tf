resource "netlify_site" "main" {
  name          = "${var.name}"
  custom_domain = "${var.custom_domain}"
}

resource "gitlab_project_variable" "site_id" {
  project   = "${var.project}"
  key       = "NETLIFY_SITE_ID"
  value     = "${netlify_site.main.id}"
  protected = true
}

resource "gitlab_project_variable" "custom_domain" {
  project   = "${var.project}"
  key       = "NETLIFY_CUSTOM_DOMAIN"
  value     = "${netlify_site.main.custom_domain}"
  protected = true
}

resource "gitlab_project_variable" "name" {
  project   = "${var.project}"
  key       = "NETLIFY_NAME"
  value     = "${netlify_site.main.name}"
  protected = true
}
