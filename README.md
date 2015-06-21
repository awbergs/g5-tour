## Getting Started

Setup

* Ruby >= 2.2.0p0

* Rails >= 4.2.0

* Postgres

Running Locally

* Run `bundle install`

* Copy `database.yml.example` to a new file named `database.yml` and set the database name, username, and password

* Initialize database
  * `rake db:create`
  * `rake db:migrate`
  * `rake amenities:generate`

* Sending emails
  * Set `ENV['GMAIL_USERNAME']` and `ENV['GMAIL_PASSWORD']` in `~/.bash_profile`

* Run the server
  * `rails s`

Running Tests

* `rspec`
