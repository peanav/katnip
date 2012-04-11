
class KatalusApp < Sinatra::Base

  get '/' do
    @js_app = settings.js_app
    slim :index
  end

  get '/stylesheets/bootstrap.css' do
    content_type :css
    less :'less/bootstrap', :paths => ['views/less']
  end

end
