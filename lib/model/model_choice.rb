class ModelChoice
  
  attr_accessor :number,:group, :subgroup, :name, :type, :descriptions, :long_descriptions
  
  def initialize(number,group,subgroup,name,type,descriptions,long_descriptions)
    @number, @group, @subgroup, @name, @type, @descriptions, @long_descriptions = 
        number, group, subgroup, name, type, descriptions, long_descriptions
  end
  
  def incremental_or_alternative
    'incremental'
  end
  
  def levels
    1.upto(type.to_i)
  end

  NUMBER_TO_DOC_MAP = {
    # 0 => 0,
    # 7 => 'TidalStream',
    # 8 => 'TidalRange',
    # 27 => 'FuelCellsOrBatteries',
    # 28 => 25,
    # 29 => 'InternationalAviation',
    # 30 => 'InternationalShipping',
    # 32 => 29,
    # 51 => 48 
  }

  def doc
    "za_#{NUMBER_TO_DOC_MAP[number] || number}.pdf"
  end
end
