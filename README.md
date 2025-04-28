# Platesmania infrastructure

## Requirements

- Minikube
- VirtualBox (as the VM driver)

## Starting Minikube

minikube start --driver=virtualbox --no-vtx-check

## Environment Variables

Each service (frontend, backend, postgres) uses its own `.env` file located in its directory.

These `.env` files are used to automatically generate Kubernetes Secrets via the `make update-secret` command.

Keep your `.env` files up-to-date, secrets must be updated after changes to `.env` files.

## Makefile Commands

Apply all manifests: `make apply-all`

Restart a deployment: `make restart target=frontend`

Update Kubernetes secret for a service: `make update-secret target=frontend`