output "fqdn" {
    value = azurerm_public_ip.myterraformpublicip.fqdn
    description = "Devuelve el fqdn de la vm"
}