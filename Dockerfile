FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV container=docker

RUN apt-get update && apt-get install -y \
    systemd \
    systemd-sysv \
    openssh-server \
    sudo \
    python3 \
    python3-pymysql \
    curl \
    gnupg \
    ca-certificates \
    mariadb-server \
    apache2 \
    php \
    php-mysqli \
    libapache2-mod-php \
    procps \
    && mkdir -p /run/sshd /run/mysqld \
    && useradd -m -s /bin/bash ansible \
    && echo "ansible ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ansible \
    && mkdir -p /home/ansible/.ssh \
    && rm -rf /var/lib/apt/lists/*

COPY id_ed25519.pub /home/ansible/.ssh/authorized_keys

RUN chown -R ansible:ansible /home/ansible/.ssh \
    && chmod 700 /home/ansible/.ssh \
    && chmod 600 /home/ansible/.ssh/authorized_keys

# Wazuh repository
RUN rm -f /etc/apt/sources.list.d/wazuh.list \
    /etc/apt/sources.list.d/wazuh.sources \
    /usr/share/keyrings/wazuh.asc \
    /usr/share/keyrings/wazuh.gpg \
    && curl -fsSL https://packages.wazuh.com/key/GPG-KEY-WAZUH \
       | gpg --dearmor -o /usr/share/keyrings/wazuh.gpg \
    && chmod 0644 /usr/share/keyrings/wazuh.gpg \
    && echo "deb [signed-by=/usr/share/keyrings/wazuh.gpg] https://packages.wazuh.com/4.x/apt/ stable main" \
       > /etc/apt/sources.list.d/wazuh.list

RUN apt-get update \
    && apt-get install -y wazuh-agent=4.9.0-1 \
    && rm -rf /var/lib/apt/lists/*

STOPSIGNAL SIGRTMIN+3

CMD ["/sbin/init"]
