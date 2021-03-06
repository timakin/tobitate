source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', :group => [:development, :test]

group :production do
	gem 'pg'
  gem 'rails_12factor'
end

group :test do
	gem 'rspec'
	gem 'rspec-rails'
end


# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'
gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails", git: 'git://github.com/seyhunak/twitter-bootstrap-rails.git', branch: 'bootstrap3'
gem "font-awesome-rails"

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

group :assets do
  # Bootstrap
  gem 'bootstrap-sass', '~> 3.0.3.0'
  gem "flat-ui-rails"
  # Use Uglifier as compressor for JavaScript assets
end
  # Use jquery as the JavaScript library
  gem 'jquery-rails'
  gem 'underscore-rails'
  gem 'rails-backbone'
  gem 'bourbon'
  gem 'dropzonejs-rails'

group :development do
  gem 'rails-erd', github: 'paulwittmann/rails-erd', branch: 'mavericks'
  gem 'binding_of_caller'
  gem 'sextant'
  gem 'quiet_assets'
  gem 'hirb'
  gem 'hirb-unicode'
  gem 'better_errors'
end

gem 'rmagick', :require => 'RMagick'
gem 'carrierwave'
gem 'mime-types'
gem 'mini_magick'
gem 'omniauth'
gem "omniauth-facebook"
gem "omniauth-twitter"
gem 'omniauth-google-oauth2'
gem 'devise'
gem 'acts_as_commentable'
gem 'acts-as-taggable-on'
gem 'rspec-rails'
gem 'pry-rails'
gem 'rails_config'
gem 'cancan'
gem 'party_boy'
gem 'ransack'
gem 'public_activity'
gem 'reditor'
gem 'friendly_id'
gem 'foreigner'
gem 'redcarpet'
gem 'disqus'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem 'paper_trail'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
