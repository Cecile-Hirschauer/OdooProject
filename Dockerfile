FROM odoo:17.0

USER root

# Installer les dépendances de développement supplémentaires si nécessaire
RUN apt-get update && apt-get install -y \
    git \
    python3-dev \
    libldap2-dev \
    libsasl2-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Définir le répertoire de travail
WORKDIR /mnt/extra-addons

USER odoo