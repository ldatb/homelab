<div align="center">

<h1>
    <img align="center" width=400px src="assets/logo.svg">
</h1>

<div style="display:flex; justify-content:center; gap: 15px;">
    <img alt="Debian" width=30px src="https://www.debian.org/logos/openlogo-nd.svg">
    <img alt="Ansible" width=37px src="https://logos-download.com/wp-content/uploads/2016/10/Ansible_logo-700x700.png">
    <img alt="Helm" width=30px src="https://seeklogo.com/images/H/helm-logo-9208DB3EE5-seeklogo.com.png">
</div>

<h2>Cumulus Homelab</h2>

[![License](https://img.shields.io/badge/license-MIT-blue?style=flat-square&labelColor=000000)](#license)

</div>

# Overview
The project contains a set of helm charts and ansible playbooks used to setup (and manage) a personal homelab infrastructure. I don't use anything critical on it, only for learning, development and fun purposes.

## Features
* [ ] Automated bare metal provisioning with PXE boot
* [ ] Automated Kubernetes installation and management
* [ ] Installing and management of applications with GitOps
* [ ] Modular architecture
* [ ] Automated certificate management
* [ ] Expose services to the internet via CloudFlare and Route 53
* [ ] Hypervisor to create custom VMs
* [ ] Private container registry
* [ ] CI/CD platform

## Applications and services
To install an application, use `helm install <app-name> <app-dir> --values <app-values>`.

To install all the core applications (Homepage, Kimchi, Glances, Prometheus and Grafana) you can use the core-apps Ansible playbook (WIP).

### Hosted Applications
* [ ] NextCloud
* [ ] Immich
* [ ] Paperless-NGX
* [ ] TrueNAS Core
* [ ] BitWarden
* [ ] Gitea
* [ ] Jenkins
* [ ] Kopia
* [ ] PrivateBin

### Hosted Services
* [x] Homepage
* [ ] Kimchi
* [ ] Glances
* [ ] Harbor
* [ ] Grafana + Prometheus
* [ ] Unbound
* [ ] DDNS-Route53
* [ ] ExternalDNS
* [ ] Cert-manager
* [ ] Uptime Kuma

## Hardware:
For the moment, this is a single-node kubernetes cluster, so I recommend you have at least 8GB of RAM and 8 CPUs.
It is nice to have at least 512 GB of disk space.

## Setup
```
ansible-playbook ./ansible/bootstrap.yml -u admin --private-key <keypair-file> -i ./ansible/inventory 
```
Use the `--ask-pass` option if you're not using a key pair. NOT RECOMMENDED. This can be insecure if you're exposing your server to the internet. To understand how to setup an SSH key, check https://www.cyberciti.biz/faq/how-to-set-up-ssh-keys-on-linux-unix/

## Tech Stack
<table>
    <tr>
        <th>Logo</th>
        <th>Name</th>
        <th>Description</th>
    </tr>
    <tr>
        <th><img width="32" style="display:flex; justify-content: center;" src="https://logos-download.com/wp-content/uploads/2016/10/Ansible_logo-700x700.png"></th>
        <th>Ansible</th>
        <th>Automate bare metal provisioning and configuration</th>
    </tr>
    <tr>
        <th><img width="32" style="display:flex; justify-content: center;" src="https://seeklogo.com/images/H/helm-logo-9208DB3EE5-seeklogo.com.png"></th>
        <th>Helm</th>
        <th>The package manager for Kubernetes</th>
    </tr>
    <tr>
        <th><img width="32" style="display:flex; justify-content: center;" src="https://www.freelogovectors.net/wp-content/uploads/2019/02/kvm-logo.png"></th>
        <th>KVM/QEMU</th>
        <th>Machine emulator and virtualizer</th>
    </tr>
    <tr>
        <th><img width="32" style="display:flex; justify-content: center;" src="https://raw.githubusercontent.com/benphelps/homepage/main/images/banner_light%402x.png"></th>
        <th>Homepage</th>
        <th>Homepage for the services and applications</th>
    </tr>
    <tr>
        <th><img width="32" style="display:flex; justify-content: center;" src="https://www.freelogovectors.net/svg03/cloudflare-logo.svg"></th>
        <th>CloudFlare</th>
        <th>DNS and tunnel</th>
    </tr>
    <tr>
        <th><img width="32" style="display:flex; justify-content: center;" src="https://raw.githubusercontent.com/crazy-max/ddns-route53/master/.github/ddns-route53.png"></th>
        <th>DDNS-Route53</th>
        <th>Dynamic DNS service for AWS Route 53</th>
    </tr>
    <tr>
        <th><img width="32" style="display:flex; justify-content: center;" src="https://raw.githubusercontent.com/kubernetes-sigs/external-dns/master/docs/img/external-dns.png"></th>
        <th>ExternalDNS</th>
        <th>Synchronizes exposed Kubernetes Services and Ingresses with DNS providers</th>
    </tr>
    <tr>
        <th><img width="32" style="display:flex; justify-content: center;" src="https://avatars.githubusercontent.com/u/1412239?s=200&v=4"></th>
        <th>Nginx</th>
        <th>Kubernetes ingress controller</th>
    </tr>
    <tr>
        <th><img width="32" style="display:flex; justify-content: center;" src="https://raw.githubusercontent.com/cert-manager/cert-manager/d53c0b9270f8cd90d908460d69502694e1838f5f/logo/logo-small.png"></th>
        <th>Cert-manager</th>
        <th>X.509 certificate management for Kubernetes</th>
    </tr>
    <tr>
        <th><img width="32" style="display:flex; justify-content: center;" src="https://goharbor.io/img/logos/harbor-icon-color.png"></th>
        <th>Harbor</th>
        <th>Kubernetes registry</th>
    </tr>
    <tr>
        <th><img width="32" style="display:flex; justify-content: center;" src="https://docs.checkmk.com/latest/images/grafana_logo.png"></th>
        <th>Grafana</th>
        <th>Analytics & Monitoring applications</th>
    </tr>
    <tr>
        <th><img width="32" style="display:flex; justify-content: center;" src="https://www.freelogovectors.net/wp-content/uploads/2021/02/prometheus-logo-freelogovectors.net_.png"></th>
        <th>Prometheus</th>
        <th>Application monitoring database for Grafana</th>
    </tr>
    <tr>
        <th><img width="32" style="display:flex; justify-content: center;" src="https://wiki.deimos.fr/images/9/9c/Glances-logo.png"></th>
        <th>Glances</th>
        <th>System monitoring tool</th>
    </tr>
    <tr>
        <th><img width="32" style="display:flex; justify-content: center;" src="https://pbs.twimg.com/profile_images/1055543716201615365/geMDWaHV_400x400.jpg"></th>
        <th>Healthchecks</th>
        <th>Cron job monitoring</th>
    </tr>
    <tr>
        <th><img width="32" style="display:flex; justify-content: center;" src="https://raw.githubusercontent.com/kimchi-project/kimchi/master/ui/images/kimchi.svg"></th>
        <th>Kimchi</th>
        <th>Dashboard for KVM instances</th>
    </tr>
    <tr>
        <th><img width="32" style="display:flex; justify-content: center;" src="https://www.pinclipart.com/picdir/big/519-5196913_apache-guacamole-logo-clipart.png"></th>
        <th>Guacamole</th>
        <th>Remote desktop gateway</th>
    </tr>
    <tr>
        <th><img width="32" style="display:flex; justify-content: center;" src="https://uptime.kuma.pet/img/icon.svg"></th>
        <th>Uptime Kuma</th>
        <th>Continuously track your internet speed</th>
    </tr>
</table>

# Roadmap
**STATUS: Alpha**

### Released
- Automated controller set up (QEMU/KVM, Docker, Kubernetes)

### Planned for next release
- Automated minimal setup (k3s or microk8s)
- Automated cluster creation
- Automated application deployment
- Automated DNS management
- Observability
  - Applications monitoring
  - System monitoring
  - CRON jobs monitoring
  - Logging
  - Alerting
- Core applications
  - TrueNAS Core
  - Homepage
  - Kimchi
  - Uptime Kuma

### Planned for future releases
- Automated bare metal provisioning (PXE Boot)
- Automated certificate management
- Private container registry
- Expose services to the internet with CloudFlare and Route 53
- Single command to deploy all apps
- Applications
  - NextCloud
  - Immich
  - Paperless-NGX
  - BitWarden
  - Kopia
  - Jenkins
  - Gitea
  - PrivateBin

### Unplanned
- Serverless
- Multi-node K8s cluster
- Cluster API
- Migrate to StarlingX
- RAID

# License
Copyright &copy; 2022 Lucas de Ataides

This project is licensed under the MIT License. See `LICENSE.md` file for more information.

# References
* [Khue's Homelab](https://github.com/khuedoan/homelab)
* [Self Hosting Guide](https://github.com/mikeroyal/Self-Hosting-Guide)
* [Lento's Homelab](https://github.com/lento234/homelab)
* [Ansible for DevOps Examples](https://github.com/geerlingguy/ansible-for-devops)
* [Ansible NAS](https://github.com/davestephens/ansible-nas)
* [Awesome-Selfhosted](https://github.com/awesome-selfhosted/awesome-selfhosted)

