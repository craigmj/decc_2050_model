require_relative 'model'
require 'singleton'

class ModelStructure < ModelUtilities
  include Singleton
  
  attr_accessor :excel, :choices
    
  def initialize
    @control_rows = (8..46).to_a

    @excel = ModelShim.new
    @choices = []
    types.each_with_index do |choice_type,i|
      case choice_type
      when nil, 0.0; next
      when /[abcd]/i; choices << ModelAlternative.new(i,names[i],choice_type,descriptions[i],long_descriptions[i])
      else; choices << ModelChoice.new(i,names[i],choice_type,descriptions[i],long_descriptions[i])
      end
    end

    puts "--- SUPPLY CHOICES ---"
    supply_choices.each { |c| puts c.name }
    puts "---"

  end
  
  def reported_calculator_version
    # CMJ: This contains the position of the version information for the calculator
    excel.control_a1
  end
  
  def types
    # CMJ: Map to the types
    @types ||= @control_rows.map { |row| excel.send("control_f#{row}") }
  end
  
  def names
    # CMJ: Map to the names of each option
    @names ||= @control_rows.map { |row| excel.send("control_d#{row}") }
  end

  def descriptions
    # CMJ: Short descriptions
    @descriptions ||= @control_rows.map { |row| [r("control_h#{row}"),
      r("control_i#{row}"),r("control_j#{row}"),r("control_k#{row}")] }
  end

  def long_descriptions
    # CMJ: Long descriptions
    @long_descriptions ||=  @control_rows.map  { |row| [
      r("control_az#{row}"), r("control_ba#{row}"),r("control_bb#{row}"),r("control_bc#{row}")] }
  end
    
  def demand_choices
    # CMJ: Subset of choices that are demand
    choices[18...choices.length]
  end
  
  def supply_choices
    # CMJ: Subset of choices that are supply
    choices[0..17]
  end
  
  def geosequestration_choice
    # CMJ: Single choice that is geosequestration - pure 'suck CO2 out of atmosphere'
    # choices[40]
    choices[8]
  end
  
  def balancing_choice
    # CMJ: Lever for interconnections in storage
    # choices[41]
    choices[8]
  end

  def indigenous_fossil_fuel_production
    # @TODO CMJ: All iffp - might be split in our case 
    # choices[42]
    choices[8]
  end
  
  def example_pathways
    @example_pathways ||= generate_example_pathways
  end
  
  def generate_example_pathways
    # CMJ: These are example pathways pre-configured. We don't have any.
    ('m'..'z').to_a.push('aa','ab').map do |column|
      {
        name: r("control_#{column}4"),
        code: convert_float_to_letters(@control_rows.map { |row| r("control_#{column}#{row}") }).join,
        description: wrap(r("control_#{column}58")),
        wiki: r("control_#{column}59"),
        cost_comparator: (c = r("control_#{column}60"); c.is_a?(Numeric) ? c : nil )
      }
    end
    
  end

  # FIXME: Only wraps one line into two
  def wrap(string, wrap_at_length = 45)
    return "" unless string
    string = string.to_s
    length_so_far = 0
    string.split.partition do |word| 
      length_so_far = length_so_far + word.length + 1 # +1 for the trailing space 
      length_so_far > wrap_at_length
    end.reverse.map { |a| a.join(" ") }.join("\n")
  end

end
