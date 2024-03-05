kube.PHONY: help
.DEFAULT_GOAL := help

install-tools-mac: ## install-tools
	brew install imagemagick

download-script: ## download-script
	cd dist;wget https://raw.githubusercontent.com/Piotr1215/sprites/master/sprites/create_sprites.sh

create-kiali: ## create-kiali
	cd dist;convert kiali.png -resize 100x100 kiali.png
	cd dist; sh create_sprites.sh kiali.png


help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
