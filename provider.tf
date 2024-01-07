terraform {
  required_version = ">= 1.1.0"
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = ">= 2.9.5"
    }
  }
}

provider "proxmox" {
    pm_tls_insecure = true
    pm_api_url = var.proxmox_api
    pm_api_token_id = var.prox_user_token
    pm_api_token_secret = var.prox_token_secret
}

