module "example" {
  source = "git::https://gitlab.com/infraprints/modules/netlify/gitlab-cicd.git?ref=master"

  name          = "infraprints-co"
  custom_domain = "dev.infraprints.co"
  project       = 11456556
}
