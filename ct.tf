resource "proxmox_lxc" "lxc-test" {
    count = var.ct_count
    features {
        nesting = true
    }
    rootfs {
    storage = var.vm_storage_location
    size    = var.ct_size
     }
    hostname   = "${var.hostname}-${count.index}"
    start      = true
    #onboot    = true
    nameserver = var.vm_dhcp == "dhcp" ? "dhcp" : var.nameserver
    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = var.vm_dhcp == "dhcp" ? "dhcp" : join(".", tolist([var.ip_addr_full,"${count.index + 10 }"]))
        #ip     = var.vm_dhcp == "dhcp" ? "dhcp" : var.ip_addr_full[count.index +10]/23
        ip6    = "dhcp"
        gw     = var.vm_dhcp == "dhcp" ? "dhcp" : var.gateway
    }
    ostemplate = var.template_ct
    password = var.vmpass
    target_node = var.target_node
    unprivileged = var.unprivileged_ct
}

