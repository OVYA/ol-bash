SHELL := /bin/bash
SRC_DIR := $(CURDIR)/lib
TEST_DIR := $(CURDIR)/test
DOC_DIR := $(CURDIR)/doc

.PHONY: doc
doc:
	@cd $(DOC_DIR); \
	doxygen Doxyfile && echo -e "\n => Doc generated in directory $(DOC_DIR){html/latex}\n"

.PHONY: test
test:
	@cd $(TEST_DIR); \
	bats .
