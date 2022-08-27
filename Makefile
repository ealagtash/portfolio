SHELL = sh

PHONY: all
all: setup install-reqs

# see https://packaging.python.org/guides/installing-using-pip-and-virtual-environments/#creating-a-virtual-environment
# we copy the version number file into the pyenv
setup: .python-version
	rm -rf .venv
	pyenv install --skip-existing || true
	python3 -m venv .venv
	. .venv/bin/activate && pip install --upgrade pip
	cp .python-version .venv/.python-version

install-reqs: requirements.txt
	. .venv/bin/activate && pip install -r requirements.txt

