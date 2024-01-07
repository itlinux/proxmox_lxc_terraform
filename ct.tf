resource "proxmox_lxc" "lxc-test" {
    count = var.ct_count
    features {
        nesting = true
    }
    rootfs {
    storage = var.vm_storage_location
    size    = var.ct_size
     }
    hostname = "${var.hostname}-${count.index}"
    start = true
    #onboot   = true
    network {
        name = "eth0"
        bridge = "vmbr0"
        ip = "dhcp"
        ip6 = "dhcp"
    }
    ostemplate = var.template_ct
    password = var.vmpass
    target_node = var.target_node
    unprivileged = var.unprivileged_ct
}

