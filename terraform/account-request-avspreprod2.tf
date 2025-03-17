module "account_request_avs_preprod02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "saketh.chodimella.avspreprod02@panaceatechsolutions.com"
    AccountName               = "avs-preprod-account02"
    ManagedOrganizationalUnit = "Non-Production (ou-t0vx-1putc8kg)" 
    SSOUserEmail              = "preprod02@panaceatechsolutions.com"
    SSOUserFirstName          = "Account"
    SSOUserLastName           = "Manager"
  }

  account_tags = {
    "Acc:Owner"       = "sakethcr@gmail.com"
    "Acc:Division"    = "Accenture"
    "Acc:Environment" = "Preprod02"
    "Acc:CostCenter"  = "123456"
    "Acc:Vended"      = "true"
    "Acc:DivCode"     = "102"
    "Acc:BUCode"      = "ABC003"
    "Acc:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Saketh AFT Demo"
    change_reason       = "Demo AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "SANDBOX"
}