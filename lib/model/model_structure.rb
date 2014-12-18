require_relative 'model'
require 'singleton'

class ModelStructure < ModelUtilities
  include Singleton
  
  attr_accessor :excel, :choices
    
  def initialize
    @control_rows = (8..46).to_a

    @excel = Model.new
    @choices = []
    types.each_with_index do |choice_type,i|
      grp = getGroup(i)
      sub = getSubgroup(i)
      puts "#{i} - group = #{grp}, subgroup = #{sub}"
      case choice_type
      when nil, 0.0; next
      when /[abcd]/i; choices << ModelAlternative.new(i,grp,sub,names[i],choice_type,descriptions[i],long_descriptions[i])
      else; choices << ModelChoice.new(i,grp,sub,names[i],choice_type,descriptions[i],long_descriptions[i])
      end
    end

    # puts "--- SUPPLY CHOICES ---"
    # supply_choices.each { |c| puts "#{c.group}:#{c.subgroup}:#{c.name}" }
    # puts "---"
    # exit
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

  def getGroup(i)
    if (-1==i) 
      "-no group-"
    else
      row = @control_rows[i]
      g = excel.send("control_a#{row}")
      if ""==g or 0==g or nil==g
        getGroup(i-1)
      else
        g
      end
    end
  end

  def getSubgroup(i)
    if (-1==i)
      return "-no subgroup-"
    end
    row = @control_rows[i]
    s = excel.send("control_b#{row}")
    if ""==s or 0==s or nil==s
      return getSubgroup(i-1)
    else
      s
    end
  end

  def subgroup
    # CMJ: Sub grouping of levers
    @subgroup ||= @control_rows.map { |row| excel.send("control_c#{row}") }
  end

  def descriptions
    # CMJ: Short descriptions
    @descriptions ||= @control_rows.map { |row| [
      r("control_h#{row}"),
      r("control_i#{row}"),
      r("control_j#{row}"),
      r("control_k#{row}")] 
    }
  end

  def long_descriptions
    # CMJ: Long descriptions
    @long_descriptions ||=  @control_rows.map  { |row| [
      r("control_h#{row}"), 
      r("control_i#{row}"),
      r("control_j#{row}"),
      r("control_k#{row}")] 
    }
  end
    
  def demand_choices
    # CMJ: Subset of choices that are demand
    choices[19...choices.length]
  end
  
  def supply_choices
    # CMJ: Subset of choices that are supply
    choices[0..18]
  end
  
  def geosequestration_choice
    # CMJ: Single choice that is geosequestration - 
    # pure 'suck CO2 out of atmosphere'
    # choices[40]
    # AM140904 - This doesn't apply to RSA
    # Should this be choices[8]???
    # @TODO
    choices[8]
  end
  
  def balancing_choice
    # CMJ: Lever for interconnections in storage
    # choices[41]
    # AM140904 - This doesn't apply to RSA
    # Should this be choices[8]???
    # @TODO    
    choices[8]
  end

  def indigenous_fossil_fuel_production
    # @TODO CMJ: All iffp - might be split in our case 
    # choices[42]
    # AM140904 - This doesn't apply to RSA
    # Should this be choices[8]???
    # @TODO    
    choices[8]
  end
  
  def example_pathways
    @example_pathways ||= generate_example_pathways
  end
  
  def generate_example_pathways
    # AM140904 - This doesn't apply to RSA
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
