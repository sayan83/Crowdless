# Crowdless AWS Infrastructure Deployment

This terraform script deploys the Crowdless AWS Infrastructure automatically on any AWS account

## How to Run
* Add AWS Credentials in the main.tf file
* Initialize the provider with `terraform init` command
* Validate syntax with `terraform validate` command
* Try `terraform plan` to see the execution plan
* If satisfied proceed with `terraform apply` and confirm the generated plan by typing ***yes***

The necessary infrastructures are deployed in your AWS account

To delete all resources, run `terraform destroy` and approve the changes by typing ***yes***
