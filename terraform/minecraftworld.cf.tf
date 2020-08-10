resource "digitalocean_record" "A-example" {
  domain = "minecraftworld.cf"
  type = "A"
  name = "crafty"
  value = digitalocean_droplet.minecraft_world.ipv4_address
}

resource "digitalocean_record" "CNAME-www" {
  domain = "minecraftworld.cf"
  type = "CNAME"
  name = "www"
  value = "@"
}
