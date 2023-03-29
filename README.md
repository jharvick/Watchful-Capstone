# Watchful

# <Watchful>

Watchful is an app that let's you keep track of the movies and TV shows you want to watch! With so many streaming services and platforms releasing content, I wanted a way to keep record of all the things I want to watch. It never fails that I can't think of anything to watch when I sit down on the couch and I need some organization!!

Describe the technologies you used to build your app (Ruby on Rails backend, React.js frontend, any libraries, APIs, etc.)

- Created a backend using Ruby on Rails
- Created a frontend using React.js
- Used OMDb API to search for and add movies/shows within the app

![screenshot](screenshot.png)

## Installation

```bash
bundle install
rails db:create db:migrate db:seed
```

## Usage

```bash
rails server
```

You can test web requests as documented in the `requests.http` file.

## Roadmap

- Add an API that will tell the user what streaming service a movie or show is available on
- Add a social aspect that will allow users to create groups to start watch lists with
