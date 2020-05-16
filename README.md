# Despliegue automático de una página web basada en Gatsby

Este repositorio contiene un conjunto de templates personalizables que pueden ser utilizadas para desplegar automáticamente un Servidor en Azure con Docker y un container con todo lo necesario para desplegar contenido web. Las plantillas están divididas en:

- Terraform modules que despliegan los componentes de la infraestructura como (Resource Group, Vnet, Subnet, VM) en Azure y luego llama al
- Ansible playbook que ejecutan los diferentes playbooks para instalar docker, crear una imagen basada en Node y crea un container con Gatsby instalado.

# TODO:

1. Clonar este repositorio:

    ```bash
    git clone https://github.com/santy8a/gatsby-blog.git
    ```

1. Cambiar al directorio para desplegar la template:

    ```bash
    cd gatsby-blog/deploy/vm/modules/single_node_ubuntu/
    ```

1. Ejecutando el despliegue

    ```bash
    terraform apply
    ```