.POSIX:
.PHONY: *
.EXPORT_ALL_VARIABLES:

default: bootstrap

# Install Docker, Kubernetes, QEMU/KVM, Helm
bootstrap:
	make -C bootstrap
