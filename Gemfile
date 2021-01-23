source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'devise'

# Гем для перевода сообщений девайса
gem 'devise-i18n'

# Гем с русскими форматами (времени и пр.)
gem 'russian'

gem 'rails', '~> 6.1.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'webpacker', '~> 5.0'
gem 'jbuilder', '~> 2.7'
gem 'twitter-bootstrap-rails'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3', '~> 1.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
