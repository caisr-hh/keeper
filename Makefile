VENV ?= .venv
PYTHON ?= python3
VENV_PYTHON = $(VENV)/bin/python

.PHONY: create-env
create-env: ## Create the virtual environment and install the pinned dependencies.
	$(PYTHON) -m venv "$(VENV)"
	"$(VENV_PYTHON)" -m pip install -r requirements.txt

.PHONY: update-env
update-env: ## Update the virtual environment to match the pinned dependencies.
	@test -x "$(VENV_PYTHON)" \
		|| (echo "Run 'make create-env' before updating the virtual environment." && exit 1)
	"$(VENV_PYTHON)" -m pip install --upgrade -r requirements.txt

.PHONY: outdated-env
outdated-env: ## Show outdated packages in the virtual environment.
	@test -x "$(VENV_PYTHON)" \
		|| (echo "Run 'make create-env' before checking the virtual environment." && exit 1)
	"$(VENV_PYTHON)" -m pip list --outdated
