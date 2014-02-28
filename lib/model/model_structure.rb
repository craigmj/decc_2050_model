require_relative 'model'
require 'singleton'

class ModelStructure < ModelUtilities
  include Singleton
  
  attr_accessor :excel, :choices
    
  def initialize
    @excel = ModelShim.new
    @choices = []
    types.each_with_index do |choice_type,i|
      case choice_type
      when nil, 0.0; next
      when /[abcd]/i; choices << ModelAlternative.new(i,names[i],choice_type,descriptions[i],long_descriptions[i])
      else; choices << ModelChoice.new(i,names[i],choice_type,descriptions[i],long_descriptions[i])
      end
    end
  end
  
  def reported_calculator_version
    # CMJ: This contains the position of the version information for the calculator
    excel.control_a1
  end
  
  def types
    # CMJ: Map to the types
    @types ||= (5..46).to_a.map { |row| excel.send("control_f#{row}") }
  end
  
  def names
    # CMJ: Map to the names of each option
    @names ||= (5..46).to_a.map { |row| excel.send("control_d#{row}") }
  end

  def descriptions
    # CMJ: Short descriptions
    @descriptions ||= (5..46).to_a.map { |row| [r("control_h#{row}"),
      r("control_i#{row}"),r("control_j#{row}"),r("control_k#{row}")] }
  end

  def long_descriptions
    # CMJ: Long descriptions
    @long_descriptions ||=  (5..46).to_a.map  { |row| [
      r("control_az#{row}"), r("control_ba#{row}"),r("control_bb#{row}"),r("control_bc#{row}")] }
  end
    
  def demand_choices
    # CMJ: Subset of choices that are demand
    choices[29..46]
  end
  
  def supply_choices
    # CMJ: Subset of choices that are supply
    choices[8..27]
  end
  
  def geosequestration_choice
    # CMJ: Single choice that is geosequestration - pure 'suck CO2 out of atmosphere'
    # choices[40]
    choices[1]
  end
  
  def balancing_choice
    # CMJ: Lever for interconnections in storage
    # choices[41]
    choices[2]
  end

  def indigenous_fossil_fuel_production
    # @TODO CMJ: All iffp - might be split in our case 
    # choices[42]
    choices[3]
  end
  
  def example_pathways
    @example_pathways ||= generate_example_pathways
  end
  
  def generate_example_pathways
    # CMJ: These are example pathways pre-configured. We don't have any.
    ('m'..'z').to_a.push('aa','ab').map do |column|
      {
        name: r("control_#{column}4"),
        code: convert_float_to_letters((5..64).map { |row| r("control_#{column}#{row}") }).join,
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
