source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'rails',                                '~> 6.1.4', '>= 6.1.4.1'
gem 'puma',                                 '~> 5.0'
gem 'sass-rails',                           '>= 6'
gem 'webpacker',                            '~> 5.0'
gem 'turbolinks',                           '~> 5'
gem 'jbuilder',                             '~> 2.7'
gem 'bootsnap',                             '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3',                            '~> 1.4'
end

group :development do
  gem 'web-console',                        '>= 4.1.0'
  gem 'rack-mini-profiler',                 '~> 2.0'
  gem 'listen',                             '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'capybara',                           '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :production do
  gem 'pg',                                  '1.1.4'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]