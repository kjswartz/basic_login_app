source 'https://rubygems.org'
ruby '2.3.1'

###############################################################################
# Core
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'pg'                      # Database
gem 'puma', '~> 3.0'          # Use Puma as the app server
gem 'redis', '~> 3.0'         # Key value store
gem 'jwt'                     # Token Auth

###############################################################################
# General
gem 'devise'                  # Login
gem 'jbuilder', '~> 2.5'      # Build JSON APIs with ease
gem 'haml-rails'              # Views
gem 'sidekiq'                 # Background tasks

###############################################################################

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'factory_girl_rails'
  gem 'foreman'
  gem 'rspec-rails', '~> 3.4'
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'guard-rspec', '~> 4.6', require: false
  gem 'terminal-notifier-guard'
end


# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'
