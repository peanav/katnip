
class KatalusApp < Sinatra::Base

  get '/' do
    @js_app = settings.js_app
    slim :index
  end

  get '/styles/*.css' do |sheet_name|
    content_type :css
    less :"less/#{sheet_name}", :paths => ['views/less']
  end

end
