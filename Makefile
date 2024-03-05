kube.PHONY: help
.DEFAULT_GOAL := help

install-tools-mac: ## install-tools
	brew install imagemagick

download-script: ## download-script
	cd dist;wget https://raw.githubusercontent.com/Piotr1215/sprites/master/sprites/create_sprites.sh

create-kiali: ## create-kiali
	cd dist;convert kiali.png -resize 100x100 kiali.png
	cd dist; plantuml -encodesprite kiali.png > kiali.puml

create-kyverno: ## create-kyverno
	cd dist;convert kyverno.png -resize 100x100 kyverno.png
	cd dist; plantuml -encodesprite kyverno.png > kyverno.puml

create-prometheus: ## create-prometheus
	cd dist;convert prometheus.png -resize 100x100 prometheus.png
	cd dist; plantuml -encodesprite prometheus.png > prometheus.puml

create-thanos: ## create-thanos
	cd dist;convert thanos.png -resize 100x100 thanos.png
	cd dist; plantuml -encodesprite thanos.png > thanos.puml

create-external-secrets-operator: ## create-external-secrets-operator
	cd dist;convert external-secrets-operator.png -resize 100x100 external-secrets-operator.png
	cd dist; plantuml -encodesprite external-secrets-operator.png > external-secrets-operator.puml

create-falco: ## create-falco
	cd dist;convert falco.png -resize 100x100 falco.png
	cd dist; plantuml -encodesprite falco.png > falco.puml

create-istio: ## create-istio
	cd dist;convert istio.png -resize 100x100 istio.png
	cd dist; plantuml -encodesprite istio.png > istio.puml

create-external-secrets-operator: ## create-external-secrets-operator
	cd dist;convert external-secrets-operator.png -resize 100x100 external-secrets-operator.png
	cd dist; plantuml -encodesprite external-secrets-operator.png > external-secrets-operator.puml

create-cert-manager: ## create-cert-manager
	cd dist;convert cert-manager.png -resize 100x100 cert-manager.png
	cd dist; plantuml -encodesprite cert-manager.png > cert-manager.puml
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
