install:
	pip install --upgrade pip setuptools wheel
	pip install -r requirements.txt

test:
	python -m pytest -vv --cov=main --cov=mylib

format:	
	black *.py 

lint:
	pylint --disable=R,C --ignore-patterns=test_.*?py main.py mylib/calculator.py

#container-lint:
#	#docker run --rm -i hadolint/hadolint < Dockerfile

refactor: format lint

deploy:
	
		
#all: install lint test format deploy
