install:
	pip install --upgrade pip setuptools wheel
	pip install -r requirements.txt

test:
	python -m pytest -vv --cov=main --cov=mylib

format:	
	black *.py 

lint:
	pylint --disable=R,C --ignore-patterns=test_.*?py main.py mylib/calculator.py

refactor: format lint

deploy:
	
