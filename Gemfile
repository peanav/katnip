source :rubygems

gem 'rake', :require => false

gem 'sinatra', :require => 'sinatra/base'
gem 'slim'
gem 'less'
gem 'tilt', :git => 'git://github.com/rtomayko/tilt.git'

gem 'puma'

#required for heroku to let us use node to precompile js
gem 'execjs', :require => false

group :test do
  gem 'guard-minitest'
  gem 'rack-test'
end
