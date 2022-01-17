# README

A pretext to practice Hotwire Turbo & Stimulus, applying (literally) the
Getting Things Done methodology.

* Ruby version
Ruby 2.7.3

* System dependencies
postgresql

* Install
Install Docker and Docker compose, then :
Create a .env.local file and set the postgres env variables (see .env example).

```bash
docker-compose up --build
```

* Database creation

```bash
docker-compose run --rm web rake db:create
```

* Database initialization

```bash
docker-compose run --rm web rake db:schema:load
```

* How to run the test suite

```bash
docker-compose exec bundle rspec
```
