#cloud-config
package_update: true
package_upgrade: true
runcmd:
  - [ bash, -c, "apt-get update -y" ]
  - [ bash, -c, "apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release" ]
  - [ bash, -c, "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg" ]
  - [ bash, -c, 'echo \"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable\" > /etc/apt/sources.list.d/docker.list' ]
  - [ bash, -c, "apt-get update -y && apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin" ]
  - [ bash, -c, "usermod -aG docker ubuntu || true" ]
final_message: "Docker готовий. Можна деплоїти код."
