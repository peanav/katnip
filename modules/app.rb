class KatalusApp < Sinatra::Base
  get '/' do
    slim :index
  end

  get '/styles/*.css' do |sheet_name|
    content_type :css
    begin
      scss :"scss/#{sheet_name}", :load_paths => ['views/sass', 'vendor/sass-bootstrap/lib']
    rescue Errno::ENOENT
      status 404
    end
  end

  get '/scripts/*.js' do |script_name|
    begin
      coffee :"/coffee/#{script_name}", :bare => true
    rescue Errno::ENOENT
      status 404
    end
  end
end
