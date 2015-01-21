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
    0 => 'economic_growth',
    2 => 'nuclear',
    3 => 'coal_ccs', 
    4 => 'natural_gas_turbines',
    5 => 'onshore_wind',
    6 => 'res_com_solar_pv',
    7 => 'concentrated_solar_pv',
    8 => 'centralized_pv',
    9 => 'hydro',
    10 => 'livestock',
    11 => 'land_use',
    12 => 'waste',
    13 => 'waste_biofuels',
    14 => 'natural_gas',
    15 => 'liquid_biofuel_share',
    16 => 'coal_to_liquids_capacity',
    17 => 'gas_material_share',
    18 => 'ccs',
    19 => 'gas_to_liquids_capacity',
    20 => 'refinery_capacity',
    21 => '',
    22 => 'passenger_mode_shift',
    23 => 'passenger_reduced_demand',
    24 => 'transport_shift_to_lower_emissions_tech',
    25 => 'vehicle_efficiency_improvement',
    26 => 'vehicle_occupancy',
    27 => 'freight_mode_shift',
    28 => 'freight_efficiency_improvement',
    29 => 'household_electrification',
    30 => 'household_lighting_waterheating_appliances',
    31 => 'household_heating_cooking_refrigeration',
    32 => 'household_swh',
    33 => 'business_energy_efficiency',
    34 => 'industrial_fuel_migration_gas',
    35 => 'industrial_combined_heat_and_power',
    36 => 'industrial_public_services',
    37 => 'commercial_retrofitting_lights_hvac',
    38 => 'commercial_tech_shares_mix',
    39 => 'commercial_building_codes'
  }

  def doc
    "za_#{NUMBER_TO_DOC_MAP[number] || number}.pdf"
  end
end
