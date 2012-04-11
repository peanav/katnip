Sinatra::Base.configure do
  Sinatra::Base.set :js_app, {
    :src => "/scripts/require.js",
    :data_main => "/scripts/main.js"
  }
end
