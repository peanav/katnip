APP_ROOT = File.dirname(__FILE__)
require 'bundler/setup'
Bundler.require

$: << File.join(File.dirname(__FILE__), 'lib')
require File.join(File.dirname(__FILE__), 'config', 'environment')


#Add folder names of files to require for your app
%w{modules}.each do |n|
  Dir[File.expand_path("../#{n}/*.rb", __FILE__)].each {|f| require f}
end
