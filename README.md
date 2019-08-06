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


Instructions:

1. clone the repository
2. Navigate to cloned directory
Now run the commands:
3. bundle install
4. rails db:drop db:create db:migrate db:seed
5. rails s thin

After these steps call API to authenticate user:

POST http://localhost:3000/authenticate, body: {"email": "testemail@mail.com", password: "Test#123"}

It will return the auth_token

Use this auth token in Authorization header in next request

GET http://localhost:3000/books/books_by_query.json?query="Fiction"
