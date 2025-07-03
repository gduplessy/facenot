source 'https://rubygems.org'

# Use Ruby 3.4.4
ruby '3.4.4'

# Rails 8.0 with the latest version
gem 'rails', '~> 8.0.2'

# Propshaft is the new default asset pipeline in Rails 8 (replaces Sprockets)
# It's automatically included with Rails 8, but we can be explicit
gem 'propshaft'

# Database adapters
gem 'pg', '~> 1.5'
gem 'sqlite3', '~> 2.4'

# Background job processing
gem 'resque', '~> 2.6'

# Facebook API integration  
gem 'koala', '~> 3.5'

# JavaScript and CSS for Rails 8 (Import Maps is default)
gem 'importmap-rails'
gem 'stimulus-rails'
gem 'turbo-rails'

# Build tools for modern Rails 8
gem 'image_processing', '~> 1.13'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[ mri mingw x64_mingw ]
  
  # Testing framework
  gem 'rspec-rails'
end

group :development do
  # Use console on exceptions pages
  gem 'web-console'
end

group :test do
  # Pretty printed test output (updated for Rails 8)
  gem 'capybara'
  gem 'selenium-webdriver'
end
