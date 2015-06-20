== README

## Getting Started

Setup

* Ruby >= 2.2.0p0

* Rails >= 4.2.0

* Postgres

Running Locally

* Copy `database.yml.example` to a new file named `database.yml` and set the databse name, username, and password

* Initialize database
  * `rake db:create`
  * `rake db:migrate`
  * `rake amenities:generate`

* Run the server
  * `rails s`

Running Tests

* `rspec`
