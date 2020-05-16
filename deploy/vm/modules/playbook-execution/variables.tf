variable "username" {
  description = "Nombre del usuario para la VM"
}

variable "password" {
  description = "Password para la VM"
}

variable "dns_label" {
  description = "DNS name para la Ip pública que se completará para formar el fqdn. Ejm: miblog >> miblog.northeurope.cloudapp.azure.com"
}

variable "ansible_playbook_path" {
  description = "path del playbook para el despliegue"
}

variable "vm_id" {
  description = "id de la vm para empezar la ejecución de ansible"
}

