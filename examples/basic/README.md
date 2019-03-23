# Basic Usage

This folder shows an example of Terraform code to deploy the GitLab variables for a Netlify website.

## Usage

To run this example you need to execute:

```bash
terraform init
terraform plan -var domain=example.com
terraform apply -var domain=example.com
```

Note that this example may create resources which can cost money. Run `terraform destroy` when you don't need these resources.

## Notes

* The module requires DNS to validate the certificate, which can take up to 30minutes to propagate.
* The default timeout is `45m` for the `aws_acm_certificate_validation` resource