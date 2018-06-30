# README

## Dev set-up

- Install Ruby 2.5
- Install PostgreSQL
- Check out the project
- Create a database user:

```
psql postgres
create role givememydata with createdb login password 'givememydata';
\q
```

- Run `bundle install`
- Run `rails db:setup`
- Run `rails db:migrate`
- Run `rails server` to start the all
