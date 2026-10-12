# seankennedy.sh — dev tasks (Zola runs in a container via podman)

IMAGE := ghcr.io/getzola/zola:v0.19.2
PORT  := 1111
SITE  := $(CURDIR)
SERVE := zola-serve

.PHONY: help build serve restart stop logs update-resume clean

help: ## show available targets
	@grep -E '^[a-zA-Z_-]+:.*## ' $(MAKEFILE_LIST) | awk -F':.*## ' '{printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2}'

build: ## one-off build into public/
	podman run --rm -v $(SITE):/app:Z --workdir /app $(IMAGE) build

serve: ## (re)start the live-reload dev server at http://127.0.0.1:$(PORT)
	-@podman rm -f $(SERVE) >/dev/null 2>&1
	@podman run -d --name $(SERVE) -p $(PORT):1111 \
		-v $(SITE):/app:Z --workdir /app $(IMAGE) \
		serve --interface 0.0.0.0 --port 1111 --base-url http://127.0.0.1 >/dev/null
	@echo "dev server: http://127.0.0.1:$(PORT) (live reload, fresh container each start)"

restart: ## stop + start the dev server (fixes stale static files)
	@$(MAKE) stop
	@$(MAKE) serve

stop: ## stop and remove the dev server
	-@podman rm -f $(SERVE) >/dev/null 2>&1

logs: ## tail the dev server logs
	podman logs -f $(SERVE)

update-resume: ## refresh static/resume.pdf from the shared google doc and push
	./scripts/update-resume.sh

clean: ## remove build output
	rm -rf public
