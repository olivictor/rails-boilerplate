source 'https://rubygems.org'

ruby '2.1.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.3'

# Use Postgres
gem 'pg'
# Required for Heroku Rails 4
gem 'rails_12factor'
# Upload to AWS
gem "aws-sdk"

group :development do
  # Useful generators
  gem 'nifty-generators'
  # Quiet assets logging
  gem 'quiet_assets'
  # Useful notes for debugging views
  # rails generate rails_footnotes:install
  gem 'rails-footnotes'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
end

group :development, :test do
	# Write tests with rspec
	# rails generate rspec:install
	gem 'rspec-rails'
	# Better console for debugging
	gem 'pry-rails'
	# Run live tests with guard
	# guard init rspec
	# guard (in case of problems, run with bundle exec)
	gem 'guard'
	# Run guard with rspec configs
	gem 'guard-rspec', require: false
	# Show test results on Mac notifications
	gem 'terminal-notifier-guard'
end

# Authentication
gem 'devise'
# Admin interface for rails 4.1
# rails g active_admin:install [--skip-users](when using custom user)
gem 'activeadmin', github: 'gregbell/active_admin'

# Scan code for security issues
gem 'brakeman', :require => false
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

