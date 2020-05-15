# This is how we call Ansible and pass in variables from Terraform.
resource null_resource "install_docker" {
  provisioner "local-exec" {
    command = <<EOT
    OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES \
    ANSIBLE_HOST_KEY_CHECKING="False" \
    ansible-playbook --inventory '${var.dns_label}', \
    -m ping -c paramiko -u '${var.username}' \
    --extra-vars="{ \"ansible_password\": \"${var.password}\"}" ${var.ansible_playbook_path}
     EOT
  }
}
