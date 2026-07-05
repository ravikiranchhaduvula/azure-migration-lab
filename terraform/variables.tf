variable "subscription_id" {}

variable "location" {
  default = "Australia East"
}

variable "resource_group_name" {
  default = "migration-lab-rg-tf"
}

variable "acr_name" {
  default = "raviacrterraform26"
}

variable "service_plan_name" {
  default = "migration-lab-plan-tf"
}

variable "webapp_name" {
  default = "ravi-nginx-demo-tf2026"
}