variable prox_token_secret {}
variable prox_user_token {
    default = "terraform@pve!terraform-token"
}

variable proxmox_api{
    default = "https://192.168.24.11:8006/api2/json"
}
variable ct_size {
    type    = string
    default = "8G"
}

variable vm_storage_location {
    default = "local-lvm"
}

variable hostname {
    default = "rocky-ct"
}
variable ct_count {
    default = "2"
}
variable vmpass {
    default = "demoremo"
}

variable target_node {
    default = "casa"
}

variable unprivileged_ct {
    default = true
}
variable template_ct {
    default = "local:vztmpl/rockylinux-9-default_20221109_amd64.tar.xz"
}

