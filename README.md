# Cumulus Homelab

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
![Last Commit](https://img.shields.io/github/last-commit/ldatb/cumulus-homelab?style=flat-square)

</div>

## Introduction

The project contains a set of helm charts and ansible playbooks used to setup (and manage) a personal homelab infrastructure. I don't use anything critical on it, only for learning, development and fun purposes.

### Features

* [ ] Automated bare metal provisioning with PXE boot
* [x] Automated Kubernetes installation and management
* [x] Installing and management of applications with GitOps
* [x] Modular architecture
* [ ] Automated certificate management
* [ ] Expose services to the internet via CloudFlare and Route 53
* [ ] Hypervisor to create custom VMs
* [ ] Private container registry
* [ ] CI/CD platform

### Applications and services

To install an application, use `helm install <app-name> <app-dir> --values <app-values>`.

Before installing any application, I recommend having a look at the values.yaml file of it's Helm folder.

For a complete explanation of the applications, check [APPS_AND_SERVICES.md](APPS_AND_SERVICES.md)

### Hosted Applications

* [ ] [NextCloud](https://github.com/nextcloud/server)
* [ ] [Immich](https://github.com/immich-app/immich)
* [ ] [Paperless-NGX](https://github.com/paperless-ngx/paperless-ngx)
* [ ] [TrueNAS Core](https://www.truenas.com/download-truenas-core/)
* [ ] [BitWarden](https://github.com/bitwarden/server)
* [ ] [Gitea](https://gitea.io/en-us/)
* [ ] [Jenkins](https://www.jenkins.io/)
* [ ] [Kopia](https://kopia.io/)
* [ ] [PrivateBin](https://privatebin.info/)

### Hosted Services

* [x] [Homepage](https://github.com/benphelps/homepage)
* [x] [Cockpit](https://github.com/cockpit-project/cockpit)
* [x] [Glances](https://github.com/nicolargo/glances)
* [ ] [Harbor](https://goharbor.io/)
* [x] [Grafana](https://grafana.com/) + [Prometheus](https://prometheus.io/)
* [ ] [Unbound](https://github.com/NLnetLabs/unbound)
* [ ] [ExternalDNS](https://github.com/kubernetes-sigs/external-dns)
* [ ] [Cert-manager](https://cert-manager.io/)
* [ ] [Uptime Kuma](https://github.com/louislam/uptime-kuma)

## Hardware

For the moment, this is a simple single-node kubernetes cluster, so I recommend you have at least 8GB of RAM and 8 CPUs.
Since (for the time being) this is a very simple project, there's no requirements for fancy equipment. The only thing I'd recommend is having a powerful internet connection, router and cables. Things can get wild...
It is nice to have at least 512 GB of disk space.

## Setup

```BASH
ansible-playbook ./ansible/bootstrap.yml -i ./ansible/inventory 
```

**Update the group_vars/all.yml file before running the playbook**

**WARNING:** A new user (named cumulus) will be created to hold the data files for all applications of this project. You need to specify the public key that will be assigned to this new user. This user will not have any special permissions or groups, neither will it have kubectl access.

To understand how to create an SSH key, [check this article](https://www.cyberciti.biz/faq/how-to-set-up-ssh-keys-on-linux-unix/) (you only need to create the key, the Ansible playbook will add it to the user).

Remember to edit the group_vars file to specify the full path the public key (Example: /home/your-user/.ssh/your-key.pub)

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
        <th><img width="32" style="display:flex; justify-content: center;" src="https://www.freelogovectors.net/svg03/cloudflare-logo.svg"></th>
        <th>CloudFlare</th>
        <th>DNS and tunnel</th>
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
    </tr>
    <tr>
        <th><img width="32" style="display:flex; justify-content: center;" src="https://www.pinclipart.com/picdir/big/519-5196913_apache-guacamole-logo-clipart.png"></th>
        <th>Guacamole</th>
        <th>Remote desktop gateway</th>
    </tr>
</table>

## Roadmap

**STATUS: Alpha**

This project is still in the experimental stage, and I don't use anything critical on it. Expect breaking changes that may require a complete redeployment.

### Released

* Automated controller set up (QEMU/KVM, Docker, Kubernetes)

### Planned for next release

* Automated minimal setup (k3s or microk8s)
* Automated cluster creation
* Automated application deployment
* Automated DNS management
* Observability
  * Applications monitoring
  * System monitoring
  * CRON jobs monitoring
  * Logging
  * Alerting
* Core applications
  * TrueNAS Core
  * Homepage
  * Cockpit
  * Uptime Kuma

### Planned for future releases

* Automated bare metal provisioning (PXE Boot)
* Automated certificate management
* Private container registry
* Expose services to the internet with CloudFlare and Route 53
* Single command to deploy all apps
* Applications
  * NextCloud
  * Immich
  * Paperless-NGX
  * BitWarden
  * Kopia
  * Jenkins
  * Gitea
  * PrivateBin

### Unplanned

* Serverless
* Multi-node K8s cluster
* Cluster API
* Migrate to StarlingX
* RAID

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## License

Copyright &copy; 2022 Lucas de Ataides

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

## References

* [Khue's Homelab](https://github.com/khuedoan/homelab)
* [Self Hosting Guide](https://github.com/mikeroyal/Self-Hosting-Guide)
* [Lento's Homelab](https://github.com/lento234/homelab)
* [Ansible for DevOps Examples](https://github.com/geerlingguy/ansible-for-devops)
* [Ansible NAS](https://github.com/davestephens/ansible-nas)
* [Awesome-Selfhosted](https://github.com/awesome-selfhosted/awesome-selfhosted)
