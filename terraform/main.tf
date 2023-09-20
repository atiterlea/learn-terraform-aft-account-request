module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "grizzacca+sandbox@gmail.com"
    AccountName               = "Sandbox"
    ManagedOrganizationalUnit = "Development"
    SSOUserEmail              = "grizzacca@gmail.com"
    SSOUserFirstName          = "Andrei"
    SSOUserLastName           = "Titerlea"
  }

  account_tags = {
    "Environment" = "Development"
    "Workstream" = "RnD"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "development"
  }

  account_customizations_name = "sandbox"
}

module "infra" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "grizzacca+infra@gmail.com"
    AccountName               = "Global Infra"
    ManagedOrganizationalUnit = "Development"
    SSOUserEmail              = "grizzacca@gmail.com"
    SSOUserFirstName          = "Andrei"
    SSOUserLastName           = "Titerlea"
  }

  account_tags = {
    "Environment" = "Development"
    "Workstream" = "Infra"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "development"
  }

  account_customizations_name = "infra"
}