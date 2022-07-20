
.PHONY: test
test:
	yamllint -s . || true
	helm lint charts/ --strict

GITHUB_OWNER?=kubean-io
GITHUB_REPO?=kube-node-tuning
GITHUB_TOKEN?=

helm-chart-release:
	@cr package charts
	@cr upload -o $(GITHUB_OWNER) -r $(GITHUB_REPO) -t $(GITHUB_TOKEN)
	@helm repo index .
	@cr index -o $(GITHUB_OWNER) -r $(GITHUB_REPO) -t $(GITHUB_TOKEN) --pr -i index.yaml -c https://kubean-io.github.io/kube-node-tuning/

clean:
	rm -rf .cr-*
