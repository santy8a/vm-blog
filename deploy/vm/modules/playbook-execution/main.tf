# This is how we call Ansible and pass in variables from Terraform.
resource null_resource "ansible_execute" {
  provisioner "local-exec" {
    command = <<EOT
    sleep 2m
    OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES \
    ANSIBLE_HOST_KEY_CHECKING="False" \
    ansible-playbook --inventory '${var.dns_label}', \
    -c paramiko -u '${var.username}' \
    --extra-vars="{ \"ansible_password\": \"${var.password}\", \
    \"azure_instance_ip\": \"${var.dns_label}\", \
    \"user_docker\": \"${var.username}\"}" ${var.ansible_playbook_path} -vvv
     EOT
  }
  triggers = {
    "before" = "${var.vm_id}"
 }
}
