terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.54.1"
    }
  }
}

provider "openstack" {
  auth_url         = var.auth_url
  user_name        = var.user_name
  password         = var.password
  tenant_name      = var.project_name
  user_domain_name = var.user_domain_name
  insecure         = true
}

resource "openstack_compute_instance_v2" "vm" {
  count       = 2
  name        = "terraform-vm-${count.index + 1}"
  image_name  = "cirros"
  flavor_name = "m1.tiny"

  network {
    name = "private-net"
  }
}
