
class KatalusApp < Sinatra::Base

  get '/' do
    slim :index
  end

  get '/styles/*.css' do |sheet_name|
    content_type :css
    less :"less/#{sheet_name}", :paths => ['views/less', 'vendor/bootstrap/less']
  end

  get '/scripts/*.js' do |script_name|
    coffee :"/coffee/#{script_name}", :bare => true
  end

end
