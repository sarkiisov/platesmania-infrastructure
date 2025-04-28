# Apply all manifests using Kustomize
apply-all:
	kubectl apply -k .
# Restart a specific deployment
restart:
	kubectl rollout restart deployment/$(target)
# Update secrets for a given target
update-secret:
	kubectl create secret generic $(target)-secret --from-env-file=$(target)/.env --dry-run=client -o yaml > $(target)/$(target)-secret.yaml
