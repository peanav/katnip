ENV['RACK_ENV'] ||= 'development'
require File.expand_path("../environments/#{ENV['RACK_ENV']}", __FILE__)

Sinatra::Base.configure do |c|
  Sinatra::Base.set :root, APP_ROOT
  c.helpers Sinatra::ContentFor
end
