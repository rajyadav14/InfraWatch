terraform {
  required_providers {
    linode={
        source = "linode/linode"
        version = "1.16.0"
    }
  }
}

provider "linode" {
  token = var.linode_token
}

# Create Linode instance for Nginx
resource "linode_instance" "nginx" {
  label     = "nginx-instance"
  image     = "linode/ubuntu18.04"
  region    = var.region
  type      = var.instance_type
  root_pass = var.root_password

  connection {
    type        = "ssh"
    user        = "root"
    password    = var.root_password  # Assuming you have a variable defined for the root password
    host        = self.ip_address
}


  provisioner "file" {
    source      = "scripts/setup-nginx.sh"
    destination = "/tmp/setup-nginx.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/setup-nginx.sh",
      "/tmp/setup-nginx.sh"
    ]
  }
}

# Create Linode instance for MySQL
resource "linode_instance" "mysql" {
  label     = "mysql-instance"
  image     = "linode/ubuntu18.04"
  region    = var.region
  type      = var.instance_type
  root_pass = var.root_password

  connection {
    type        = "ssh"
    user        = "root"
    password    = var.root_password  # Assuming you have a variable defined for the root password
    host        = self.ip_address
}


  provisioner "file" {
    source      = "scripts/setup-mysql.sh"
    destination = "/tmp/setup-mysql.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/setup-mysql.sh",
      "/tmp/setup-mysql.sh"
    ]
  }
}

# Create Linode instance for Prometheus
resource "linode_instance" "prometheus" {
  label     = "prometheus-instance"
  image     = "linode/ubuntu18.04"
  region    = var.region
  type      = var.instance_type
  root_pass = var.root_password

 connection {
    type        = "ssh"
    user        = "root"
    password    = var.root_password  # Assuming you have a variable defined for the root password
    host        = self.ip_address
}


  provisioner "file" {
    source      = "scripts/setup-prometheus.sh"
    destination = "/tmp/setup-prometheus.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/setup-prometheus.sh",
      "/tmp/setup-prometheus.sh"
    ]
  }
}

# Create Linode instance for Grafana
resource "linode_instance" "grafana" {
  label     = "grafana-instance"
  image     = "linode/ubuntu18.04"
  region    = var.region
  type      = var.instance_type
  root_pass = var.root_password

  connection {
    type        = "ssh"
    user        = "root"
    password    = var.root_password  # Assuming you have a variable defined for the root password
    host        = self.ip_address
}


  provisioner "file" {
    source      = "scripts/setup-grafana.sh"
    destination = "/tmp/setup-grafana.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/setup-grafana.sh",
      "/tmp/setup-grafana.sh"
    ]
  }
}

