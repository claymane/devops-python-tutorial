install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C *.py devopsLib

test:
	python -m pytest -vv --cov=devopsLib test_*.py

format:
	black *.py devopsLib/*.py

all: install lint test format