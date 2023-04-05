# Install
make sure postgres and ruby 3.2.2 are installed

1. `git clone git@github.com:2rba/qa_app.git`
2. `cd qa_app`
2. `bundle install`
3. `bundle exec rails db:setup`
4. `bundle exec rails s`
5. open http://localhost:3000
6. signup as a new user

For tailwind styles development run `bin/rails tailwindcss:watch`

# Tests
`bundle exec rspec`

rubocop `bundle exec rubocop`

# Decisions
- User email is displayed as name ( we probably dont want this for data protection reasons)
- RSpec tests implemented without factories
- User interface is rough and requires polishing
- e2e (fox ex. Cypress) tests are skipped in the current implementation
- questions sorted as new first
- answers sorted as new first
- Devise email communication is not configured

