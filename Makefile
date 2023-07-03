install:
	pip install -r requirements.txt

run-login:
	robot -d ./logs -L trace -i @login .