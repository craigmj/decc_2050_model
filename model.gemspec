begin
  # If the model has already been compiled, we can check it for its version number
  # This is problematic since it always looks to the installed library to determine
  # the version number.
  version = %x(deccgem namegem)
end

# This adds pre if not committed - we'll ignore since
# we've got untracked files here, so it's difficult to coordinate.
#if `git status --porcelain | wc -l`.to_i > 0
#  version = version + "pre"
#end

Gem::Specification.new do |s|
  s.name = "decc_2050_model"
  s.required_ruby_version = ">1.9.1"
  s.version = version
  s.add_dependency('ffi','>= 1.0.11')
  s.add_development_dependency('excel_to_code')
  s.author = "Craig Mason-Jones, Lateral Alternative, ERC and DEA"
  s.email = "craig@lateral.co.za"
  s.homepage = "http://github.com/craigmj/decc_2050_model"
  s.platform = Gem::Platform::RUBY
  s.summary = "A C version of DECC's 2050 Pathway Excel Spreadsheet"
  s.description = File.read(File.join(File.dirname(__FILE__), 'README.markdown'))
  s.license = "MIT"
  s.files = ["LICENSE", "README.markdown", "{lib}/**/*.rb",'ext/**/*.{c,h,rb}','test/**/*'].map{|p| Dir[p]}.flatten
  s.extensions = ['ext/Rakefile']
  s.has_rdoc = false
end
