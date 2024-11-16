terraform {
    required_providers {
        docker = {
            source = "kreuzwerker/docker"  # Proveedor para Docker
            version = "~> 2.0"             # Especificar la versión correcta
        }
    }
}

# Configuración del proveedor Docker para Windows
provider "docker" {
    host = "npipe://./pipe/docker_engine"  # Pipe de Docker en Windows
}

# Recurso para clonar el repositorio con Git
resource "null_resource" "clone_repo" {
    provisioner "local-exec" {
        command = "git clone https://github.com/erc83/holamundo-docker.git ${path.module}/app"  # Cambia la URL del repositorio
    }
}

# Ejecutar Docker Compose después de clonar el repositorio
resource "null_resource" "docker_compose_up" {
    depends_on = [null_resource.clone_repo]

    provisioner "local-exec" {
        command = "docker-compose -f ${path.module}/docker-compose.yml up -d"
        working_dir = "${path.module}"  # Ruta donde se encuentra el archivo docker-compose.yml
    }
}