// Создание бакета с использованием ключа
resource "yandex_storage_bucket" "aleksandr-molokov-01-10-2023" {
  access_key = var.sa-access-key
  secret_key = var.sa-secret-key
  bucket     = "aleksandr-molokov-01-10-2023"
  max_size   = 1048576
  acl        = "public-read"
  force_destroy = "true"
  website {
    index_document = "index.html"
  }
 }


// Создание объекта в бакете
resource "yandex_storage_object" "my-object" {
  access_key = var.sa-access-key
  secret_key = var.sa-secret-key
  bucket     = "aleksandr-molokov-01-10-2023"
  key        = "photo.jpg"
  source     = "./15.2/photo.jpg"
  acl        = "public-read"
  depends_on = [
    yandex_storage_bucket.aleksandr-molokov-01-10-2023
  ]
}

