class App < Sinatra::Base
  get '/' do
    slim :index
  end

  get '/styles/*.css' do |sheet_name|
    content_type :css
    begin
      scss :"scss/#{sheet_name}", :load_paths => ['views/sass']
    rescue Errno::ENOENT
      status 404
    end
  end
end
