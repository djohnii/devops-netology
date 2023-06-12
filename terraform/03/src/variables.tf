###cloud vars
variable "token" {
  type        = string
  default = "y0_AgAAAABGHZl6AATuwQAAAADNnX0XrCUaXEFgTYqInpRLfOfguXvwUhA"
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  default = "b1g2oimdo0tcbkf2e6kd"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default = "b1g14qkpbc62vbfql4fm"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}
variable "vm_web_compute_image_name" {
  type = string
  default = "ubuntu-2004-lts"
}
#variable "vms_ssh_root_key" {
#  type        = string
#  default = file("~/.ssh/id_rsa.pub")
#  description = "ssh-keygen -t ed25519"
#}

#variable "vm_instance" {
#  type = list(object({
#    name = string
#    cpu = number
#    memory = number
#    disk = number
#
#  }
#    ))
#  default = [{
#    name = "main"
#    cpu = 2
#    memory = 2
#    disk = 30
#  },
#    {
#      name = "replica"
#      cpu = 4
#      memory = 4
#      disk = 35
#    }]
#}