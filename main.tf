terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }


  required_version = ">= 0.13"
}

provider "yandex" {
  token     = var.key1
  cloud_id  = var.cloud_id1
  folder_id = var.folder_id1
  zone      = "ru-central1-a"
}

resource "yandex_vpc_network" "foo" {
  name = "test"

}

resource "yandex_vpc_subnet" "foo" {
  v4_cidr_blocks = ["10.2.0.0/16"]
  zone       = "ru-central1-a"
  network_id = "${yandex_vpc_network.foo.id}"
  name = "test_subnet"
}
