require 'bundler/setup'
Bundler.require

get '/' do
  less :'less/bootstrap', :paths => ['view/less']
end
