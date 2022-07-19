
.PHONY: test
test:
	# yamllint -s .
	helm lint charts/ --strict
