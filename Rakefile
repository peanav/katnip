require 'less'

namespace :assets do
  desc 'Precompile assets for heroku push'
  task :precompile => [:heroku_bins :build_js, :build_less]

  task :heroku_bins do
    ENV['PATH'] = "#{File.join(Dir.pwd,'bin')}:" + ENV['PATH']
  end

  desc 'Build JS'
  task :build_js do
    Dir.chdir "public/scripts" do
      sh "node r.js -o baseUrl=. name=lib/almond.js include=main out=main-built.js wrap=true"
    end
  end

  desc 'Build CSS'
  task :build_less do
    mkdir_p 'public/styles'
    Dir['views/less/*.less'].each do |f|
      app_dir = File.dirname(__FILE__)
      base = File.basename(f,'.less')
      parser = Less::Parser.new :paths => ['views/less']
      tree = parser.parse(File.read(File.join(app_dir, f)))
      File.open(File.join(app_dir, 'public', 'styles', "#{base}.css"), 'w') do |f|
        f.write tree.to_css(:compress => true)
      end
    end
  end
end
