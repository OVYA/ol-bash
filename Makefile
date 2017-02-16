SHELL := /bin/bash
SRC_DIR := $(CURDIR)/lib
TEST_DIR := $(CURDIR)/test
DOC_DIR := $(CURDIR)/doc
GH_PAGES_BRANG := "gh-pages"

.PHONY: doc
doc:
	@cd $(DOC_DIR); \
	doxygen Doxyfile && echo -e "\n => Doc generated in directory $(DOC_DIR){html/latex}\n" \

.PHONY: test
test:
	@cd $(TEST_DIR); \
	bats .

.PHONY: gh-pages-git-branch-create
gh-pages-git-branch-create:
	@git rev-parse --quiet --verify gh-pages > /dev/null || git checkout -b origin/gh-pages

.PHONY: doc
gh-pages: doc
	git subtree push --prefix build/dist origin gh-pages
