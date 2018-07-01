# README

Give Me My Data is a demo built for [NHS Hackday](http://nhshackday.com/) on the
30th of June to 1st of July 2018.

See the site at [http://bit.ly/mynhsdata](http://bit.ly/mynhsdata).

## Dev set-up

- Install Ruby, minimum version 2.4
- Install [SQLite](https://www.sqlite.org/index.html)
- Check out the project
- Create a database user:

- Run `bundle install`
- Run `rails db:setup`
- Run `rails db:migrate`
- Run `rails server` to start the all


## Update server database from csv file

`heroku run rake csv:load`
