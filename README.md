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

The application is available locally on http://0.0.0.0:3000

## Useful commands

Install ruby dependencies:

```bash
docker-compose exec todo-web bundle
```

To run the test suite :
```bash
docker-compose exec todo-web rspec
```
