# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## Lessons Learnt

1. block in load_missing_constant': uninitialized constant Rack::Cors (NameError)

### Solution

You just need to un-comment the Rack CORS gem in your Gemfile (gemfile.rb)

**# gemfile.rb**

    gem 'rack-cors'

And then run the code below to install the gem

    bundle install

And also ensure that your cors initializer (cors.rb) is set this way
**# config/initializers/cors.rb**
```
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
```
Setting origins to '*' should be alright for development, but keep in mind that if you deploy to production you’ll want to change this value to match your front-end’s URI for security reasons.

### Medium Post

https://medium.com/@dakota.lillie/using-action-cable-with-react-c37df065f296
