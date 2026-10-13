
# Imagen base de Ubuntu
FROM ubuntu:latest

# Evita preguntas durante la instalación
ARG DEBIAN_FRONTEND=noninteractive

# Instala Python, Git y Curl
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Directorio de trabajo
WORKDIR /workspace

# Descarga el repositorio
RUN git clone https://github.com/Ejazly/SDAct2026.git

# Mantiene el contenedor activo
CMD ["sleep", "infinity"]
