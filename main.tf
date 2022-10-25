resource "yandex_vpc_network" "foo" {}

resource "yandex_vpc_subnet" "foo" {
  v4_cidr_blocks = ["10.2.0.0/16"]
  zone       = "ru-central1-a"
  network_id = "${yandex_vpc_network.foo.id}"
}
