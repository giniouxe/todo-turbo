# README

A pretext to practice Hotwire Turbo & Stimulus, applying (literally) the Getting Things Done methodology.

* Ruby version

Ruby 2.7.3

## Install

Install Docker and Docker compose, then:

```bash
docker-compose build
```

Then launch with:
```bash
docker-compose up -d

```
Create and setup the database with:

```bash
docker-compose exec todo-web rake db:create
```

```bash
docker-compose exec todo-web rake db:schema:load
```

Precompile assets:

```bash
docker-compose exec todo-web rake assets:precompile
```

The application is available locally on http://0.0.0.0:3000

## Useful commands

Install/update ruby dependencies:

```bash
docker-compose exec todo-web bundle
```

To run the test suite:
```bash
docker-compose exec todo-web rspec
```

To run specific tests:
```bash
# Specific file
docker-compose exec todo-web rspec spec/path/to/my_test_file_spec.rb
# Specific tests in file by providing line of the expectation, context or describe
docker-compose exec todo-web rspec spec/path/to/my_test_file_spec.rb:67
```
