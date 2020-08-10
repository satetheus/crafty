resource "digitalocean_droplet" "minecraft_world" {
    image = "ubuntu-18-04-x64"
    name = "minecraftworld"
    region = "nyc2"
    size = "s-1vcpu-1gb"
    private_networking = true
    ssh_keys = [
        var.ssh_fingerprint
    ]

    connection {
        host = self.ipv4_address
        user = "root"
        type = "ssh"
        private_key = var.pvt_key
        timeout = "2m"
    }

  provisioner "remote-exec" {
      inline = [
        "echo 'I might use puppet or ansible to provision my server here'",
      ]
    }
}
