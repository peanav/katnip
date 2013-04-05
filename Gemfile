source 'https://rubygems.org'

gem 'rake', :require => false

gem 'sinatra', :require => 'sinatra/base'
gem 'sinatra-contrib', :require => 'sinatra/content_for'
gem 'thin'
gem 'slim'
gem 'sass'
gem 'coffee-script'

gem 'therubyracer', '0.10.2'

#required for heroku to let us use node to precompile js
gem 'execjs', :require => false

group :development, :test do
  gem 'guard', '~>1.0.0'
  gem 'guard-minitest'
  gem 'rack-test'
  gem 'guard-livereload'
  gem 'rack-livereload'
  gem 'guard-process'
  gem 'foreman'
  gem 'launchy'
end
