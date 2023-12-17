variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
}

variable "resource_group_name" {
  description = "The name of the resource group in which all resources in this example should be created."
}

variable "storage_account_name" {
  description = "The name of the storage account in which all resources in this example should be created."
}

variable "source_content" {
  description = "The content of the file to be uploaded."

}

variable "index_document" {
  description = "The name of the index document."
}