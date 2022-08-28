ACTIVATE = . .venv/bin/activate

PIP = $(ACTIVATE) && pip

.PHONY: install
install: .venv/.python-version .venv/requirements.txt

.venv/.python-version: .python-version
	rm -rf .venv
	pyenv install --skip-existing || true
	python3 -m venv .venv
	$(PIP) install --upgrade pip
	cp .python-version .venv/.python-version

.venv/requirements.txt: requirements.txt
	$(PIP) install -r requirements.txt
	cp requirements.txt .venv/requirements.txt
	$(PIP) freeze > requirements-freeze.txt
	@echo
	@echo "Finished installing requirements."

# RUN ONLY ONCE
install-pyenv:
	brew update
	brew install pyenv
	echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
	echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
	echo 'eval "$(pyenv init -)"' >> ~/.zshrc
