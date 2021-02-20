source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Гем для загрузки картинок
gem 'carrierwave'

gem 'devise'

# Гем для перевода сообщений девайса
gem 'devise-i18n'

# для загрузки переменных среды из .env в ENV в процессе разработки
gem 'dotenv-rails', require: 'dotenv/rails-now'

# Гем для работы carrierwave с хранилищем Amazon S3
gem 'fog-aws'

gem 'jbuilder', '~> 2.7'

gem 'jquery-rails'

# Предварительный просмотр электронной почты в браузере по умолчанию вместо отправки
gem 'letter_opener', group: :development

gem 'rails', '~> 6.1.0'

gem 'rails-i18n', '~> 6.0.0'

# Гем для обработки картинок
gem 'rmagick'

# Гем с русскими форматами (времени и пр.)
gem 'russian'

# Автоматически используется для сжатия CSS
gem 'sass-rails'

gem 'twitter-bootstrap-rails'

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'uglifier', '>= 1.3.0'

gem 'webpacker', '~> 5.0'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3', '~> 1.4'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end
