begin
  # If the model has already been compiled, we can check it for its version number
  # This is problematic since it always looks to the installed library to determine
  # the version number.
  require_relative 'lib/model'
  print "Testing for version\n"
  ms = ModelStructure.instance
  # puts ms.inspect
  rs = ms.reported_calculator_version
  if nil==rs
    puts "REPORTED_CALCULATOR_VERSION IS NIL"
  end
  puts "RS = " + rs
  version = ModelStructure.instance.reported_calculator_version[/\d+\.\d+\.\d+/]
  puts "Successfully created version"
  print "Version = " + version + "\n"
rescue LoadError => e
  # Otherwise we need to take it from the changes file
  print "Loading from changes file\n"
  version = IO.readlines(File.join(File.dirname(__FILE__),"CHANGES")).join[/#\s*(\d+\.\d+\.\d+)\b/,1]
end

if `git status --porcelain | wc -l`.to_i > 0
  version = version + "pre"
end

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
