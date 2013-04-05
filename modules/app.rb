class KatalusApp < Sinatra::Base

  get '/' do
    slim :index
  end

  get '/styles/*.css' do |sheet_name|
    content_type :css
    scss :"scss/#{sheet_name}", :load_paths => ['views/sass', 'vendor/sass-bootstrap/lib']
  end

  get '/scripts/*.js' do |script_name|
    coffee :"/coffee/#{script_name}", :bare => true
  end

end
