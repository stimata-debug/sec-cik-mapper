.PHONY: auto test docs clean

auto: build39

build36: PYTHON_VER = python3.6
build37: PYTHON_VER = python3.7
build38: PYTHON_VER = python3.8
build39: PYTHON_VER = python3.9
build310: PYTHON_VER = python3.10

build36 build37 build38 build39 build310: clean
	$(PYTHON_VER) -m venv venv
	. venv/bin/activate; \
	pip install -U pip setuptools wheel; \
	pip install -r requirements.txt; \
	pre-commit install

clean: clean-dist
	rm -rf venv .pytest_cache ./**/__pycache__
	rm -f .coverage coverage.xml ./**/*.pyc

clean-dist:
	rm -rf dist build .egg .eggs cik_mapper.egg-info