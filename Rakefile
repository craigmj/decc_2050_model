task :default => :generate_new_mode_from_excel

desc "Update all the code, based on the spreadsheet in spreadsheet/model.xlsx"
task :generate_new_mode_from_excel => [:clean,'ext/model.c',:put_generated_files_in_right_place,:fix_test_require, :change_last_modified_date]

desc "Generates c version of the model"
file 'ext/model.c' do
  require 'excel_to_code'
  command = ExcelToC.new

  command.excel_file = "spreadsheet/model.xlsx"
  command.output_directory = 'ext'
  command.output_name = 'model'

  # CMJ: These rows should correspond to the rows in Control sheet where the 'model values' are
  # set. The e#{r} here defines the COLUMN.
  command.cells_that_can_be_set_at_runtime = { "Control" => (5.upto(64).to_a.map { |r| "e#{r}" }) }

  command.cells_to_keep = {
    # CMJ: The names, limits, 10 worders, long descriptions
    # d#{r} are the LEVER DESCRIPTIONS
    # f#{r} are the LIMITS
    # h..k#{r} are the trajectory descriptions
    # az..bc#{r} are the longer trajectory descriptions used in the Story 
    "Control" => (5.upto(57).to_a.map { |r| ["d#{r}","f#{r}","h#{r}","i#{r}","j#{r}","k#{r}",
        "az#{r}","ba#{r}","bb#{r}","bc#{r}"] }).flatten, 
    "Intermediate output" => :all, 
    # "CostPerCapita" => :all, 
    # "Land Use" => :all, 
    "Flows" => :all, 
    # CMJ : We don't have AQOutputs sheet
    # "AQ Outputs" => :all, 
  }
  
  # Add the version number
  # CMJ: This is the cell on the Control sheet where our version number is recorded
  command.cells_to_keep["Control"] << "a1"
  
  # Add the example pathways
  # CMJ: These are example pathways that are pre-programmed on the webapp
  # CMJ: We don't have any at the moment, so we'll just skip this entirely.
  # rows = (4..67).to_a
  # ('m'..'z').to_a.push('aa','ab').each do |column|
  #   rows.each do |row|
  #     command.cells_to_keep["Control"].push("#{column}#{row}")
  #   end
  # end

  command.actually_compile_code = true
  command.actually_run_tests = true

  command.run_in_memory = true

  command.go!
end

# Put things in their place
task :put_generated_files_in_right_place do
  require 'ffi'
  libfile = FFI.map_library_name('model')
  if File.exists?(File.join('ext',libfile))
    mv File.join('ext',libfile), File.join('lib','model',libfile)
  end

  mv 'ext/model.rb', 'lib/model/model.rb'
  mv 'ext/test_model.rb', 'test/test_model.rb'
  rm 'ext/Makefile'
end

task :fix_test_require do
  test = IO.readlines('test/test_model.rb').join
  test.gsub!("require_relative 'model'","require_relative '../lib/model'")
  File.open('test/test_model.rb','w') { |f| f.puts test }
end

desc "This updates the Model.last_modified_date attribute to the current time"
task :change_last_modified_date do
  File.open('lib/model/model_version.rb','w') do |f|
    f.puts "def Model.last_modified_date() @last_modified_date ||= Time.utc(*#{Time.now.to_a}); end"
  end
end

desc "Remove all the spreadsheet code, ready to be regenerated"
task :clean do
  rm 'lib/model/model.rb', :force => true
  rm 'test/test_model.rb', :force => true
  rm 'ext/model.c', :force => true
end
