# source 'https://rubygems.org'
# source 'https://gems.ruby-china.com/'
source 'https://mirrors.tuna.tsinghua.edu.cn/rubygems/'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.1"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.2", ">= 7.0.2.3"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# 上传组件
gem 'carrierwave'

# Aliyun / Upyun / Qiniu 可选项
# gem "carrierwave-aliyun"
# gem "carrierwave-upyun"
gem 'carrierwave-qiniu'

# Lazy load
gem 'mini_magick', require: false

# 验证码，头像
gem 'letter_avatar'
# gem "rucaptcha"
gem 'recaptcha'

# 用户系统
gem 'devise'
gem 'devise-encryptable'
gem 'devise-i18n'
# gem 'devise_token_auth', '~> 1.1.5'
# gem 'devise_token_auth', github: "lynndylanhurley/devise_token_auth"

# 通知系统
gem 'notifications'
gem 'ruby-push-notifications'

# 分页
gem 'kaminari'

# Permission
# gem 'cancancan'
gem 'pundit'

# Redis
gem 'hiredis'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.6.0'
gem 'redis-namespace'
gem 'redis-objects'

# Cache
gem 'second_level_cache'

# Setting
gem 'rails-settings-cached'

# 队列
gem 'sidekiq'
gem 'sidekiq-scheduler'

# Audited (previously acts_as_audited) is an ORM extension that logs all changes to your models
# gem 'audited', '~> 4.9'

# add i18n
gem 'rails-i18n', '~> 7.0.0' # For 7.0.0

# Sentry gems
gem 'sentry-ruby'
gem 'sentry-rails'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]

  # rspec 复杂度较高，使用 minitest 代替
  # gem "capybara"
  # gem "database_cleaner"
  # gem "factory_bot_rails"
  # gem "letter_opener"
  # gem "rspec-rails"
  # RuboCop is a Ruby static code analyzer (a.k.a. linter) and code formatter
  # gem 'rubocop', '~> 1.9', require: false
  gem 'rubocop', require: false

  # gem 'rubocop', '>= 0.49.0', require: false
  #
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'sdoc'
  gem 'codecov', require: false

end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler'
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'derailed'

  # 部署相关内容
  gem 'capistrano', '~> 3.8.2'
  gem 'capistrano-rvm'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano3-puma'
  gem 'capistrano-yarn', require: false
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  # Easy installation and use of web drivers to run system tests with browsers
  gem "webdrivers"
end
