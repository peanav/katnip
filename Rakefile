require 'sass'
require 'coffee-script'
require 'rake/testtask'


namespace :assets do
  desc 'Precompile assets for heroku push'
  task :precompile => [:heroku_bins, :compile_coffee, :build_js, :build_css]

  task :heroku_bins do
    ENV['PATH'] = "#{File.join(Dir.pwd,'bin')}:" + ENV['PATH']
  end

  desc 'Compiling Coffee'
  task :compile_coffee do
    Dir.chdir 'views/coffee' do
      Dir['**/*.coffee'].each do |f|
        mkdir_p File.join('../../public/scripts', File.dirname(f))
        compiled_script = CoffeeScript.compile File.read(f), bare: true
        File.open(File.join('../../public/scripts', File.dirname(f), File.basename(f, '.coffee') + '.js'), 'w') do |file|
          file.puts(compiled_script)
        end
      end
    end
  end

  desc 'Build JS'
  task :build_js do
    Dir.chdir "public/scripts" do
      sh "node r.js -o baseUrl=. name=lib/almond.js include=main out=main-built.js wrap=true"
    end
  end

  desc 'Build CSS'
  task :build_css do
    mkdir_p 'public/styles'
    Dir['views/scss/*.scss'].each do |f|
      app_dir = File.dirname(__FILE__)
      base = File.basename(f,'.scss')
      engine = Sass::Engine.new(File.read(File.join(app_dir, f)), :syntax => :scss, :load_paths => ['views/sass', 'vendor/sass-bootstrap/lib'])
      File.open(File.join(app_dir, 'public', 'styles', "#{base}.css"), 'w') do |f|
        f.write engine.render
      end
    end
  end
end

Rake::TestTask.new do |t|
    t.libs = ['spec', 'lib']
    t.test_files = Dir['spec/**/*_spec.rb']
end
