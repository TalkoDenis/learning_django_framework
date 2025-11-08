.PHONY: run-admin run-server clean lint lint-fix format format-fix


run-admin:
	uv run django-admin startproject mysite .

run-server:
	uv run python manage.py runserver

clean:
	find . -type d -name "__pycache__" -exec rm -rf {} +
	rm -rf *.egg-info .pytest_cache/ .ruff_cache/ coverage.xml htmlcov/ profile.html build/ dist/

lint:
	uv run ruff check .

lint-fix:
	uv run ruff check --fix .

format:
	uv run ruff format --check .

format-fix:
	uv run ruff format .