guard 'minitest' do
  watch(%r|^spec/.+_spec\.rb|)
  watch(%r|^lib/(.+)\.rb$|)           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r|^spec/spec_helper\.rb|)    { "spec" }
  watch(%r|^spec/integration_helper\.rb|)    { "spec" }
end
