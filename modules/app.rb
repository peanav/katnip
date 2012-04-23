
class KatalusApp < Sinatra::Base

  get '/' do
    slim :index
  end

  get '/styles/*.css' do |sheet_name|
    content_type :css
    less :"less/#{sheet_name}", :paths => ['views/less', 'vendor/bootstrap/less']
  end

end
