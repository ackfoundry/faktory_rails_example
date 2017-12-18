release: bundle exec rails db:migrate
web: bundle exec puma -C config/puma.rb
worker: bundle exec faktory-worker -q examples -C 4
