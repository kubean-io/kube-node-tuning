
.PHONY: test
test:
	# yamllint -s .
	helm lint charts/ --strict

helm-chart-release:
	@cr package charts
	@cr upload -o $(GITHUB_OWNER) -r $(GITHUB_REPO) -t $(GITHUB_TOKEN)
	@helm repo index .
	@cr index -o $(GITHUB_OWNER) -r $(GITHUB_REPO) -t $(GITHUB_TOKEN) --pr -i index.yaml -c https://kubean-io.github.io/kube-node-tuning/

clean:
	rm -rf .cr-*
