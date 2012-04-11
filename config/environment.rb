ENV['RACK_ENV'] ||= 'development'
require File.expand_path("../environments/#{ENV['RACK_ENV']}", __FILE__)

Sinatra::Base.configure do
  Sinatra::Base.set :root, APP_ROOT
end
