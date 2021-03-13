source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Гем для загрузки картинок
gem 'carrierwave'

# Аутентификации для Rails, основанное на Warden
gem 'devise'

# Гем для перевода сообщений девайса
gem 'devise-i18n'

# для загрузки переменных среды из .env в ENV в процессе разработки
gem 'dotenv-rails', require: 'dotenv/rails-now'

# Гем для работы carrierwave с хранилищем Amazon S3
gem 'fog-aws'

# Простой DSL для объявления структур JSON, который превосходит манипулирование гигантскими хеш-структурами
gem 'jbuilder', '~> 2.7'

# Библиотека написанная на JavaScript, упрощение команд
gem 'jquery-rails'

# Предварительный просмотр электронной почты в браузере по умолчанию вместо отправки
gem 'letter_opener', group: :development

# Предоставляет набор помощников для авторизации.
gem 'pundit', '~> 2.1.0'

gem 'rails', '~> 6.1.0'

# Централизация сбора данных о локали для Ruby on Rails
gem 'rails-i18n', '~> 6.0.0'

# Гем для обработки картинок
gem 'rmagick'

# Гем с русскими форматами (времени и пр.)
gem 'russian'

# Автоматически используется для сжатия CSS
gem 'sass-rails'

# Интегрирует набор инструментов Bootstrap CSS для Rails Asset Pipeline
gem 'twitter-bootstrap-rails'

# Общедоступная база данных часовых поясов IANA, упакованная в виде набора модулей Ruby для использования с TZInfo
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Оболочка Ruby для компрессора JavaScript UglifyJS
gem 'uglifier', '>= 1.3.0'

# Cборка фронтенда
gem 'webpacker', '~> 5.0'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3', '~> 1.4'
end

group :development do
  gem 'capistrano', '~> 3.14.1'
  gem 'capistrano-rails', '~> 1.6.1'
  gem 'capistrano-passenger', '~> 0.2'
  gem 'capistrano-rvm', '~> 0.1.2'
  gem 'capistrano-bundler', '~> 2.0.1'
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'web-console', '>= 4.1.0'
end
