# Project Description

Imagine that a company has just received a new advertising campaign from a national coffee
franchise to promote their new Chocolate Macchiato. They will be delivering a tab separated document
with each store location so we can drive foot traffic into each location. Geo targeted ads are typically
target to a 5 mile radius around the business. Your task is to create a web interface that accepts
file uploads, stores it in a database and then displays a list ordered ordered by distance from the
sample company in Carlsbad office ( 33.1243208, -117.32582479999996 ).

## Here’s what your web-based application must do:

  1. Your app must accept ( via a form ) a tab delimited file with the following columns:
     business name, address, city, state, postal code, country, latitude, longitude. The example
     file is named offers_poi.tsv is included in this repo.
  2. Your app must parse the given file and store the information in a database.
  3. After upload, your application should display each location ordered by distance from the sample  company's Carlsbad office.

# Development Environment Setup
## Prerequisites (what was used)
* rbenv
* ruby 1.9.3p484
* rails
* database
  * both mysql and sqlite3 have been tested

## Steps to development
### Setting up the project

*  Unzip project into directory
*  Issue the following commands

  `cd <PROJECT_ROOT>`

  `gem install bundler  #if you do not already have bundler installed`

  `bundle install`

### Setting up database via MySql
* login via root user of local MySql database
* Issue the following commands

  `CREATE DATABASE sample_development;`

  `CREATE USER 'sampleUser'@'localhost' IDENTIFIED BY '<password>';`

  `GRANT ALL PRIVILEGES ON sample_development.* TO sampleUser@localhost WITH GRANT OPTION;`

* Modify `config/database.yml` with previously created database
  credentials
* execute `rake db:migrate` 

* Do the previous commands for `sample_test` in the test environment also.

### Running the Server
* Type `rails s` at the <PROJECT_ROOT>
* type `localhost:3000` in a browser

### Run Sample Tests
* Type `bundle exec rspec` in <PROJECT_ROOT>
