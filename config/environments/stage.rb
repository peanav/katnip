Sinatra::Base.configure do
  Sinatra::Base.set :js_app, {
    :src => "/scripts/main-built.js",
  }
end
