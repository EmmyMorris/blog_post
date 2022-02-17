# Blog Post
## About
Project Description


## Initial Setup
1. Fork and Clone the repo
2. Install gem packages: `bundle install`
3. Setup the database: `rails db:create`
4. Run migrations: ` rails db:migrate`

## Important Gems
Testing
* [rspec-rails](https://github.com/rspec/rspec-rails)
* [capybara](https://github.com/teamcapybara/capybara)
* [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
* [simplecov](https://github.com/simplecov-ruby/simplecov)
* [webmock](https://github.com/bblimke/webmock)
* [vcr](https://github.com/vcr/vcr)

API Consumption
* [faraday](https://github.com/lostisland/faraday)

## Running the tests
Run `bundle exec rspec` to run the test suite

## End Points
**Posts**
- GET /api/ping
> Get forcast for location
> PATH PARAMETERS- :location(string)- REQUIRED

> Example request:
```rb
GET /api/ping
Content-Type: application/json
Accept: application/json
```
> Example response:
Response body (JSON):
```rb
{
"success": true
}
```
Response status code: 200


- GET /api/posts
> Get forcast for location
> PATH PARAMETERS- :tags(string)- REQUIRED
> PATH PARAMETERS- :sortBy(string)- OPTIONAL
> PATH PARAMETERS- :direction(string)- OPTIONAL

Response body (JSON):
```rb
{
    "posts": [{
      "id": 1,
      "author": "Rylee Paul",
      "authorId": 9,
      "likes": 960,
      "popularity": 0.13,
      "reads": 50361,
      "tags": [ "tech", "health" ]
    },
    ...
  ]
}
```

## Versions

- Ruby 2.7.2

- Rails 5.2.6


## Authors

- Emmy Morris - [emmymorris](https://github.com/EmmyMorris)
