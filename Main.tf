
provider "google" {
  credentials = file("account.json")
  project     = "shivaamiacadmey"
  region      = "asia-northeast2"
}

resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "n1-standard-1"
  zone         = "asia-northeast2-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1604-lts"
    }
  }
  network_interface {
    network = "default"
}
}
 # // Local SSD disk
 # scratch_disk {
 #   interface = "SCSI"
 # }


 #   access_config {
 #     // Ephemeral IP
 #   }
 # }

 # metadata = {
 #   foo = "bar"
 # }

 # metadata_startup_script = "echo hi > /test.txt"

 # service_account {
 #   scopes = ["userinfo-email", "compute-ro", "storage-ro"]
 # }
