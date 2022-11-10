.POSIX:
.PHONY: *
.EXPORT_ALL_VARIABLES:

default: configure bootstrap

# Update and install packages. Install Ansible
configure:
	./scripts/pre-setup
	ansible --version

# Install Docker, Kubernetes, QEMU/KVM, Helm
bootstrap:
	make -C bootstrap
