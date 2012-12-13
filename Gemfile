source 'https://rubygems.org'

gem 'rails', '3.2.9'
gem 'pg'
gem 'jquery-rails'

# Cucumber feature stories in a git-based wiki
gem 'gitnesse'

group :assets do
  gem 'therubyracer', :platform => :ruby
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :test, :development do
  gem 'cucumber-rails', require: false
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'spork-rails'
  gem 'factory_girl_rails'
  gem 'minitest' #to fix fedora+rails issue
end
