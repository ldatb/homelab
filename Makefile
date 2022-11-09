.POSIX:
.PHONY: *
.EXPORT_ALL_VARIABLES:

default: configure

configure:
	./scripts/pre-setup
	ansible --version

metal:
# Install QEMU/KVM, Helm, Docker

bootstrap:
# Prepare environment