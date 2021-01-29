source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'
gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'puma', '~> 4.1'

gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'uglifier', '~> 2.7', '>= 2.7.2'

gem 'devise'
gem 'activeadmin', '~> 2.8'

gem 'will_paginate', '~> 3.1.1'

group :development, :test do
  gem 'sqlite3', '~> 1.3', '>= 1.3.6'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  gem 'rspec-rails', '~> 4.0.0'
  gem 'rails-controller-testing'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg', '~> 1.2', '>= 1.2.2'
end
