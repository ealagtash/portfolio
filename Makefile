SHELL = sh

# see https://packaging.python.org/guides/installing-using-pip-and-virtual-environments/#creating-a-virtual-environment
# we copy the version number file into the pyenv
.PHONY: all
all: .python-version
	rm -rf .venv
	pyenv install --skip-existing || true
	python3 -m venv .venv
	. .venv/bin/activate && pip install --upgrade pip
	cp .python-version .venv/.python-version
