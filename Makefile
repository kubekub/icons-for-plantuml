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

create-cert-manager: ## create-cert-manager
	cd dist;convert cert-manager.png -resize 100x100 cert-manager.png
	cd dist; plantuml -encodesprite cert-manager.png > cert-manager.puml

create-external-dns: ## create-external-dns
	cd dist;convert external-dns.png -resize 100x100 external-dns.png
	cd dist; plantuml -encodesprite external-dns.png > external-dns.puml

create-grafana-loki: ## create-grafana-loki
	cd dist;convert grafana-loki.png -resize 100x100 grafana-loki.png
	cd dist; plantuml -encodesprite grafana-loki.png > grafana-loki.puml

create-grafana-tempo: ## create-grafana-tempo
	cd dist;convert grafana-tempo.png -resize 100x100 grafana-tempo.png
	cd dist; plantuml -encodesprite grafana-tempo.png > grafana-tempo.puml

create-grafana: ## create-grafana
	cd dist;convert grafana.png -resize 100x100 grafana.png
	cd dist; plantuml -encodesprite grafana.png > grafana.puml

create-opsgenie: ## create-opsgenie
	cd dist;convert opsgenie.png -resize 100x100 opsgenie.png
	cd dist; plantuml -encodesprite opsgenie.png > opsgenie.puml

create-statuspage: ## create-statuspage
	cd dist;convert statuspage.png -resize 100x100 statuspage.png
	cd dist; plantuml -encodesprite statuspage.png > statuspage.puml

create-itps: ## create-itps
	cd dist;convert itps.png -resize 100x100 itps.png
	cd dist; plantuml -encodesprite itps.png > itps.puml

create-slack: ## create-slack
	cd dist;convert slack.png -resize 100x100 slack.png
	cd dist; plantuml -encodesprite slack.png > slack.puml

create-teams: ## create-teams
	cd dist;convert teams.png -resize 100x100 teams.png
	cd dist; plantuml -encodesprite teams.png > teams.puml

create-pyrra: ## create-pyrra
	cd dist;convert pyrra.png -resize 100x100 pyrra.png
	cd dist; plantuml -encodesprite pyrra.png > pyrra.puml
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
