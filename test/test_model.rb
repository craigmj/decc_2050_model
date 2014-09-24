# coding: utf-8
# Test for model
require 'minitest/autorun'
require_relative '../lib/model'

class TestModel < Minitest::Unit::TestCase
  def self.runnable_methods
    puts 'Overriding minitest to run tests in a defined order'
    methods = methods_matching(/^test_/)
  end
  def worksheet; @worksheet ||= init_spreadsheet; end
  def init_spreadsheet; ModelShim.new end
  def test_control_a5; assert_equal("Economy and Population", worksheet.control_a5); end
  def test_control_b5; assert_equal("Growth Path", worksheet.control_b5); end
  def test_control_d5; assert_equal("Population growth", worksheet.control_d5); end
  def test_control_f5; assert_in_delta(1.0, worksheet.control_f5, 0.002); end
  def test_control_d6; assert_equal("Economic growth", worksheet.control_d6); end
  def test_control_f6; assert_in_delta(1.0, worksheet.control_f6, 0.002); end
  def test_control_a7; assert_equal("Supply", worksheet.control_a7); end
  def test_control_a8; assert_equal("Electricity Generation", worksheet.control_a8); end
  def test_control_b8; assert_equal("South African Electricity generation", worksheet.control_b8); end
  def test_control_d8; assert_equal("Nuclear power stations", worksheet.control_d8); end
  def test_control_f8; assert_in_epsilon(4.0, worksheet.control_f8, 0.002); end
  def test_control_h8; assert_equal("Koeberg retires in 2048", worksheet.control_h8); end
  def test_control_i8; assert_equal("Build a total of 9600MW by 2030. Additional 1600MW by 2050 for a total of 14600MW. Koeberg is not retired. ", worksheet.control_i8); end
  def test_control_j8; assert_equal("Build an additional 21000MW by 2030. Add another 6400MW by 2050 for a total of 31000MW. Koeberg is not retired. ", worksheet.control_j8); end
  def test_control_k8; assert_equal("Build a total of 40000MW by 2030. Additional 20000MW by 2050 for a total of 61800MW by 2050. Koeberg is not retired. ", worksheet.control_k8); end
  def test_control_d9; assert_equal("Coal with Carbon Capture and Storage", worksheet.control_d9); end
  def test_control_f9; assert_in_epsilon(4.0, worksheet.control_f9, 0.002); end
  def test_control_h9; assert_equal("No coal power with CCS technology. Only the 124MW equivalent pilot operates by 2020.", worksheet.control_h9); end
  def test_control_i9; assert_equal("In addition to pilot project. 500MW of coal power with CCS is built by 2025 and another 500MW by 2030. Capacity increases to 5000MW of coal with CCS by 2050. ", worksheet.control_i9); end
  def test_control_j9; assert_equal("A total of 2000MW of coal power with CCS is built by 2030. Capacity increases to 10000MW by 2050", worksheet.control_j9); end
  def test_control_k9; assert_equal("A total of 5000MW of coal CCS is built by 2030. And the capacity increases to 20000MW by 2050. ", worksheet.control_k9); end
  def test_control_d10; assert_equal("Natural Gas Turbines", worksheet.control_d10); end
  def test_control_f10; assert_in_epsilon(4.0, worksheet.control_f10, 0.002); end
  def test_control_h10; assert_equal("No new CCGT capacity", worksheet.control_h10); end
  def test_control_i10; assert_equal("A total of 2370MW is built by 2030. This doubles to 4740MW by 2050.", worksheet.control_i10); end
  def test_control_j10; assert_equal("A total of 4266MW of CCGT is built by 2030. This then doubles to 8532MW by 2050.", worksheet.control_j10); end
  def test_control_k10; assert_equal("This doubles level 3. A total of 8532MW by 2030 and 17064MW by 2050. ", worksheet.control_k10); end
  def test_control_d11; assert_equal("Onshore wind", worksheet.control_d11); end
  def test_control_f11; assert_in_epsilon(4.0, worksheet.control_f11, 0.002); end
  def test_control_h11; assert_equal("Only REIPPP wind farms operate. About 1983MW. Capacity is replaced at the end of their lifespan.", worksheet.control_h11); end
  def test_control_i11; assert_equal("A total of 8400MW is built by 2030 (REIPP is included). This capacity is then doubled to 16800MW by 2050. ", worksheet.control_i11); end
  def test_control_j11; assert_equal("A total of 16500MW is built by 2030 and this doubles to 33000MW by 2050", worksheet.control_j11); end
  def test_control_k11; assert_equal("Wind capacity reaches 28000MW by 2030 and this doubles to 56000MW by 2050 considered optimistic wind potential. ", worksheet.control_k11); end
  def test_control_d12; assert_equal("Residential and commercial Solar PV", worksheet.control_d12); end
  def test_control_f12; assert_in_epsilon(4.0, worksheet.control_f12, 0.002); end
  def test_control_h12; assert_equal("Assumes a very low rate of development.", worksheet.control_h12); end
  def test_control_i12; assert_equal("50% of residential homes have a solar PV system by 2050. And solar PV adoption is 5% for the commercial sector (about 9GW by 2050)", worksheet.control_i12); end
  def test_control_j12; assert_equal("75% of residential homes have a solar PV system by 2050. Commercial sector solar PV adoption rate is 7% (about 15GW by 2050)", worksheet.control_j12); end
  def test_control_k12; assert_equal("All residential homes have a solar PV system by 2050. Commercial sector solar PV adoption rate is 10% (about 20GW by 2050)", worksheet.control_k12); end
  def test_control_d13; assert_equal("Concentrated Solar Power", worksheet.control_d13); end
  def test_control_f13; assert_in_epsilon(4.0, worksheet.control_f13, 0.002); end
  def test_control_h13; assert_equal("Only 400MW from the REIPPP program is built and operates. Capacity is assumed to be replaced at end of life. ", worksheet.control_h13); end
  def test_control_i13; assert_equal("A total of 1200MW of capacity is built y 2030. The installed capacity is doubled to 2400MW by 2050", worksheet.control_i13); end
  def test_control_j13; assert_equal("A total of 8950MW is built by 2030. This is doubed to 17900MW by 2050. ", worksheet.control_j13); end
  def test_control_k13; assert_equal("Extreme build rate - a total of 136900MW is built by 2030, this doubles to 278300MW by 2050 (half of the technical limit). ", worksheet.control_k13); end
  def test_control_d14; assert_equal("Centralised PV", worksheet.control_d14); end
  def test_control_f14; assert_in_epsilon(4.0, worksheet.control_f14, 0.002); end
  def test_control_h14; assert_equal("Only REIPPP solar PV capcity is built. A total of 1448MW is built and operates by 2015. Capacity assumed to be replaced at end of life. ", worksheet.control_h14); end
  def test_control_i14; assert_equal("Total of 8400MW by 2030. Capacity doubles to 16800MW by 2050. ", worksheet.control_i14); end
  def test_control_j14; assert_equal("A total of 8820MW is built by 2030 as per IRP Adj. Emissions. This doubles to 17640MW  by 2050. ", worksheet.control_j14); end
  def test_control_k14; assert_equal("Extreme build rate - a total of 136900MW is built by 2030, this doubles to 27800MW by 2050 (half of the technical limit). ", worksheet.control_k14); end
  def test_control_d15; assert_equal("Hydroelectric power stations", worksheet.control_d15); end
  def test_control_f15; assert_in_epsilon(4.0, worksheet.control_f15, 0.002); end
  def test_control_h15; assert_equal("Only 670MW of local and 1500MW of imported Hydro capacity is utilised. ", worksheet.control_h15); end
  def test_control_i15; assert_equal("Import new hydro power from the region -  a total of 2609MW by 2025. This doubles to 5218MW by 2050. ", worksheet.control_i15); end
  def test_control_j15; assert_equal("A total capacity of 3474MW is imported by 2030. This is assumed to double to 6948MW by 2050.", worksheet.control_j15); end
  def test_control_k15; assert_equal("This level assumes we are able to import much more. Double level 3to 13896MW by 2050. ", worksheet.control_k15); end
  def test_control_a16; assert_equal("Agriculture and Land use", worksheet.control_a16); end
  def test_control_b16; assert_equal("Agriculture and Land use", worksheet.control_b16); end
  def test_control_d16; assert_equal("Biofuels", worksheet.control_d16); end
  def test_control_f16; assert_in_epsilon(4.0, worksheet.control_f16, 0.002); end
  def test_control_h16; assert_equal("1.4% of cropland is used to produce biofuels", worksheet.control_h16); end
  def test_control_i16; assert_equal("5% of cropland is used to produce biofuels", worksheet.control_i16); end
  def test_control_j16; assert_equal("10% of cropland is used to produce biofuels", worksheet.control_j16); end
  def test_control_k16; assert_equal("14% of cropland is used to produce biofuels", worksheet.control_k16); end
  def test_control_d17; assert_equal("Livestock Management", worksheet.control_d17); end
  def test_control_f17; assert_in_epsilon(4.0, worksheet.control_f17, 0.002); end
  def test_control_h17; assert_equal("The commercial dairy cow population grows slightly from 0,8 million in 2006 to 1.4 million by 2050. This is an annual growth of 1.7%.", worksheet.control_h17); end
  def test_control_i17; assert_equal("It is assumed that dairy products becomes a bit less popular hence commercial cattle’s grow by 1.4% annually and results in 1.3 million by 2050.", worksheet.control_i17); end
  def test_control_j17; assert_equal("The number of commercial dairy cattle grows by 1.1% annually and results in 1.2 million by 2050.", worksheet.control_j17); end
  def test_control_k17; assert_equal("The number of commercial dairy cattle grows by 0.9% annually and results in 1.1 million by 2050.", worksheet.control_k17); end
  def test_control_d18; assert_equal("Land Use ", worksheet.control_d18); end
  def test_control_f18; assert_in_epsilon(3.0, worksheet.control_f18, 0.002); end
  def test_control_h18; assert_equal("1.4% of cropland is used to produce biofuels", worksheet.control_h18); end
  def test_control_i18; assert_equal("5% of cropland is used to produce biofuels", worksheet.control_i18); end
  def test_control_j18; assert_equal("10% of cropland is used to produce biofuels", worksheet.control_j18); end
  def test_control_k18; assert_equal("14% of cropland is used to produce biofuels", worksheet.control_k18); end
  def test_control_d19; assert_equal("Waste ", worksheet.control_d19); end
  def test_control_f19; assert_in_epsilon(4.0, worksheet.control_f19, 0.002); end
  def test_control_h19; assert_equal("10% of waste is recycled, 90% goes to land fill. Only 10% of methane gas from landfill  is captured, 75% of which is used to produce energy (the remaining is flurred)", worksheet.control_h19); end
  def test_control_i19; assert_equal("12% of waste is recycled, 88% goes to land fill. Gas capturign efforts increase and 30% of methane gas from landfill  is captured, 80% of which is used to produce energy (the remaining is flurred)", worksheet.control_i19); end
  def test_control_j19; assert_equal("15% of waste is recycled, 85% goes to land fill. Gas capturing efforts increase and 50% of methane gas from landfill  is captured, 85% of which is used to produce energy (the remaining is flurred)", worksheet.control_j19); end
  def test_control_k19; assert_equal("24% of waste is recycled, 76% goes to land fill. Gas capturing efforts increase and 70% of methane gas from landfill  is captured, 90% of which is used to produce energy (the remaining is flurred)", worksheet.control_k19); end
  def test_control_a21; assert_equal("Gas supply", worksheet.control_a21); end
  def test_control_b21; assert_equal("Natural gas ", worksheet.control_b21); end
  def test_control_d21; assert_equal("Supply of natural gas", worksheet.control_d21); end
  def test_control_f21; assert_in_epsilon(2.0, worksheet.control_f21, 0.002); end
  def test_control_h21; assert_equal("Continue to import from Mozambique. Some production from Mossel Bay.", worksheet.control_h21); end
  def test_control_i21; assert_equal("Shale Gas extraction is assumed to take place. ", worksheet.control_i21); end
  def test_control_a22; assert_equal("Liquid Fuel Supply", worksheet.control_a22); end
  def test_control_b22; assert_equal("Biofuels", worksheet.control_b22); end
  def test_control_d22; assert_equal("Liquid biofuel share", worksheet.control_d22); end
  def test_control_f22; assert_in_epsilon(4.0, worksheet.control_f22, 0.002); end
  def test_control_h22; assert_equal("No share specified. Production  occurs ad hoc.", worksheet.control_h22); end
  def test_control_i22; assert_equal("2% share of liquid fuel demand.", worksheet.control_i22); end
  def test_control_j22; assert_equal("5% share of liquid fuel demand.", worksheet.control_j22); end
  def test_control_k22; assert_equal("10% share of liquid fuel demand.", worksheet.control_k22); end
  def test_control_b23; assert_equal("Petroleum CTL", worksheet.control_b23); end
  def test_control_d23; assert_equal("Coal-To-Liquids capacity", worksheet.control_d23); end
  def test_control_f23; assert_in_epsilon(4.0, worksheet.control_f23, 0.002); end
  def test_control_h23; assert_equal("Doubling of capacity by 2030 with no further expansion", worksheet.control_h23); end
  def test_control_i23; assert_equal("An increase of roughly 60% in capacity by 2020", worksheet.control_i23); end
  def test_control_j23; assert_equal("Existing facilities with no further expansion.", worksheet.control_j23); end
  def test_control_k23; assert_equal("Decomissioning of facilities by 2040 to a 50% reduction by 2050.", worksheet.control_k23); end
  def test_control_d24; assert_equal("Gas material share", worksheet.control_d24); end
  def test_control_f24; assert_in_epsilon(2.0, worksheet.control_f24, 0.002); end
  def test_control_h24; assert_equal("Existing gas feedstock share of 3% in CTL process.", worksheet.control_h24); end
  def test_control_i24; assert_equal("Increase of gas feedstock share in CTL process  to 20%.", worksheet.control_i24); end
  def test_control_d25; assert_equal("Carbon Capture and Storage", worksheet.control_d25); end
  def test_control_f25; assert_in_epsilon(2.0, worksheet.control_f25, 0.002); end
  def test_control_h25; assert_equal("No CCS", worksheet.control_h25); end
  def test_control_i25; assert_equal("25% of CO2 emissions suitable for CCS is sequestered by 2025. This amount increases to 50% by 2040.", worksheet.control_i25); end
  def test_control_b26; assert_equal("Petroleum GTL", worksheet.control_b26); end
  def test_control_d26; assert_equal("Gas-To-Liquids capacity", worksheet.control_d26); end
  def test_control_f26; assert_in_epsilon(4.0, worksheet.control_f26, 0.002); end
  def test_control_h26; assert_equal("Tripling of existing capacity by 2035 which is quadrupled by 2040 with no further expansion.", worksheet.control_h26); end
  def test_control_i26; assert_equal("Doubling of capacity by 2025 with no further expansion.", worksheet.control_i26); end
  def test_control_j26; assert_equal("Existing facilities with no further expansion.", worksheet.control_j26); end
  def test_control_k26; assert_equal("Decomissioning of facilities to nil GTL capacity by 2035.", worksheet.control_k26); end
  def test_control_b27; assert_equal("Petroleum Crude Refineries", worksheet.control_b27); end
  def test_control_d27; assert_equal("Refinery capacity", worksheet.control_d27); end
  def test_control_f27; assert_in_epsilon(4.0, worksheet.control_f27, 0.002); end
  def test_control_h27; assert_equal("Approximate doubling  of capacity by 2035 with no further expansion.", worksheet.control_h27); end
  def test_control_i27; assert_equal("Approximate increase  of 70%  in capacity by 2025 with no further expansion.", worksheet.control_i27); end
  def test_control_j27; assert_equal("Existing facilities with no further expansion.", worksheet.control_j27); end
  def test_control_k27; assert_equal("Decomissioning of facilities by 2035 to nil capacity by 2045.", worksheet.control_k27); end
  def test_control_a28; assert_equal("Demand", worksheet.control_a28); end
  def test_control_a29; assert_equal("Transport", worksheet.control_a29); end
  def test_control_b29; assert_equal("Passenger Travel", worksheet.control_b29); end
  def test_control_d29; assert_equal(" Behaviour Change(%)", worksheet.control_d29); end
  def test_control_f29; assert_in_epsilon(4.0, worksheet.control_f29, 0.002); end
  def test_control_h29; assert_equal("Share of passenger kilometres met by public transport will be 24% by 2050", worksheet.control_h29); end
  def test_control_i29; assert_equal("By 2050, the share of private travel is assumed to have dropped by 7% relative to the base year of 2006. Private travel makes up 38% whereas public transport accounts for 62%.", worksheet.control_i29); end
  def test_control_j29; assert_equal("71% of passenger-km are met by public transport. ", worksheet.control_j29); end
  def test_control_k29; assert_equal("80% of passenger travel demand met being met by public transport", worksheet.control_k29); end
  def test_control_d30; assert_equal("Reduced travel demand", worksheet.control_d30); end
  def test_control_f30; assert_in_epsilon(4.0, worksheet.control_f30, 0.002); end
  def test_control_h30; assert_equal("Nothing is done to change the landscape of our cities, as such there is no energy demand reduction.  ", worksheet.control_h30); end
  def test_control_i30; assert_equal("It is assumed that 5% aggregate energy demand reduction is achieved as cities continue to accommodate people closer to economic hubs", worksheet.control_i30); end
  def test_control_j30; assert_equal("It is assumed that 10% of aggregate energy demand reduction is achieved. ", worksheet.control_j30); end
  def test_control_k30; assert_equal("It is assumed that 30% of energy demand is reduced.", worksheet.control_k30); end
  def test_control_d31; assert_equal("Shift to lower emissions technologies", worksheet.control_d31); end
  def test_control_f31; assert_in_epsilon(4.0, worksheet.control_f31, 0.002); end
  def test_control_h31; assert_equal("There is no introduction of  hydrogen and compressed natural gas. 5% of private vehicles sold in 2050 are hybrids and a mere 1% is purely battery powered electric vehicles", worksheet.control_h31); end
  def test_control_i31; assert_equal("5% and 1% of vehicles sold in 2050 will be powered by electric and fuel cell respectively ", worksheet.control_i31); end
  def test_control_j31; assert_equal("10% of vehicles sold in 2050 will be electric vehicles while a mere 5% will be fuel cell powered. ", worksheet.control_j31); end
  def test_control_k31; assert_equal("15% and 10% of electric and fuel cell powered vehicles will be sold by 2050 respectively. 70% of private fleet sales will be hybrids", worksheet.control_k31); end
  def test_control_d32; assert_equal("Vehicle efficiency improvement", worksheet.control_d32); end
  def test_control_f32; assert_in_epsilon(4.0, worksheet.control_f32, 0.002); end
  def test_control_h32; assert_equal("It is assumed that 0.1% of efficiency will be gained annually, resulting in overall efficiency gain of 4%  by 2050.", worksheet.control_h32); end
  def test_control_i32; assert_equal("It is assumed that 0.2% of efficiency will be gained annually, resulting in overall efficiency gain of 22%  by 2050.", worksheet.control_i32); end
  def test_control_j32; assert_equal("It is assumed that 0.5 % of efficiency will be gained annually, resulting in overall efficiency gain of 44%  by 2050.", worksheet.control_j32); end
  def test_control_k32; assert_equal("It is assumed that 1% of efficiency will be gained annually, resulting in overall efficiency gain of 66%  by 2050.", worksheet.control_k32); end
  def test_control_d33; assert_equal("Vehicle occupancy", worksheet.control_d33); end
  def test_control_f33; assert_in_epsilon(4.0, worksheet.control_f33, 0.002); end
  def test_control_h33; assert_equal("No changes to vehicle occupancy", worksheet.control_h33); end
  def test_control_i33; assert_equal("minibus, buses and private vehicle occupancies are increased to 18, 30  and 1.5 people per vehicle.", worksheet.control_i33); end
  def test_control_j33; assert_equal("minibus, buses and private vehicle occupancies are increased to 20, 50  and 1.8 people per vehicle.", worksheet.control_j33); end
  def test_control_k33; assert_equal("minibus, buses and private vehicle occupancies are increased to 20, 50  and 1.8 people per vehicle.", worksheet.control_k33); end
  def test_control_b34; assert_equal("Freight Transportation", worksheet.control_b34); end
  def test_control_d34; assert_equal("Freight mode shift", worksheet.control_d34); end
  def test_control_f34; assert_in_epsilon(4.0, worksheet.control_f34, 0.002); end
  def test_control_h34; assert_equal("the proportion of ton-km serviced by road vs rail transportation stays at 70% and 30% respectively by 2050. ", worksheet.control_h34); end
  def test_control_i34; assert_equal("Level 2 assumes that rail corridor gains 10% of the current heavy duty vehicles' market share while rail other gains a mere 5% of medium duty vehicles’ market share by 2050. ", worksheet.control_i34); end
  def test_control_j34; assert_equal("50% of goods are moved by road. ", worksheet.control_j34); end
  def test_control_k34; assert_equal("38% of ton-km will be moved by road and the remaining 62%  by rail", worksheet.control_k34); end
  def test_control_d35; assert_equal("Freight vehicle efficiency improvement", worksheet.control_d35); end
  def test_control_f35; assert_in_epsilon(4.0, worksheet.control_f35, 0.002); end
  def test_control_h35; assert_equal("No vehicle efficiency and operational efficiency are assumed until 2050.", worksheet.control_h35); end
  def test_control_i35; assert_equal("0.1% vehicle efficiency improvement for road vehicles and 0.1% efficiency improvements.", worksheet.control_i35); end
  def test_control_j35; assert_equal("0.5% road vehicles efficiency improvement for road vehicles and 0.1% efficiency improvements.", worksheet.control_j35); end
  def test_control_k35; assert_equal("1% road vehicles efficiency improvement for road vehicles and 0.5% efficiency improvements.", worksheet.control_k35); end
  def test_control_a36; assert_equal("Households", worksheet.control_a36); end
  def test_control_b36; assert_equal("Electrification", worksheet.control_b36); end
  def test_control_d36; assert_equal("Electrification of households across South Africa", worksheet.control_d36); end
  def test_control_f36; assert_in_epsilon(4.0, worksheet.control_f36, 0.002); end
  def test_control_h36; assert_equal("100% by 2050 for everyone", worksheet.control_h36); end
  def test_control_i36; assert_equal("100% by 2040", worksheet.control_i36); end
  def test_control_j36; assert_equal("100% by 2030", worksheet.control_j36); end
  def test_control_k36; assert_equal("100% by 2020. ", worksheet.control_k36); end
  def test_control_d37; assert_equal("Lighting, Water heating, Appliances", worksheet.control_d37); end
  def test_control_f37; assert_in_epsilon(4.0, worksheet.control_f37, 0.002); end
  def test_control_h37; assert_equal("As is in 2006. Lights are mainly incandescent or flourescent. Wtaer heating is coal or wood for the poor and mainly electric for mid to high income.", worksheet.control_h37); end
  def test_control_i37; assert_equal("By 2050: all lights are LEDs. 50% of poor households use SWHs, the rest use electric geysers. 50% or more of mid and high income groups use heat pumps, while the remaining are split between electric geysers or SWHs.  General appliances are energy efficient only.", worksheet.control_i37); end
  def test_control_j37; assert_equal("By 2040: all lights are LEDs. Low income sees more poorer households with SWHs – 75%. Mid income households have predominately moved to heat pumps as have the high income groups.  General appliances are energy efficient only.", worksheet.control_j37); end
  def test_control_k37; assert_equal("By 2030: All houses use LEDs. All low income groups have SWHs for water heating, and mid and high income groups have moved mostly to heat pumps with the remaining using SWHs. General appliances are energy efficient only.", worksheet.control_k37); end
  def test_control_d38; assert_equal("Space heating, Refridgeration, cooking", worksheet.control_d38); end
  def test_control_f38; assert_in_epsilon(4.0, worksheet.control_f38, 0.002); end
  def test_control_h38; assert_equal("As is in 2006. Most heaters are electric. Poorer households use coal or wood for heating. Cooking is mostly electric, except for low income households who use wood or coal stoves. ", worksheet.control_h38); end
  def test_control_i38; assert_equal("By 2050: People shift to using electric heaters and heat pumps (more efficient) and LPG heaters. In cooking people shift to using electric or LPG for cooking purposes. ALl fridges are energy efficient ones. All fridges are energy efficient fridges.Space heating – people shift to using electric heaters and heat pumps (more efficient) and LPG heaters. In cooking people shift to using electric or LPG for cooking purposes. All fridges are energy efficient fridges.", worksheet.control_i38); end
  def test_control_j38; assert_equal("By 2030: People shift to using electric heaters and heat pumps (more efficient) and LPG heaters. In cooking people shift to using electric or LPG for cooking purposes. ALl fridges are energy efficient ones. All fridges are energy efficient fridges.Space heating – people shift to using electric heaters and heat pumps (more efficient) and LPG heaters. In cooking people shift to using electric or LPG for cooking purposes. All fridges are energy efficient fridges.", worksheet.control_j38); end
  def test_control_k38; assert_equal("By 2030: People shift to using electric heaters and heat pumps (more efficient) and LPG heaters. In cooking people shift to using electric or LPG for cooking purposes. ALl fridges are energy efficient ones. All fridges are energy efficient fridges.Space heating – people shift to using electric heaters and heat pumps (more efficient) and LPG heaters. In cooking people shift to using electric or LPG for cooking purposes. All fridges are energy efficient fridges.", worksheet.control_k38); end
  def test_control_d39; assert_equal("SWH scenario", worksheet.control_d39); end
  def test_control_f39; assert_in_epsilon(4.0, worksheet.control_f39, 0.002); end
  def test_control_h39; assert_equal("As is today", worksheet.control_h39); end
  def test_control_i39; assert_equal("All SWH by 2050", worksheet.control_i39); end
  def test_control_j39; assert_equal("All SWH by 2040", worksheet.control_j39); end
  def test_control_k39; assert_equal("All SWH by 2030", worksheet.control_k39); end
  def test_control_a40; assert_equal("Business", worksheet.control_a40); end
  def test_control_b40; assert_equal("Industry", worksheet.control_b40); end
  def test_control_d40; assert_equal("Energy efficiency", worksheet.control_d40); end
  def test_control_f40; assert_in_epsilon(4.0, worksheet.control_f40, 0.002); end
  def test_control_h40; assert_equal("Reduction in electricity and fuel consumption by 1%.", worksheet.control_h40); end
  def test_control_i40; assert_equal("Reduction in electricity and fuel consumption by ca. 15%.", worksheet.control_i40); end
  def test_control_j40; assert_equal("Reduction in electricity and fuel consumption by ca. 30% and 20%.", worksheet.control_j40); end
  def test_control_k40; assert_equal("Reduction in electricity and fuel consumption by ca. 50% and 30%.", worksheet.control_k40); end
  def test_control_d41; assert_equal("Fuel migration to gas and waste for boilers and furnaces", worksheet.control_d41); end
  def test_control_f41; assert_in_epsilon(4.0, worksheet.control_f41, 0.002); end
  def test_control_h41; assert_equal("Existing fuel mix comprising an approximate gas share of 10% and no waste.", worksheet.control_h41); end
  def test_control_i41; assert_equal("Gas displaces 15% of coal use and waste 3%.", worksheet.control_i41); end
  def test_control_j41; assert_equal("Gas displaces ca. 30% of coal use and waste 5%.", worksheet.control_j41); end
  def test_control_k41; assert_equal("Gas displaces ca. 50% of coal use and waste 11%.", worksheet.control_k41); end
  def test_control_d42; assert_equal("CHP share of demand above base year", worksheet.control_d42); end
  def test_control_f42; assert_in_epsilon(4.0, worksheet.control_f42, 0.002); end
  def test_control_h42; assert_equal("Existing facilities with no further expansion", worksheet.control_h42); end
  def test_control_i42; assert_equal("13% share of new industrial demand by 2050.", worksheet.control_i42); end
  def test_control_j42; assert_equal("25% share of new industrial demand by 2050.", worksheet.control_j42); end
  def test_control_k42; assert_equal("50% share of new industrial demand by 2050.", worksheet.control_k42); end
  def test_control_b43; assert_equal("Commercial Sector", worksheet.control_b43); end
  def test_control_d43; assert_equal("Public Services", worksheet.control_d43); end
  def test_control_f43; assert_in_epsilon(4.0, worksheet.control_f43, 0.002); end
  def test_control_h43; assert_equal("No change in energy usage for water treatment.", worksheet.control_h43); end
  def test_control_i43; assert_equal("10% reduction in energy owing to reduced leaks for water systems. All public lights Leds y 2050", worksheet.control_i43); end
  def test_control_j43; assert_equal("15% reduction in energy consumed coming from reduced leaks. All public lights are LEDs by 2040", worksheet.control_j43); end
  def test_control_k43; assert_equal("25% energy reduction owing to reduced leaks in water system. All public lights are LEDs by 2030. ", worksheet.control_k43); end
  def test_control_d44; assert_equal("Building Retrofits for HVAC ", worksheet.control_d44); end
  def test_control_f44; assert_in_epsilon(4.0, worksheet.control_f44, 0.002); end
  def test_control_h44; assert_equal("3% energy reduction as per today's trend in heating and cooling requirements. No change to LEDs.", worksheet.control_h44); end
  def test_control_i44; assert_equal("10% reduction in HVAC needs. All buildings with LEDs by 2050", worksheet.control_i44); end
  def test_control_j44; assert_equal("20% HVAC energy reduction. All buildings have LEDs by 2040. ", worksheet.control_j44); end
  def test_control_k44; assert_equal("30% HVAC energy need reduction. All buildings with Leds by 2030.", worksheet.control_k44); end
  def test_control_d45; assert_equal("Building tech shares mix", worksheet.control_d45); end
  def test_control_f45; assert_in_epsilon(4.0, worksheet.control_f45, 0.002); end
  def test_control_h45; assert_equal("Assumes no change in appliance/device  mix.", worksheet.control_h45); end
  def test_control_i45; assert_equal("Assumes all lights are LEDs by 2050. All devices are efficient devices including heat pumps for heating, and efficient electrical systems by 2050", worksheet.control_i45); end
  def test_control_j45; assert_equal("Assumes all lights are LEDs by 2040. All devices are efficient devices including heat pumps for heating, and efficient electrical systems by 2040", worksheet.control_j45); end
  def test_control_k45; assert_equal("Assumes all lights are LEDs by 2030. All devices are efficient devices including heat pumps for heating, and efficient electrical systems by 2030", worksheet.control_k45); end
  def test_control_d46; assert_equal("New Building code Strength", worksheet.control_d46); end
  def test_control_f46; assert_in_epsilon(4.0, worksheet.control_f46, 0.002); end
  def test_control_h46; assert_equal("Buildings built after 2015 are 15% more efficient than in 2006.", worksheet.control_h46); end
  def test_control_i46; assert_equal("A building code revision process leads to energy efficient buildings. Buildings built after 2030 are 25% more efficient", worksheet.control_i46); end
  def test_control_j46; assert_equal("A strict code revision process. Buildings built after 2030 are 35% more efficient", worksheet.control_j46); end
  def test_control_k46; assert_equal("Very strict code revision process. Buildings built after 2030 are 55% more efficient than today.", worksheet.control_k46); end
  def test_control_a1; assert_equal("0.80.20140923", worksheet.control_a1); end
  def test_intermediate_output_b2; assert_equal("Energy source / use charts", worksheet.intermediate_output_b2); end
  def test_intermediate_output_g3; assert_equal("2050 Calculator calculations", worksheet.intermediate_output_g3); end
  def test_intermediate_output_d4; assert_equal("PJ / year", worksheet.intermediate_output_d4); end
  def test_intermediate_output_g4; assert_in_epsilon(2006.0, worksheet.intermediate_output_g4, 0.002); end
  def test_intermediate_output_h4; assert_in_epsilon(2010.0, worksheet.intermediate_output_h4, 0.002); end
  def test_intermediate_output_i4; assert_in_epsilon(2015.0, worksheet.intermediate_output_i4, 0.002); end
  def test_intermediate_output_j4; assert_in_epsilon(2020.0, worksheet.intermediate_output_j4, 0.002); end
  def test_intermediate_output_k4; assert_in_epsilon(2025.0, worksheet.intermediate_output_k4, 0.002); end
  def test_intermediate_output_l4; assert_in_epsilon(2030.0, worksheet.intermediate_output_l4, 0.002); end
  def test_intermediate_output_m4; assert_in_epsilon(2035.0, worksheet.intermediate_output_m4, 0.002); end
  def test_intermediate_output_n4; assert_in_epsilon(2040.0, worksheet.intermediate_output_n4, 0.002); end
  def test_intermediate_output_o4; assert_in_epsilon(2045.0, worksheet.intermediate_output_o4, 0.002); end
  def test_intermediate_output_p4; assert_in_epsilon(2050.0, worksheet.intermediate_output_p4, 0.002); end
  def test_intermediate_output_c6; assert_equal("Use", worksheet.intermediate_output_c6); end
  def test_intermediate_output_c7; assert_equal("T.01", worksheet.intermediate_output_c7); end
  def test_intermediate_output_d7; assert_equal("Road transport", worksheet.intermediate_output_d7); end
  def test_intermediate_output_g7; assert_in_epsilon(653.9899940841034, worksheet.intermediate_output_g7, 0.002); end
  def test_intermediate_output_h7; assert_in_epsilon(737.8850936546702, worksheet.intermediate_output_h7, 0.002); end
  def test_intermediate_output_i7; assert_in_epsilon(841.9441789882575, worksheet.intermediate_output_i7, 0.002); end
  def test_intermediate_output_j7; assert_in_epsilon(947.9316527162978, worksheet.intermediate_output_j7, 0.002); end
  def test_intermediate_output_k7; assert_in_epsilon(1053.100594253248, worksheet.intermediate_output_k7, 0.002); end
  def test_intermediate_output_l7; assert_in_epsilon(1158.969271251963, worksheet.intermediate_output_l7, 0.002); end
  def test_intermediate_output_m7; assert_in_epsilon(1265.5419131763251, worksheet.intermediate_output_m7, 0.002); end
  def test_intermediate_output_n7; assert_in_epsilon(1371.2386117586789, worksheet.intermediate_output_n7, 0.002); end
  def test_intermediate_output_o7; assert_in_epsilon(1492.9725046521005, worksheet.intermediate_output_o7, 0.002); end
  def test_intermediate_output_p7; assert_in_epsilon(1576.5178749713054, worksheet.intermediate_output_p7, 0.002); end
  def test_intermediate_output_c8; assert_equal("T.02", worksheet.intermediate_output_c8); end
  def test_intermediate_output_d8; assert_equal("Rail transport", worksheet.intermediate_output_d8); end
  def test_intermediate_output_g8; assert_in_epsilon(9.659433307420844, worksheet.intermediate_output_g8, 0.002); end
  def test_intermediate_output_h8; assert_in_epsilon(10.070523062531148, worksheet.intermediate_output_h8, 0.002); end
  def test_intermediate_output_i8; assert_in_epsilon(10.531135313482045, worksheet.intermediate_output_i8, 0.002); end
  def test_intermediate_output_j8; assert_in_epsilon(11.026573608616784, worksheet.intermediate_output_j8, 0.002); end
  def test_intermediate_output_k8; assert_in_epsilon(11.54943399731158, worksheet.intermediate_output_k8, 0.002); end
  def test_intermediate_output_l8; assert_in_epsilon(12.122974545308924, worksheet.intermediate_output_l8, 0.002); end
  def test_intermediate_output_m8; assert_in_epsilon(12.739500878523137, worksheet.intermediate_output_m8, 0.002); end
  def test_intermediate_output_n8; assert_in_epsilon(13.361645376911442, worksheet.intermediate_output_n8, 0.002); end
  def test_intermediate_output_o8; assert_in_epsilon(13.973189995946154, worksheet.intermediate_output_o8, 0.002); end
  def test_intermediate_output_p8; assert_in_epsilon(14.587376058159347, worksheet.intermediate_output_p8, 0.002); end
  def test_intermediate_output_c9; assert_equal("T.03", worksheet.intermediate_output_c9); end
  def test_intermediate_output_d9; assert_equal("Domestic aviation", worksheet.intermediate_output_d9); end
  def test_intermediate_output_g9; assert_in_delta(0.0, (worksheet.intermediate_output_g9||0), 0.002); end
  def test_intermediate_output_h9; assert_in_epsilon(13.95994953403037, worksheet.intermediate_output_h9, 0.002); end
  def test_intermediate_output_i9; assert_in_epsilon(26.086720675522216, worksheet.intermediate_output_i9, 0.002); end
  def test_intermediate_output_j9; assert_in_epsilon(47.11197012612275, worksheet.intermediate_output_j9, 0.002); end
  def test_intermediate_output_k9; assert_in_epsilon(62.60599764481671, worksheet.intermediate_output_k9, 0.002); end
  def test_intermediate_output_l9; assert_in_epsilon(77.6353470279293, worksheet.intermediate_output_l9, 0.002); end
  def test_intermediate_output_m9; assert_in_epsilon(90.62885038494842, worksheet.intermediate_output_m9, 0.002); end
  def test_intermediate_output_n9; assert_in_epsilon(103.85878057052604, worksheet.intermediate_output_n9, 0.002); end
  def test_intermediate_output_o9; assert_in_epsilon(127.56565463209766, worksheet.intermediate_output_o9, 0.002); end
  def test_intermediate_output_p9; assert_in_epsilon(127.34311509479019, worksheet.intermediate_output_p9, 0.002); end
  def test_intermediate_output_c10; assert_equal("T.04", worksheet.intermediate_output_c10); end
  def test_intermediate_output_d10; assert_equal("National navigation", worksheet.intermediate_output_d10); end
  def test_intermediate_output_g10; assert_in_delta(0.0, (worksheet.intermediate_output_g10||0), 0.002); end
  def test_intermediate_output_h10; assert_in_delta(0.0, (worksheet.intermediate_output_h10||0), 0.002); end
  def test_intermediate_output_i10; assert_in_delta(0.0, (worksheet.intermediate_output_i10||0), 0.002); end
  def test_intermediate_output_j10; assert_in_delta(0.0, (worksheet.intermediate_output_j10||0), 0.002); end
  def test_intermediate_output_k10; assert_in_delta(0.0, (worksheet.intermediate_output_k10||0), 0.002); end
  def test_intermediate_output_l10; assert_in_delta(0.0, (worksheet.intermediate_output_l10||0), 0.002); end
  def test_intermediate_output_m10; assert_in_delta(0.0, (worksheet.intermediate_output_m10||0), 0.002); end
  def test_intermediate_output_n10; assert_in_delta(0.0, (worksheet.intermediate_output_n10||0), 0.002); end
  def test_intermediate_output_o10; assert_in_delta(0.0, (worksheet.intermediate_output_o10||0), 0.002); end
  def test_intermediate_output_p10; assert_in_delta(0.0, (worksheet.intermediate_output_p10||0), 0.002); end
  def test_intermediate_output_c11; assert_equal("T.05", worksheet.intermediate_output_c11); end
  def test_intermediate_output_d11; assert_equal("International aviation", worksheet.intermediate_output_d11); end
  def test_intermediate_output_g11; assert_in_delta(0.0, (worksheet.intermediate_output_g11||0), 0.002); end
  def test_intermediate_output_h11; assert_in_delta(0.0, (worksheet.intermediate_output_h11||0), 0.002); end
  def test_intermediate_output_i11; assert_in_delta(0.0, (worksheet.intermediate_output_i11||0), 0.002); end
  def test_intermediate_output_j11; assert_in_delta(0.0, (worksheet.intermediate_output_j11||0), 0.002); end
  def test_intermediate_output_k11; assert_in_delta(0.0, (worksheet.intermediate_output_k11||0), 0.002); end
  def test_intermediate_output_l11; assert_in_delta(0.0, (worksheet.intermediate_output_l11||0), 0.002); end
  def test_intermediate_output_m11; assert_in_delta(0.0, (worksheet.intermediate_output_m11||0), 0.002); end
  def test_intermediate_output_n11; assert_in_delta(0.0, (worksheet.intermediate_output_n11||0), 0.002); end
  def test_intermediate_output_o11; assert_in_delta(0.0, (worksheet.intermediate_output_o11||0), 0.002); end
  def test_intermediate_output_p11; assert_in_delta(0.0, (worksheet.intermediate_output_p11||0), 0.002); end
  def test_intermediate_output_c12; assert_equal("T.06", worksheet.intermediate_output_c12); end
  def test_intermediate_output_d12; assert_equal("International shipping", worksheet.intermediate_output_d12); end
  def test_intermediate_output_g12; assert_in_delta(0.0, (worksheet.intermediate_output_g12||0), 0.002); end
  def test_intermediate_output_h12; assert_in_delta(0.0, (worksheet.intermediate_output_h12||0), 0.002); end
  def test_intermediate_output_i12; assert_in_delta(0.0, (worksheet.intermediate_output_i12||0), 0.002); end
  def test_intermediate_output_j12; assert_in_delta(0.0, (worksheet.intermediate_output_j12||0), 0.002); end
  def test_intermediate_output_k12; assert_in_delta(0.0, (worksheet.intermediate_output_k12||0), 0.002); end
  def test_intermediate_output_l12; assert_in_delta(0.0, (worksheet.intermediate_output_l12||0), 0.002); end
  def test_intermediate_output_m12; assert_in_delta(0.0, (worksheet.intermediate_output_m12||0), 0.002); end
  def test_intermediate_output_n12; assert_in_delta(0.0, (worksheet.intermediate_output_n12||0), 0.002); end
  def test_intermediate_output_o12; assert_in_delta(0.0, (worksheet.intermediate_output_o12||0), 0.002); end
  def test_intermediate_output_p12; assert_in_delta(0.0, (worksheet.intermediate_output_p12||0), 0.002); end
  def test_intermediate_output_d13; assert_equal("Transport", worksheet.intermediate_output_d13); end
  def test_intermediate_output_g13; assert_in_epsilon(663.6494273915242, worksheet.intermediate_output_g13, 0.002); end
  def test_intermediate_output_h13; assert_in_epsilon(761.9155662512317, worksheet.intermediate_output_h13, 0.002); end
  def test_intermediate_output_i13; assert_in_epsilon(878.5620349772618, worksheet.intermediate_output_i13, 0.002); end
  def test_intermediate_output_j13; assert_in_epsilon(1006.0701964510373, worksheet.intermediate_output_j13, 0.002); end
  def test_intermediate_output_k13; assert_in_epsilon(1127.256025895376, worksheet.intermediate_output_k13, 0.002); end
  def test_intermediate_output_l13; assert_in_epsilon(1248.7275928252013, worksheet.intermediate_output_l13, 0.002); end
  def test_intermediate_output_m13; assert_in_epsilon(1368.9102644397967, worksheet.intermediate_output_m13, 0.002); end
  def test_intermediate_output_n13; assert_in_epsilon(1488.4590377061163, worksheet.intermediate_output_n13, 0.002); end
  def test_intermediate_output_o13; assert_in_epsilon(1634.5113492801443, worksheet.intermediate_output_o13, 0.002); end
  def test_intermediate_output_p13; assert_in_epsilon(1718.448366124255, worksheet.intermediate_output_p13, 0.002); end
  def test_intermediate_output_c14; assert_equal("I.01", worksheet.intermediate_output_c14); end
  def test_intermediate_output_d14; assert_equal("Industry", worksheet.intermediate_output_d14); end
  def test_intermediate_output_g14; assert_in_epsilon(1202.7078722338022, worksheet.intermediate_output_g14, 0.002); end
  def test_intermediate_output_h14; assert_in_epsilon(1399.1737113779257, worksheet.intermediate_output_h14, 0.002); end
  def test_intermediate_output_i14; assert_in_epsilon(1707.8036909437978, worksheet.intermediate_output_i14, 0.002); end
  def test_intermediate_output_j14; assert_in_epsilon(2054.9700297787062, worksheet.intermediate_output_j14, 0.002); end
  def test_intermediate_output_k14; assert_in_epsilon(2538.003146427656, worksheet.intermediate_output_k14, 0.002); end
  def test_intermediate_output_l14; assert_in_epsilon(3078.7241808192307, worksheet.intermediate_output_l14, 0.002); end
  def test_intermediate_output_m14; assert_in_epsilon(3838.9552528734844, worksheet.intermediate_output_m14, 0.002); end
  def test_intermediate_output_n14; assert_in_epsilon(4640.131087294364, worksheet.intermediate_output_n14, 0.002); end
  def test_intermediate_output_o14; assert_in_epsilon(5527.897407296521, worksheet.intermediate_output_o14, 0.002); end
  def test_intermediate_output_p14; assert_in_epsilon(6450.620075910476, worksheet.intermediate_output_p14, 0.002); end
  def test_intermediate_output_c15; assert_equal("H.01", worksheet.intermediate_output_c15); end
  def test_intermediate_output_d15; assert_equal("Space Heating", worksheet.intermediate_output_d15); end
  def test_intermediate_output_g15; assert_in_epsilon(84.03180481725389, worksheet.intermediate_output_g15, 0.002); end
  def test_intermediate_output_h15; assert_in_epsilon(89.94116218426949, worksheet.intermediate_output_h15, 0.002); end
  def test_intermediate_output_i15; assert_in_epsilon(96.74310941509864, worksheet.intermediate_output_i15, 0.002); end
  def test_intermediate_output_j15; assert_in_epsilon(104.25457541316814, worksheet.intermediate_output_j15, 0.002); end
  def test_intermediate_output_k15; assert_in_epsilon(112.27398252751047, worksheet.intermediate_output_k15, 0.002); end
  def test_intermediate_output_l15; assert_in_epsilon(121.19315324538614, worksheet.intermediate_output_l15, 0.002); end
  def test_intermediate_output_m15; assert_in_epsilon(131.9523361453346, worksheet.intermediate_output_m15, 0.002); end
  def test_intermediate_output_n15; assert_in_epsilon(143.01818382834088, worksheet.intermediate_output_n15, 0.002); end
  def test_intermediate_output_o15; assert_in_epsilon(153.97640775680554, worksheet.intermediate_output_o15, 0.002); end
  def test_intermediate_output_p15; assert_in_epsilon(165.41768300325805, worksheet.intermediate_output_p15, 0.002); end
  def test_intermediate_output_c16; assert_equal("L.01", worksheet.intermediate_output_c16); end
  def test_intermediate_output_d16; assert_equal("Lighting", worksheet.intermediate_output_d16); end
  def test_intermediate_output_g16; assert_in_epsilon(258.14691493559513, worksheet.intermediate_output_g16, 0.002); end
  def test_intermediate_output_h16; assert_in_epsilon(288.2175145485767, worksheet.intermediate_output_h16, 0.002); end
  def test_intermediate_output_i16; assert_in_epsilon(323.3878229135645, worksheet.intermediate_output_i16, 0.002); end
  def test_intermediate_output_j16; assert_in_epsilon(362.51626419526076, worksheet.intermediate_output_j16, 0.002); end
  def test_intermediate_output_k16; assert_in_epsilon(404.67476774323444, worksheet.intermediate_output_k16, 0.002); end
  def test_intermediate_output_l16; assert_in_epsilon(451.40294897737596, worksheet.intermediate_output_l16, 0.002); end
  def test_intermediate_output_m16; assert_in_epsilon(502.9649829997585, worksheet.intermediate_output_m16, 0.002); end
  def test_intermediate_output_n16; assert_in_epsilon(555.8525096080497, worksheet.intermediate_output_n16, 0.002); end
  def test_intermediate_output_o16; assert_in_epsilon(609.1747272251264, worksheet.intermediate_output_o16, 0.002); end
  def test_intermediate_output_p16; assert_in_epsilon(662.4162111642412, worksheet.intermediate_output_p16, 0.002); end
  def test_intermediate_output_c17; assert_equal("H.02", worksheet.intermediate_output_c17); end
  def test_intermediate_output_d17; assert_equal("Water Heating", worksheet.intermediate_output_d17); end
  def test_intermediate_output_g17; assert_in_epsilon(78.67643269871255, worksheet.intermediate_output_g17, 0.002); end
  def test_intermediate_output_h17; assert_in_epsilon(86.48153920039249, worksheet.intermediate_output_h17, 0.002); end
  def test_intermediate_output_i17; assert_in_epsilon(96.74480800124249, worksheet.intermediate_output_i17, 0.002); end
  def test_intermediate_output_j17; assert_in_epsilon(107.67326146973421, worksheet.intermediate_output_j17, 0.002); end
  def test_intermediate_output_k17; assert_in_epsilon(119.02438202940331, worksheet.intermediate_output_k17, 0.002); end
  def test_intermediate_output_l17; assert_in_epsilon(131.00178214323577, worksheet.intermediate_output_l17, 0.002); end
  def test_intermediate_output_m17; assert_in_epsilon(146.85650473123786, worksheet.intermediate_output_m17, 0.002); end
  def test_intermediate_output_n17; assert_in_epsilon(162.88426841065308, worksheet.intermediate_output_n17, 0.002); end
  def test_intermediate_output_o17; assert_in_epsilon(180.34741987180536, worksheet.intermediate_output_o17, 0.002); end
  def test_intermediate_output_p17; assert_in_epsilon(197.58701640728867, worksheet.intermediate_output_p17, 0.002); end
  def test_intermediate_output_c18; assert_equal("H.03", worksheet.intermediate_output_c18); end
  def test_intermediate_output_d18; assert_equal("Refridgeration", worksheet.intermediate_output_d18); end
  def test_intermediate_output_g18; assert_in_epsilon(18.377033208609394, worksheet.intermediate_output_g18, 0.002); end
  def test_intermediate_output_h18; assert_in_epsilon(20.65474114362778, worksheet.intermediate_output_h18, 0.002); end
  def test_intermediate_output_i18; assert_in_epsilon(23.674486322998813, worksheet.intermediate_output_i18, 0.002); end
  def test_intermediate_output_j18; assert_in_epsilon(26.92556087137859, worksheet.intermediate_output_j18, 0.002); end
  def test_intermediate_output_k18; assert_in_epsilon(30.343849971444005, worksheet.intermediate_output_k18, 0.002); end
  def test_intermediate_output_l18; assert_in_epsilon(33.9620156974502, worksheet.intermediate_output_l18, 0.002); end
  def test_intermediate_output_m18; assert_in_epsilon(38.52634857495958, worksheet.intermediate_output_m18, 0.002); end
  def test_intermediate_output_n18; assert_in_epsilon(43.14907723189195, worksheet.intermediate_output_n18, 0.002); end
  def test_intermediate_output_o18; assert_in_epsilon(48.288310140895376, worksheet.intermediate_output_o18, 0.002); end
  def test_intermediate_output_p18; assert_in_epsilon(53.3781898065617, worksheet.intermediate_output_p18, 0.002); end
  def test_intermediate_output_c19; assert_equal("H.04", worksheet.intermediate_output_c19); end
  def test_intermediate_output_d19; assert_equal("Cooling", worksheet.intermediate_output_d19); end
  def test_intermediate_output_g19; assert_in_epsilon(82.18476735850835, worksheet.intermediate_output_g19, 0.002); end
  def test_intermediate_output_h19; assert_in_epsilon(90.46502271416722, worksheet.intermediate_output_h19, 0.002); end
  def test_intermediate_output_i19; assert_in_epsilon(99.46878879941501, worksheet.intermediate_output_i19, 0.002); end
  def test_intermediate_output_j19; assert_in_epsilon(109.89423909885505, worksheet.intermediate_output_j19, 0.002); end
  def test_intermediate_output_k19; assert_in_epsilon(121.40701785237215, worksheet.intermediate_output_k19, 0.002); end
  def test_intermediate_output_l19; assert_in_epsilon(134.8675263808964, worksheet.intermediate_output_l19, 0.002); end
  def test_intermediate_output_m19; assert_in_epsilon(151.74018509138946, worksheet.intermediate_output_m19, 0.002); end
  def test_intermediate_output_n19; assert_in_epsilon(169.17685956875496, worksheet.intermediate_output_n19, 0.002); end
  def test_intermediate_output_o19; assert_in_epsilon(186.0555993189449, worksheet.intermediate_output_o19, 0.002); end
  def test_intermediate_output_p19; assert_in_epsilon(203.76429822889884, worksheet.intermediate_output_p19, 0.002); end
  def test_intermediate_output_c20; assert_equal("Z.02", worksheet.intermediate_output_c20); end
  def test_intermediate_output_d20; assert_equal("Other Use", worksheet.intermediate_output_d20); end
  def test_intermediate_output_g20; assert_in_epsilon(41.747506158517005, worksheet.intermediate_output_g20, 0.002); end
  def test_intermediate_output_h20; assert_in_epsilon(46.28539407285476, worksheet.intermediate_output_h20, 0.002); end
  def test_intermediate_output_i20; assert_in_epsilon(52.39102804815974, worksheet.intermediate_output_i20, 0.002); end
  def test_intermediate_output_j20; assert_in_epsilon(59.266038562356144, worksheet.intermediate_output_j20, 0.002); end
  def test_intermediate_output_k20; assert_in_epsilon(66.73481145513159, worksheet.intermediate_output_k20, 0.002); end
  def test_intermediate_output_l20; assert_in_epsilon(75.19176243832928, worksheet.intermediate_output_l20, 0.002); end
  def test_intermediate_output_m20; assert_in_epsilon(86.86141805303184, worksheet.intermediate_output_m20, 0.002); end
  def test_intermediate_output_n20; assert_in_epsilon(98.94245999185998, worksheet.intermediate_output_n20, 0.002); end
  def test_intermediate_output_o20; assert_in_epsilon(111.60941882540004, worksheet.intermediate_output_o20, 0.002); end
  def test_intermediate_output_p20; assert_in_epsilon(124.39641022154467, worksheet.intermediate_output_p20, 0.002); end
  def test_intermediate_output_c21; assert_equal("Z.03", worksheet.intermediate_output_c21); end
  def test_intermediate_output_d21; assert_equal("Non Energy Use", worksheet.intermediate_output_d21); end
  def test_intermediate_output_g21; assert_in_epsilon(1.08273185348619, worksheet.intermediate_output_g21, 0.002); end
  def test_intermediate_output_h21; assert_in_epsilon(1.134103712462717, worksheet.intermediate_output_h21, 0.002); end
  def test_intermediate_output_i21; assert_in_epsilon(1.2010281418978952, worksheet.intermediate_output_i21, 0.002); end
  def test_intermediate_output_j21; assert_in_epsilon(1.2632519572061327, worksheet.intermediate_output_j21, 0.002); end
  def test_intermediate_output_k21; assert_in_epsilon(1.3196674338909677, worksheet.intermediate_output_k21, 0.002); end
  def test_intermediate_output_l21; assert_in_epsilon(1.367407176178166, worksheet.intermediate_output_l21, 0.002); end
  def test_intermediate_output_m21; assert_in_epsilon(1.3807504909443282, worksheet.intermediate_output_m21, 0.002); end
  def test_intermediate_output_n21; assert_in_epsilon(1.38894108953381, worksheet.intermediate_output_n21, 0.002); end
  def test_intermediate_output_o21; assert_in_epsilon(1.386850610942079, worksheet.intermediate_output_o21, 0.002); end
  def test_intermediate_output_p21; assert_in_epsilon(1.3795584319434364, worksheet.intermediate_output_p21, 0.002); end
  def test_intermediate_output_c22; assert_equal("K.01", worksheet.intermediate_output_c22); end
  def test_intermediate_output_d22; assert_equal("Cooking", worksheet.intermediate_output_d22); end
  def test_intermediate_output_g22; assert_in_epsilon(34.359299324004766, worksheet.intermediate_output_g22, 0.002); end
  def test_intermediate_output_h22; assert_in_epsilon(36.52451191992676, worksheet.intermediate_output_h22, 0.002); end
  def test_intermediate_output_i22; assert_in_epsilon(39.38700355107287, worksheet.intermediate_output_i22, 0.002); end
  def test_intermediate_output_j22; assert_in_epsilon(42.09603237016339, worksheet.intermediate_output_j22, 0.002); end
  def test_intermediate_output_k22; assert_in_epsilon(44.5974712495157, worksheet.intermediate_output_k22, 0.002); end
  def test_intermediate_output_l22; assert_in_epsilon(46.78332938260476, worksheet.intermediate_output_l22, 0.002); end
  def test_intermediate_output_m22; assert_in_epsilon(46.64615062565594, worksheet.intermediate_output_m22, 0.002); end
  def test_intermediate_output_n22; assert_in_epsilon(46.428292079805196, worksheet.intermediate_output_n22, 0.002); end
  def test_intermediate_output_o22; assert_in_epsilon(45.933389009288675, worksheet.intermediate_output_o22, 0.002); end
  def test_intermediate_output_p22; assert_in_epsilon(45.41346843645741, worksheet.intermediate_output_p22, 0.002); end
  def test_intermediate_output_d23; assert_equal("Residential and commercial", worksheet.intermediate_output_d23); end
  def test_intermediate_output_g23; assert_in_epsilon(598.6064903546874, worksheet.intermediate_output_g23, 0.002); end
  def test_intermediate_output_h23; assert_in_epsilon(659.7039894962779, worksheet.intermediate_output_h23, 0.002); end
  def test_intermediate_output_i23; assert_in_epsilon(732.99807519345, worksheet.intermediate_output_i23, 0.002); end
  def test_intermediate_output_j23; assert_in_epsilon(813.8892239381224, worksheet.intermediate_output_j23, 0.002); end
  def test_intermediate_output_k23; assert_in_epsilon(900.3759502625028, worksheet.intermediate_output_k23, 0.002); end
  def test_intermediate_output_l23; assert_in_epsilon(995.7699254414567, worksheet.intermediate_output_l23, 0.002); end
  def test_intermediate_output_m23; assert_in_epsilon(1106.9286767123122, worksheet.intermediate_output_m23, 0.002); end
  def test_intermediate_output_n23; assert_in_epsilon(1220.8405918088895, worksheet.intermediate_output_n23, 0.002); end
  def test_intermediate_output_o23; assert_in_epsilon(1336.7721227592083, worksheet.intermediate_output_o23, 0.002); end
  def test_intermediate_output_p23; assert_in_epsilon(1453.7528357001938, worksheet.intermediate_output_p23, 0.002); end
  def test_intermediate_output_d25; assert_equal("Total Use", worksheet.intermediate_output_d25); end
  def test_intermediate_output_g25; assert_in_epsilon(2464.9637899800136, worksheet.intermediate_output_g25, 0.002); end
  def test_intermediate_output_h25; assert_in_epsilon(2820.7932671254352, worksheet.intermediate_output_h25, 0.002); end
  def test_intermediate_output_i25; assert_in_epsilon(3319.3638011145094, worksheet.intermediate_output_i25, 0.002); end
  def test_intermediate_output_j25; assert_in_epsilon(3874.929450167866, worksheet.intermediate_output_j25, 0.002); end
  def test_intermediate_output_k25; assert_in_epsilon(4565.635122585534, worksheet.intermediate_output_k25, 0.002); end
  def test_intermediate_output_l25; assert_in_epsilon(5323.221699085889, worksheet.intermediate_output_l25, 0.002); end
  def test_intermediate_output_m25; assert_in_epsilon(6314.794194025593, worksheet.intermediate_output_m25, 0.002); end
  def test_intermediate_output_n25; assert_in_epsilon(7349.430716809371, worksheet.intermediate_output_n25, 0.002); end
  def test_intermediate_output_o25; assert_in_epsilon(8499.180879335874, worksheet.intermediate_output_o25, 0.002); end
  def test_intermediate_output_p25; assert_in_epsilon(9622.821277734925, worksheet.intermediate_output_p25, 0.002); end
  def test_intermediate_output_d27; assert_equal("Dummy for charting uses", worksheet.intermediate_output_d27); end
  def test_intermediate_output_g27; assert_in_epsilon(2189.32974536277, worksheet.intermediate_output_g27, 0.002); end
  def test_intermediate_output_h27; assert_in_epsilon(2606.6474315371374, worksheet.intermediate_output_h27, 0.002); end
  def test_intermediate_output_i27; assert_in_epsilon(2842.4817196710865, worksheet.intermediate_output_i27, 0.002); end
  def test_intermediate_output_j27; assert_in_epsilon(3138.380987912049, worksheet.intermediate_output_j27, 0.002); end
  def test_intermediate_output_k27; assert_in_epsilon(3592.002905920932, worksheet.intermediate_output_k27, 0.002); end
  def test_intermediate_output_l27; assert_in_epsilon(3964.7326359097533, worksheet.intermediate_output_l27, 0.002); end
  def test_intermediate_output_m27; assert_in_epsilon(4446.760430302456, worksheet.intermediate_output_m27, 0.002); end
  def test_intermediate_output_n27; assert_in_epsilon(4778.6300267248025, worksheet.intermediate_output_n27, 0.002); end
  def test_intermediate_output_o27; assert_in_epsilon(5467.056293522988, worksheet.intermediate_output_o27, 0.002); end
  def test_intermediate_output_p27; assert_in_epsilon(6053.934776007805, worksheet.intermediate_output_p27, 0.002); end
  def test_intermediate_output_c29; assert_equal("Source", worksheet.intermediate_output_c29); end
  def test_intermediate_output_c30; assert_equal("N.01", worksheet.intermediate_output_c30); end
  def test_intermediate_output_d30; assert_equal("Nuclear fission", worksheet.intermediate_output_d30); end
  def test_intermediate_output_g30; assert_in_epsilon(110.05713000000002, worksheet.intermediate_output_g30, 0.002); end
  def test_intermediate_output_h30; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_h30, 0.002); end
  def test_intermediate_output_i30; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_i30, 0.002); end
  def test_intermediate_output_j30; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_j30, 0.002); end
  def test_intermediate_output_k30; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_k30, 0.002); end
  def test_intermediate_output_l30; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_l30, 0.002); end
  def test_intermediate_output_m30; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_m30, 0.002); end
  def test_intermediate_output_n30; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_n30, 0.002); end
  def test_intermediate_output_o30; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_o30, 0.002); end
  def test_intermediate_output_p30; assert_in_delta(0.0, (worksheet.intermediate_output_p30||0), 0.002); end
  def test_intermediate_output_c31; assert_equal("R.01", worksheet.intermediate_output_c31); end
  def test_intermediate_output_d31; assert_equal("Solar", worksheet.intermediate_output_d31); end
  def test_intermediate_output_g31; assert_in_delta(0.0, (worksheet.intermediate_output_g31||0), 0.002); end
  def test_intermediate_output_h31; assert_in_delta(0.08634159360000002, worksheet.intermediate_output_h31, 0.002); end
  def test_intermediate_output_i31; assert_in_epsilon(14.97932793820559, worksheet.intermediate_output_i31, 0.002); end
  def test_intermediate_output_j31; assert_in_epsilon(58.47144988677519, worksheet.intermediate_output_j31, 0.002); end
  def test_intermediate_output_k31; assert_in_epsilon(118.55487872874802, worksheet.intermediate_output_k31, 0.002); end
  def test_intermediate_output_l31; assert_in_epsilon(181.30123224814926, worksheet.intermediate_output_l31, 0.002); end
  def test_intermediate_output_m31; assert_in_epsilon(242.43605646185034, worksheet.intermediate_output_m31, 0.002); end
  def test_intermediate_output_n31; assert_in_epsilon(325.84100032677844, worksheet.intermediate_output_n31, 0.002); end
  def test_intermediate_output_o31; assert_in_epsilon(386.4945720198666, worksheet.intermediate_output_o31, 0.002); end
  def test_intermediate_output_p31; assert_in_epsilon(441.92457987412075, worksheet.intermediate_output_p31, 0.002); end
  def test_intermediate_output_c32; assert_equal("R.02", worksheet.intermediate_output_c32); end
  def test_intermediate_output_d32; assert_equal("Wind", worksheet.intermediate_output_d32); end
  def test_intermediate_output_g32; assert_in_delta(0.02592772416, worksheet.intermediate_output_g32, 0.002); end
  def test_intermediate_output_h32; assert_in_delta(0.06859359936, worksheet.intermediate_output_h32, 0.002); end
  def test_intermediate_output_i32; assert_in_epsilon(11.57035420224, worksheet.intermediate_output_i32, 0.002); end
  def test_intermediate_output_j32; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_j32, 0.002); end
  def test_intermediate_output_k32; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_k32, 0.002); end
  def test_intermediate_output_l32; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_l32, 0.002); end
  def test_intermediate_output_m32; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_m32, 0.002); end
  def test_intermediate_output_n32; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_n32, 0.002); end
  def test_intermediate_output_o32; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_o32, 0.002); end
  def test_intermediate_output_p32; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_p32, 0.002); end
  def test_intermediate_output_c33; assert_equal("R.06", worksheet.intermediate_output_c33); end
  def test_intermediate_output_d33; assert_equal("Hydro", worksheet.intermediate_output_d33); end
  def test_intermediate_output_g33; assert_in_epsilon(5.285898, worksheet.intermediate_output_g33, 0.002); end
  def test_intermediate_output_h33; assert_in_epsilon(5.285898, worksheet.intermediate_output_h33, 0.002); end
  def test_intermediate_output_i33; assert_in_epsilon(5.317455600000001, worksheet.intermediate_output_i33, 0.002); end
  def test_intermediate_output_j33; assert_in_epsilon(5.396349600000001, worksheet.intermediate_output_j33, 0.002); end
  def test_intermediate_output_k33; assert_in_epsilon(4.8440916, worksheet.intermediate_output_k33, 0.002); end
  def test_intermediate_output_l33; assert_in_epsilon(4.8440916, worksheet.intermediate_output_l33, 0.002); end
  def test_intermediate_output_m33; assert_in_epsilon(4.8440916, worksheet.intermediate_output_m33, 0.002); end
  def test_intermediate_output_n33; assert_in_epsilon(4.8440916, worksheet.intermediate_output_n33, 0.002); end
  def test_intermediate_output_o33; assert_in_epsilon(4.8440916, worksheet.intermediate_output_o33, 0.002); end
  def test_intermediate_output_p33; assert_in_epsilon(4.8440916, worksheet.intermediate_output_p33, 0.002); end
  def test_intermediate_output_c34; assert_equal("Y.02", worksheet.intermediate_output_c34); end
  def test_intermediate_output_d34; assert_equal("Electricity oversupply (imports)", worksheet.intermediate_output_d34); end
  def test_intermediate_output_g34; assert_in_epsilon(-24.81858000000011, worksheet.intermediate_output_g34, 0.002); end
  def test_intermediate_output_h34; assert_in_epsilon(-24.818579999999997, worksheet.intermediate_output_h34, 0.002); end
  def test_intermediate_output_i34; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_i34, 0.002); end
  def test_intermediate_output_j34; assert_in_epsilon(-19.13821200000045, worksheet.intermediate_output_j34, 0.002); end
  def test_intermediate_output_k34; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_k34, 0.002); end
  def test_intermediate_output_l34; assert_in_epsilon(-19.138212000000223, worksheet.intermediate_output_l34, 0.002); end
  def test_intermediate_output_m34; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_m34, 0.002); end
  def test_intermediate_output_n34; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_n34, 0.002); end
  def test_intermediate_output_o34; assert_in_epsilon(-19.138211999999086, worksheet.intermediate_output_o34, 0.002); end
  def test_intermediate_output_p34; assert_in_epsilon(-19.13821199999954, worksheet.intermediate_output_p34, 0.002); end
  def test_intermediate_output_d35; assert_equal("Renewables - hydro, wind, solar", worksheet.intermediate_output_d35); end
  def test_intermediate_output_g35; assert_in_epsilon(5.31182572416, worksheet.intermediate_output_g35, 0.002); end
  def test_intermediate_output_h35; assert_in_epsilon(5.4408331929600005, worksheet.intermediate_output_h35, 0.002); end
  def test_intermediate_output_i35; assert_in_epsilon(31.867137740445592, worksheet.intermediate_output_i35, 0.002); end
  def test_intermediate_output_j35; assert_in_epsilon(86.4574364570152, worksheet.intermediate_output_j35, 0.002); end
  def test_intermediate_output_k35; assert_in_epsilon(145.98860729898803, worksheet.intermediate_output_k35, 0.002); end
  def test_intermediate_output_l35; assert_in_epsilon(208.73496081838928, worksheet.intermediate_output_l35, 0.002); end
  def test_intermediate_output_m35; assert_in_epsilon(269.86978503209036, worksheet.intermediate_output_m35, 0.002); end
  def test_intermediate_output_n35; assert_in_epsilon(353.27472889701846, worksheet.intermediate_output_n35, 0.002); end
  def test_intermediate_output_o35; assert_in_epsilon(413.92830059010663, worksheet.intermediate_output_o35, 0.002); end
  def test_intermediate_output_p35; assert_in_epsilon(469.3583084443608, worksheet.intermediate_output_p35, 0.002); end
  def test_intermediate_output_d36; assert_equal("Primary electricity, solar, and net imports", worksheet.intermediate_output_d36); end
  def test_intermediate_output_g36; assert_in_epsilon(90.5503757241599, worksheet.intermediate_output_g36, 0.002); end
  def test_intermediate_output_h36; assert_in_epsilon(124.40656819296004, worksheet.intermediate_output_h36, 0.002); end
  def test_intermediate_output_i36; assert_in_epsilon(156.5132407404456, worksheet.intermediate_output_i36, 0.002); end
  def test_intermediate_output_j36; assert_in_epsilon(211.1035394570148, worksheet.intermediate_output_j36, 0.002); end
  def test_intermediate_output_k36; assert_in_epsilon(270.63471029898807, worksheet.intermediate_output_k36, 0.002); end
  def test_intermediate_output_l36; assert_in_epsilon(333.38106381838907, worksheet.intermediate_output_l36, 0.002); end
  def test_intermediate_output_m36; assert_in_epsilon(394.5158880320904, worksheet.intermediate_output_m36, 0.002); end
  def test_intermediate_output_n36; assert_in_epsilon(477.9208318970185, worksheet.intermediate_output_n36, 0.002); end
  def test_intermediate_output_o36; assert_in_epsilon(538.5744035901075, worksheet.intermediate_output_o36, 0.002); end
  def test_intermediate_output_p36; assert_in_epsilon(450.2200964443612, worksheet.intermediate_output_p36, 0.002); end
  def test_intermediate_output_c37; assert_equal("R.07", worksheet.intermediate_output_c37); end
  def test_intermediate_output_d37; assert_equal("Environmental heat", worksheet.intermediate_output_d37); end
  def test_intermediate_output_g37; assert_in_delta(0.0, (worksheet.intermediate_output_g37||0), 0.002); end
  def test_intermediate_output_h37; assert_in_delta(0.0, (worksheet.intermediate_output_h37||0), 0.002); end
  def test_intermediate_output_i37; assert_in_delta(0.0, (worksheet.intermediate_output_i37||0), 0.002); end
  def test_intermediate_output_j37; assert_in_delta(0.0, (worksheet.intermediate_output_j37||0), 0.002); end
  def test_intermediate_output_k37; assert_in_delta(0.0, (worksheet.intermediate_output_k37||0), 0.002); end
  def test_intermediate_output_l37; assert_in_delta(0.0, (worksheet.intermediate_output_l37||0), 0.002); end
  def test_intermediate_output_m37; assert_in_delta(0.0, (worksheet.intermediate_output_m37||0), 0.002); end
  def test_intermediate_output_n37; assert_in_delta(0.0, (worksheet.intermediate_output_n37||0), 0.002); end
  def test_intermediate_output_o37; assert_in_delta(0.0, (worksheet.intermediate_output_o37||0), 0.002); end
  def test_intermediate_output_p37; assert_in_delta(0.0, (worksheet.intermediate_output_p37||0), 0.002); end
  def test_intermediate_output_c38; assert_equal("W.01", worksheet.intermediate_output_c38); end
  def test_intermediate_output_d38; assert_equal("Waste", worksheet.intermediate_output_d38); end
  def test_intermediate_output_g38; assert_in_delta(0.4933915591403157, worksheet.intermediate_output_g38, 0.002); end
  def test_intermediate_output_h38; assert_in_epsilon(1.1707433853966898, worksheet.intermediate_output_h38, 0.002); end
  def test_intermediate_output_i38; assert_in_epsilon(3.129264525198214, worksheet.intermediate_output_i38, 0.002); end
  def test_intermediate_output_j38; assert_in_epsilon(5.418080568322371, worksheet.intermediate_output_j38, 0.002); end
  def test_intermediate_output_k38; assert_in_epsilon(8.305294717792817, worksheet.intermediate_output_k38, 0.002); end
  def test_intermediate_output_l38; assert_in_epsilon(11.891457265721982, worksheet.intermediate_output_l38, 0.002); end
  def test_intermediate_output_m38; assert_in_epsilon(16.300095295393366, worksheet.intermediate_output_m38, 0.002); end
  def test_intermediate_output_n38; assert_in_epsilon(21.761673308626534, worksheet.intermediate_output_n38, 0.002); end
  def test_intermediate_output_o38; assert_in_epsilon(28.54497500586531, worksheet.intermediate_output_o38, 0.002); end
  def test_intermediate_output_p38; assert_in_epsilon(36.90242193759567, worksheet.intermediate_output_p38, 0.002); end
  def test_intermediate_output_c39; assert_equal("A.01", worksheet.intermediate_output_c39); end
  def test_intermediate_output_d39; assert_equal("Agriculture", worksheet.intermediate_output_d39); end
  def test_intermediate_output_g39; assert_in_delta(0.0, (worksheet.intermediate_output_g39||0), 0.002); end
  def test_intermediate_output_h39; assert_in_delta(0.0, (worksheet.intermediate_output_h39||0), 0.002); end
  def test_intermediate_output_i39; assert_in_delta(0.0, (worksheet.intermediate_output_i39||0), 0.002); end
  def test_intermediate_output_j39; assert_in_delta(0.0, (worksheet.intermediate_output_j39||0), 0.002); end
  def test_intermediate_output_k39; assert_in_delta(0.0, (worksheet.intermediate_output_k39||0), 0.002); end
  def test_intermediate_output_l39; assert_in_delta(0.0, (worksheet.intermediate_output_l39||0), 0.002); end
  def test_intermediate_output_m39; assert_in_delta(0.0, (worksheet.intermediate_output_m39||0), 0.002); end
  def test_intermediate_output_n39; assert_in_delta(0.0, (worksheet.intermediate_output_n39||0), 0.002); end
  def test_intermediate_output_o39; assert_in_delta(0.0, (worksheet.intermediate_output_o39||0), 0.002); end
  def test_intermediate_output_p39; assert_in_delta(0.0, (worksheet.intermediate_output_p39||0), 0.002); end
  def test_intermediate_output_c40; assert_equal("Y.01", worksheet.intermediate_output_c40); end
  def test_intermediate_output_d40; assert_equal("Biomass ", worksheet.intermediate_output_d40); end
  def test_intermediate_output_g40; assert_in_delta(0.0, (worksheet.intermediate_output_g40||0), 0.002); end
  def test_intermediate_output_h40; assert_in_delta(0.0, (worksheet.intermediate_output_h40||0), 0.002); end
  def test_intermediate_output_i40; assert_in_delta(0.0, (worksheet.intermediate_output_i40||0), 0.002); end
  def test_intermediate_output_j40; assert_in_delta(0.0, (worksheet.intermediate_output_j40||0), 0.002); end
  def test_intermediate_output_k40; assert_in_delta(0.0, (worksheet.intermediate_output_k40||0), 0.002); end
  def test_intermediate_output_l40; assert_in_delta(0.0, (worksheet.intermediate_output_l40||0), 0.002); end
  def test_intermediate_output_m40; assert_in_delta(0.0, (worksheet.intermediate_output_m40||0), 0.002); end
  def test_intermediate_output_n40; assert_in_delta(0.0, (worksheet.intermediate_output_n40||0), 0.002); end
  def test_intermediate_output_o40; assert_in_delta(0.0, (worksheet.intermediate_output_o40||0), 0.002); end
  def test_intermediate_output_p40; assert_in_delta(0.0, (worksheet.intermediate_output_p40||0), 0.002); end
  def test_intermediate_output_d41; assert_equal("Agriculture, waste, and biomatter ", worksheet.intermediate_output_d41); end
  def test_intermediate_output_g41; assert_in_delta(0.4933915591403157, worksheet.intermediate_output_g41, 0.002); end
  def test_intermediate_output_h41; assert_in_epsilon(1.1707433853966898, worksheet.intermediate_output_h41, 0.002); end
  def test_intermediate_output_i41; assert_in_epsilon(3.129264525198214, worksheet.intermediate_output_i41, 0.002); end
  def test_intermediate_output_j41; assert_in_epsilon(5.418080568322371, worksheet.intermediate_output_j41, 0.002); end
  def test_intermediate_output_k41; assert_in_epsilon(8.305294717792817, worksheet.intermediate_output_k41, 0.002); end
  def test_intermediate_output_l41; assert_in_epsilon(11.891457265721982, worksheet.intermediate_output_l41, 0.002); end
  def test_intermediate_output_m41; assert_in_epsilon(16.300095295393366, worksheet.intermediate_output_m41, 0.002); end
  def test_intermediate_output_n41; assert_in_epsilon(21.761673308626534, worksheet.intermediate_output_n41, 0.002); end
  def test_intermediate_output_o41; assert_in_epsilon(28.54497500586531, worksheet.intermediate_output_o41, 0.002); end
  def test_intermediate_output_p41; assert_in_epsilon(36.90242193759567, worksheet.intermediate_output_p41, 0.002); end
  def test_intermediate_output_c42; assert_equal("Y.04", worksheet.intermediate_output_c42); end
  def test_intermediate_output_d42; assert_equal("Coal oversupply (imports)", worksheet.intermediate_output_d42); end
  def test_intermediate_output_g42; assert_in_delta(0.0, (worksheet.intermediate_output_g42||0), 0.002); end
  def test_intermediate_output_h42; assert_in_delta(0.0, (worksheet.intermediate_output_h42||0), 0.002); end
  def test_intermediate_output_i42; assert_in_delta(0.0, (worksheet.intermediate_output_i42||0), 0.002); end
  def test_intermediate_output_j42; assert_in_delta(0.0, (worksheet.intermediate_output_j42||0), 0.002); end
  def test_intermediate_output_k42; assert_in_delta(0.0, (worksheet.intermediate_output_k42||0), 0.002); end
  def test_intermediate_output_l42; assert_in_delta(0.0, (worksheet.intermediate_output_l42||0), 0.002); end
  def test_intermediate_output_m42; assert_in_delta(0.0, (worksheet.intermediate_output_m42||0), 0.002); end
  def test_intermediate_output_n42; assert_in_delta(0.0, (worksheet.intermediate_output_n42||0), 0.002); end
  def test_intermediate_output_o42; assert_in_delta(0.0, (worksheet.intermediate_output_o42||0), 0.002); end
  def test_intermediate_output_p42; assert_in_delta(0.0, (worksheet.intermediate_output_p42||0), 0.002); end
  def test_intermediate_output_c43; assert_equal("Q.01", worksheet.intermediate_output_c43); end
  def test_intermediate_output_d43; assert_equal("Coal reserves", worksheet.intermediate_output_d43); end
  def test_intermediate_output_g43; assert_in_epsilon(3828.1386874365517, worksheet.intermediate_output_g43, 0.002); end
  def test_intermediate_output_h43; assert_in_epsilon(4444.064277532254, worksheet.intermediate_output_h43, 0.002); end
  def test_intermediate_output_i43; assert_in_epsilon(4981.080156770106, worksheet.intermediate_output_i43, 0.002); end
  def test_intermediate_output_j43; assert_in_epsilon(5602.251042000064, worksheet.intermediate_output_j43, 0.002); end
  def test_intermediate_output_k43; assert_in_epsilon(6501.338248055366, worksheet.intermediate_output_k43, 0.002); end
  def test_intermediate_output_l43; assert_in_epsilon(7387.264788322718, worksheet.intermediate_output_l43, 0.002); end
  def test_intermediate_output_m43; assert_in_epsilon(8593.105097538122, worksheet.intermediate_output_m43, 0.002); end
  def test_intermediate_output_n43; assert_in_epsilon(9597.169358173773, worksheet.intermediate_output_n43, 0.002); end
  def test_intermediate_output_o43; assert_in_epsilon(11127.38511685538, worksheet.intermediate_output_o43, 0.002); end
  def test_intermediate_output_p43; assert_in_epsilon(12694.075383109057, worksheet.intermediate_output_p43, 0.002); end
  def test_intermediate_output_d44; assert_equal("Coal", worksheet.intermediate_output_d44); end
  def test_intermediate_output_g44; assert_in_epsilon(3828.1386874365517, worksheet.intermediate_output_g44, 0.002); end
  def test_intermediate_output_h44; assert_in_epsilon(4444.064277532254, worksheet.intermediate_output_h44, 0.002); end
  def test_intermediate_output_i44; assert_in_epsilon(4981.080156770106, worksheet.intermediate_output_i44, 0.002); end
  def test_intermediate_output_j44; assert_in_epsilon(5602.251042000064, worksheet.intermediate_output_j44, 0.002); end
  def test_intermediate_output_k44; assert_in_epsilon(6501.338248055366, worksheet.intermediate_output_k44, 0.002); end
  def test_intermediate_output_l44; assert_in_epsilon(7387.264788322718, worksheet.intermediate_output_l44, 0.002); end
  def test_intermediate_output_m44; assert_in_epsilon(8593.105097538122, worksheet.intermediate_output_m44, 0.002); end
  def test_intermediate_output_n44; assert_in_epsilon(9597.169358173773, worksheet.intermediate_output_n44, 0.002); end
  def test_intermediate_output_o44; assert_in_epsilon(11127.38511685538, worksheet.intermediate_output_o44, 0.002); end
  def test_intermediate_output_p44; assert_in_epsilon(12694.075383109057, worksheet.intermediate_output_p44, 0.002); end
  def test_intermediate_output_c45; assert_equal("Q.02", worksheet.intermediate_output_c45); end
  def test_intermediate_output_d45; assert_equal("Oil reserves", worksheet.intermediate_output_d45); end
  def test_intermediate_output_g45; assert_in_delta(0.0, (worksheet.intermediate_output_g45||0), 0.002); end
  def test_intermediate_output_h45; assert_in_delta(0.0, (worksheet.intermediate_output_h45||0), 0.002); end
  def test_intermediate_output_i45; assert_in_delta(0.0, (worksheet.intermediate_output_i45||0), 0.002); end
  def test_intermediate_output_j45; assert_in_delta(0.0, (worksheet.intermediate_output_j45||0), 0.002); end
  def test_intermediate_output_k45; assert_in_delta(0.0, (worksheet.intermediate_output_k45||0), 0.002); end
  def test_intermediate_output_l45; assert_in_delta(0.0, (worksheet.intermediate_output_l45||0), 0.002); end
  def test_intermediate_output_m45; assert_in_delta(0.0, (worksheet.intermediate_output_m45||0), 0.002); end
  def test_intermediate_output_n45; assert_in_delta(0.0, (worksheet.intermediate_output_n45||0), 0.002); end
  def test_intermediate_output_o45; assert_in_delta(0.0, (worksheet.intermediate_output_o45||0), 0.002); end
  def test_intermediate_output_p45; assert_in_delta(0.0, (worksheet.intermediate_output_p45||0), 0.002); end
  def test_intermediate_output_c46; assert_equal("Y.05", worksheet.intermediate_output_c46); end
  def test_intermediate_output_d46; assert_equal("Oil and petroleum products oversupply (imports)", worksheet.intermediate_output_d46); end
  def test_intermediate_output_g46; assert_in_epsilon(546.628373322753, worksheet.intermediate_output_g46, 0.002); end
  def test_intermediate_output_h46; assert_in_epsilon(673.982035242302, worksheet.intermediate_output_h46, 0.002); end
  def test_intermediate_output_i46; assert_in_epsilon(810.0456886608929, worksheet.intermediate_output_i46, 0.002); end
  def test_intermediate_output_j46; assert_in_epsilon(959.9818016469646, worksheet.intermediate_output_j46, 0.002); end
  def test_intermediate_output_k46; assert_in_epsilon(1033.3960937408597, worksheet.intermediate_output_k46, 0.002); end
  def test_intermediate_output_l46; assert_in_epsilon(1185.4364478681784, worksheet.intermediate_output_l46, 0.002); end
  def test_intermediate_output_m46; assert_in_epsilon(1283.28419764884, worksheet.intermediate_output_m46, 0.002); end
  def test_intermediate_output_n46; assert_in_epsilon(1459.7231176415985, worksheet.intermediate_output_n46, 0.002); end
  def test_intermediate_output_o46; assert_in_epsilon(1650.336333425027, worksheet.intermediate_output_o46, 0.002); end
  def test_intermediate_output_p46; assert_in_epsilon(1830.706604565673, worksheet.intermediate_output_p46, 0.002); end
  def test_intermediate_output_c47; assert_equal("Y.03", worksheet.intermediate_output_c47); end
  def test_intermediate_output_d47; assert_equal("Petroleum products oversupply", worksheet.intermediate_output_d47); end
  def test_intermediate_output_g47; assert_in_delta(0.0, (worksheet.intermediate_output_g47||0), 0.002); end
  def test_intermediate_output_h47; assert_in_delta(0.0, (worksheet.intermediate_output_h47||0), 0.002); end
  def test_intermediate_output_i47; assert_in_delta(0.0, (worksheet.intermediate_output_i47||0), 0.002); end
  def test_intermediate_output_j47; assert_in_delta(0.0, (worksheet.intermediate_output_j47||0), 0.002); end
  def test_intermediate_output_k47; assert_in_delta(0.0, (worksheet.intermediate_output_k47||0), 0.002); end
  def test_intermediate_output_l47; assert_in_delta(0.0, (worksheet.intermediate_output_l47||0), 0.002); end
  def test_intermediate_output_m47; assert_in_delta(0.0, (worksheet.intermediate_output_m47||0), 0.002); end
  def test_intermediate_output_n47; assert_in_delta(0.0, (worksheet.intermediate_output_n47||0), 0.002); end
  def test_intermediate_output_o47; assert_in_delta(0.0, (worksheet.intermediate_output_o47||0), 0.002); end
  def test_intermediate_output_p47; assert_in_delta(0.0, (worksheet.intermediate_output_p47||0), 0.002); end
  def test_intermediate_output_d48; assert_equal("Oil and petroleum products", worksheet.intermediate_output_d48); end
  def test_intermediate_output_g48; assert_in_epsilon(546.628373322753, worksheet.intermediate_output_g48, 0.002); end
  def test_intermediate_output_h48; assert_in_epsilon(673.982035242302, worksheet.intermediate_output_h48, 0.002); end
  def test_intermediate_output_i48; assert_in_epsilon(810.0456886608929, worksheet.intermediate_output_i48, 0.002); end
  def test_intermediate_output_j48; assert_in_epsilon(959.9818016469646, worksheet.intermediate_output_j48, 0.002); end
  def test_intermediate_output_k48; assert_in_epsilon(1033.3960937408597, worksheet.intermediate_output_k48, 0.002); end
  def test_intermediate_output_l48; assert_in_epsilon(1185.4364478681784, worksheet.intermediate_output_l48, 0.002); end
  def test_intermediate_output_m48; assert_in_epsilon(1283.28419764884, worksheet.intermediate_output_m48, 0.002); end
  def test_intermediate_output_n48; assert_in_epsilon(1459.7231176415985, worksheet.intermediate_output_n48, 0.002); end
  def test_intermediate_output_o48; assert_in_epsilon(1650.336333425027, worksheet.intermediate_output_o48, 0.002); end
  def test_intermediate_output_p48; assert_in_epsilon(1830.706604565673, worksheet.intermediate_output_p48, 0.002); end
  def test_intermediate_output_c49; assert_equal("Y.06", worksheet.intermediate_output_c49); end
  def test_intermediate_output_d49; assert_equal("Gas oversupply (imports)", worksheet.intermediate_output_d49); end
  def test_intermediate_output_g49; assert_in_epsilon(127.26770730017887, worksheet.intermediate_output_g49, 0.002); end
  def test_intermediate_output_h49; assert_in_epsilon(139.01707430966013, worksheet.intermediate_output_h49, 0.002); end
  def test_intermediate_output_i49; assert_in_epsilon(184.62321808895283, worksheet.intermediate_output_i49, 0.002); end
  def test_intermediate_output_j49; assert_in_epsilon(218.9351802910691, worksheet.intermediate_output_j49, 0.002); end
  def test_intermediate_output_k49; assert_in_epsilon(343.9636816934601, worksheet.intermediate_output_k49, 0.002); end
  def test_intermediate_output_l49; assert_in_epsilon(369.9805777206349, worksheet.intermediate_output_l49, 0.002); end
  def test_intermediate_output_m49; assert_in_epsilon(474.3493458136029, worksheet.intermediate_output_m49, 0.002); end
  def test_intermediate_output_n49; assert_in_epsilon(571.4857625131569, worksheet.intermediate_output_n49, 0.002); end
  def test_intermediate_output_o49; assert_in_epsilon(621.3963439824832, worksheet.intermediate_output_o49, 0.002); end
  def test_intermediate_output_p49; assert_in_epsilon(664.8515476860441, worksheet.intermediate_output_p49, 0.002); end
  def test_intermediate_output_c50; assert_equal("Q.03", worksheet.intermediate_output_c50); end
  def test_intermediate_output_d50; assert_equal("Gas reserves", worksheet.intermediate_output_d50); end
  def test_intermediate_output_g50; assert_in_epsilon(61.214999999999996, worksheet.intermediate_output_g50, 0.002); end
  def test_intermediate_output_h50; assert_in_epsilon(44.8, worksheet.intermediate_output_h50, 0.002); end
  def test_intermediate_output_i50; assert_in_epsilon(26.453952000000008, worksheet.intermediate_output_i50, 0.002); end
  def test_intermediate_output_j50; assert_in_epsilon(15.62079411648001, worksheet.intermediate_output_j50, 0.002); end
  def test_intermediate_output_k50; assert_in_delta(0.0, (worksheet.intermediate_output_k50||0), 0.002); end
  def test_intermediate_output_l50; assert_in_delta(0.0, (worksheet.intermediate_output_l50||0), 0.002); end
  def test_intermediate_output_m50; assert_in_delta(0.0, (worksheet.intermediate_output_m50||0), 0.002); end
  def test_intermediate_output_n50; assert_in_delta(0.0, (worksheet.intermediate_output_n50||0), 0.002); end
  def test_intermediate_output_o50; assert_in_delta(0.0, (worksheet.intermediate_output_o50||0), 0.002); end
  def test_intermediate_output_p50; assert_in_delta(0.0, (worksheet.intermediate_output_p50||0), 0.002); end
  def test_intermediate_output_d51; assert_equal("Natural gas", worksheet.intermediate_output_d51); end
  def test_intermediate_output_g51; assert_in_epsilon(188.48270730017887, worksheet.intermediate_output_g51, 0.002); end
  def test_intermediate_output_h51; assert_in_epsilon(183.81707430966014, worksheet.intermediate_output_h51, 0.002); end
  def test_intermediate_output_i51; assert_in_epsilon(211.07717008895284, worksheet.intermediate_output_i51, 0.002); end
  def test_intermediate_output_j51; assert_in_epsilon(234.5559744075491, worksheet.intermediate_output_j51, 0.002); end
  def test_intermediate_output_k51; assert_in_epsilon(343.9636816934601, worksheet.intermediate_output_k51, 0.002); end
  def test_intermediate_output_l51; assert_in_epsilon(369.9805777206349, worksheet.intermediate_output_l51, 0.002); end
  def test_intermediate_output_m51; assert_in_epsilon(474.3493458136029, worksheet.intermediate_output_m51, 0.002); end
  def test_intermediate_output_n51; assert_in_epsilon(571.4857625131569, worksheet.intermediate_output_n51, 0.002); end
  def test_intermediate_output_o51; assert_in_epsilon(621.3963439824832, worksheet.intermediate_output_o51, 0.002); end
  def test_intermediate_output_p51; assert_in_epsilon(664.8515476860441, worksheet.intermediate_output_p51, 0.002); end
  def test_intermediate_output_d52; assert_equal("Total Primary Supply", worksheet.intermediate_output_d52); end
  def test_intermediate_output_g52; assert_in_epsilon(4654.293535342784, worksheet.intermediate_output_g52, 0.002); end
  def test_intermediate_output_h52; assert_in_epsilon(5427.440698662573, worksheet.intermediate_output_h52, 0.002); end
  def test_intermediate_output_i52; assert_in_epsilon(6161.845520785596, worksheet.intermediate_output_i52, 0.002); end
  def test_intermediate_output_j52; assert_in_epsilon(7013.310438079915, worksheet.intermediate_output_j52, 0.002); end
  def test_intermediate_output_k52; assert_in_epsilon(8157.638028506466, worksheet.intermediate_output_k52, 0.002); end
  def test_intermediate_output_l52; assert_in_epsilon(9287.954334995642, worksheet.intermediate_output_l52, 0.002); end
  def test_intermediate_output_m52; assert_in_epsilon(10761.55462432805, worksheet.intermediate_output_m52, 0.002); end
  def test_intermediate_output_n52; assert_in_epsilon(12128.060743534174, worksheet.intermediate_output_n52, 0.002); end
  def test_intermediate_output_o52; assert_in_epsilon(13966.237172858862, worksheet.intermediate_output_o52, 0.002); end
  def test_intermediate_output_p52; assert_in_epsilon(15676.75605374273, worksheet.intermediate_output_p52, 0.002); end
  def test_intermediate_output_g53; assert_in_delta(0.8224961873090398, worksheet.intermediate_output_g53, 0.002); end
  def test_intermediate_output_h53; assert_in_delta(0.8188139722332403, worksheet.intermediate_output_h53, 0.002); end
  def test_intermediate_output_i53; assert_in_delta(0.8083747214965965, worksheet.intermediate_output_i53, 0.002); end
  def test_intermediate_output_j53; assert_in_delta(0.7988026612342336, worksheet.intermediate_output_j53, 0.002); end
  def test_intermediate_output_k53; assert_in_delta(0.7969633152803248, worksheet.intermediate_output_k53, 0.002); end
  def test_intermediate_output_l53; assert_in_delta(0.7953597231296233, worksheet.intermediate_output_l53, 0.002); end
  def test_intermediate_output_m53; assert_in_delta(0.7985003466053284, worksheet.intermediate_output_m53, 0.002); end
  def test_intermediate_output_n53; assert_in_delta(0.7913193676318208, worksheet.intermediate_output_n53, 0.002); end
  def test_intermediate_output_o53; assert_in_delta(0.7967346522282798, worksheet.intermediate_output_o53, 0.002); end
  def test_intermediate_output_p53; assert_in_delta(0.8097386563643326, worksheet.intermediate_output_p53, 0.002); end
  def test_intermediate_output_d54; assert_equal("Dummy for charting supply", worksheet.intermediate_output_d54); end
  def test_intermediate_output_g54; assert_in_delta(0.0, (worksheet.intermediate_output_g54||0), 0.002); end
  def test_intermediate_output_h54; assert_in_delta(0.0, (worksheet.intermediate_output_h54||0), 0.002); end
  def test_intermediate_output_i54; assert_in_delta(0.0, (worksheet.intermediate_output_i54||0), 0.002); end
  def test_intermediate_output_j54; assert_in_delta(0.0, (worksheet.intermediate_output_j54||0), 0.002); end
  def test_intermediate_output_k54; assert_in_delta(0.0, (worksheet.intermediate_output_k54||0), 0.002); end
  def test_intermediate_output_l54; assert_in_delta(0.0, (worksheet.intermediate_output_l54||0), 0.002); end
  def test_intermediate_output_m54; assert_in_delta(0.0, (worksheet.intermediate_output_m54||0), 0.002); end
  def test_intermediate_output_n54; assert_in_delta(0.0, (worksheet.intermediate_output_n54||0), 0.002); end
  def test_intermediate_output_o54; assert_in_delta(0.0, (worksheet.intermediate_output_o54||0), 0.002); end
  def test_intermediate_output_p54; assert_in_delta(0.0, (worksheet.intermediate_output_p54||0), 0.002); end
  def test_intermediate_output_c56; assert_equal("Conversion losses, distribution, and own use", worksheet.intermediate_output_c56); end
  def test_intermediate_output_c57; assert_equal("X.01", worksheet.intermediate_output_c57); end
  def test_intermediate_output_d57; assert_equal("Conversion losses", worksheet.intermediate_output_d57); end
  def test_intermediate_output_g57; assert_in_epsilon(2236.3512065761156, worksheet.intermediate_output_g57, 0.002); end
  def test_intermediate_output_h57; assert_in_epsilon(2592.9749957726144, worksheet.intermediate_output_h57, 0.002); end
  def test_intermediate_output_i57; assert_in_epsilon(2813.795536949247, worksheet.intermediate_output_i57, 0.002); end
  def test_intermediate_output_j57; assert_in_epsilon(3072.6678213679625, worksheet.intermediate_output_j57, 0.002); end
  def test_intermediate_output_k57; assert_in_epsilon(3455.9639433496072, worksheet.intermediate_output_k57, 0.002); end
  def test_intermediate_output_l57; assert_in_epsilon(3792.233482090571, worksheet.intermediate_output_l57, 0.002); end
  def test_intermediate_output_m57; assert_in_epsilon(4240.747430707581, worksheet.intermediate_output_m57, 0.002); end
  def test_intermediate_output_n57; assert_in_epsilon(4531.096611281484, worksheet.intermediate_output_n57, 0.002); end
  def test_intermediate_output_o57; assert_in_epsilon(5163.87117759779, worksheet.intermediate_output_o57, 0.002); end
  def test_intermediate_output_p57; assert_in_epsilon(5691.07549603885, worksheet.intermediate_output_p57, 0.002); end
  def test_intermediate_output_c58; assert_equal("X.02", worksheet.intermediate_output_c58); end
  def test_intermediate_output_d58; assert_equal("Distribution losses and own use", worksheet.intermediate_output_d58); end
  def test_intermediate_output_g58; assert_in_epsilon(94.38647039990902, worksheet.intermediate_output_g58, 0.002); end
  def test_intermediate_output_h58; assert_in_epsilon(163.23775352069592, worksheet.intermediate_output_h58, 0.002); end
  def test_intermediate_output_i58; assert_in_epsilon(191.95415814410467, worksheet.intermediate_output_i58, 0.002); end
  def test_intermediate_output_j58; assert_in_epsilon(227.01496221824797, worksheet.intermediate_output_j58, 0.002); end
  def test_intermediate_output_k58; assert_in_epsilon(268.7169771304711, worksheet.intermediate_output_k58, 0.002); end
  def test_intermediate_output_l58; assert_in_epsilon(319.86008446282125, worksheet.intermediate_output_l58, 0.002); end
  def test_intermediate_output_m58; assert_in_epsilon(383.9511428254129, worksheet.intermediate_output_m58, 0.002); end
  def test_intermediate_output_n58; assert_in_epsilon(454.44246430511026, worksheet.intermediate_output_n58, 0.002); end
  def test_intermediate_output_o58; assert_in_epsilon(529.9872453283666, worksheet.intermediate_output_o58, 0.002); end
  def test_intermediate_output_p58; assert_in_epsilon(610.1514716859833, worksheet.intermediate_output_p58, 0.002); end
  def test_intermediate_output_d59; assert_equal("Supply net of losses", worksheet.intermediate_output_d59); end
  def test_intermediate_output_g59; assert_in_epsilon(2323.5558583667594, worksheet.intermediate_output_g59, 0.002); end
  def test_intermediate_output_h59; assert_in_epsilon(2671.227949369262, worksheet.intermediate_output_h59, 0.002); end
  def test_intermediate_output_i59; assert_in_epsilon(3156.095825692244, worksheet.intermediate_output_i59, 0.002); end
  def test_intermediate_output_j59; assert_in_epsilon(3713.6276544937045, worksheet.intermediate_output_j59, 0.002); end
  def test_intermediate_output_k59; assert_in_epsilon(4432.957108026388, worksheet.intermediate_output_k59, 0.002); end
  def test_intermediate_output_l59; assert_in_epsilon(5175.8607684422495, worksheet.intermediate_output_l59, 0.002); end
  def test_intermediate_output_m59; assert_in_epsilon(6136.856050795056, worksheet.intermediate_output_m59, 0.002); end
  def test_intermediate_output_n59; assert_in_epsilon(7142.521667947579, worksheet.intermediate_output_n59, 0.002); end
  def test_intermediate_output_o59; assert_in_epsilon(8272.378749932705, worksheet.intermediate_output_o59, 0.002); end
  def test_intermediate_output_p59; assert_in_epsilon(9375.529086017897, worksheet.intermediate_output_p59, 0.002); end
  def test_intermediate_output_c61; assert_equal("Supply / demand not accounted for", worksheet.intermediate_output_c61); end
  def test_intermediate_output_c63; assert_equal("C.01", worksheet.intermediate_output_c63); end
  def test_intermediate_output_d63; assert_equal("Coal and fossil waste", worksheet.intermediate_output_d63); end
  def test_intermediate_output_g63; assert_in_delta(0.0, (worksheet.intermediate_output_g63||0), 0.002); end
  def test_intermediate_output_h63; assert_in_delta(0.0, (worksheet.intermediate_output_h63||0), 0.002); end
  def test_intermediate_output_i63; assert_in_delta(0.0, (worksheet.intermediate_output_i63||0), 0.002); end
  def test_intermediate_output_j63; assert_in_delta(0.0, (worksheet.intermediate_output_j63||0), 0.002); end
  def test_intermediate_output_k63; assert_in_delta(0.0, (worksheet.intermediate_output_k63||0), 0.002); end
  def test_intermediate_output_l63; assert_in_delta(0.0, (worksheet.intermediate_output_l63||0), 0.002); end
  def test_intermediate_output_m63; assert_in_delta(0.0, (worksheet.intermediate_output_m63||0), 0.002); end
  def test_intermediate_output_n63; assert_in_delta(0.0, (worksheet.intermediate_output_n63||0), 0.002); end
  def test_intermediate_output_o63; assert_in_delta(0.0, (worksheet.intermediate_output_o63||0), 0.002); end
  def test_intermediate_output_p63; assert_in_delta(0.0, (worksheet.intermediate_output_p63||0), 0.002); end
  def test_intermediate_output_c64; assert_equal("C.02", worksheet.intermediate_output_c64); end
  def test_intermediate_output_d64; assert_equal("Oil and petroleum products", worksheet.intermediate_output_d64); end
  def test_intermediate_output_g64; assert_in_delta(0.0, (worksheet.intermediate_output_g64||0), 0.002); end
  def test_intermediate_output_h64; assert_in_delta(0.0, (worksheet.intermediate_output_h64||0), 0.002); end
  def test_intermediate_output_i64; assert_in_delta(0.0, (worksheet.intermediate_output_i64||0), 0.002); end
  def test_intermediate_output_j64; assert_in_delta(0.0, (worksheet.intermediate_output_j64||0), 0.002); end
  def test_intermediate_output_k64; assert_in_delta(0.0, (worksheet.intermediate_output_k64||0), 0.002); end
  def test_intermediate_output_l64; assert_in_delta(0.0, (worksheet.intermediate_output_l64||0), 0.002); end
  def test_intermediate_output_m64; assert_in_delta(0.0, (worksheet.intermediate_output_m64||0), 0.002); end
  def test_intermediate_output_n64; assert_in_delta(0.0, (worksheet.intermediate_output_n64||0), 0.002); end
  def test_intermediate_output_o64; assert_in_delta(0.0, (worksheet.intermediate_output_o64||0), 0.002); end
  def test_intermediate_output_p64; assert_in_delta(0.0, (worksheet.intermediate_output_p64||0), 0.002); end
  def test_intermediate_output_c65; assert_equal("C.03", worksheet.intermediate_output_c65); end
  def test_intermediate_output_d65; assert_equal("Natural gas", worksheet.intermediate_output_d65); end
  def test_intermediate_output_g65; assert_in_delta(0.0, (worksheet.intermediate_output_g65||0), 0.002); end
  def test_intermediate_output_h65; assert_in_delta(0.0, (worksheet.intermediate_output_h65||0), 0.002); end
  def test_intermediate_output_i65; assert_in_delta(0.0, (worksheet.intermediate_output_i65||0), 0.002); end
  def test_intermediate_output_j65; assert_in_delta(0.0, (worksheet.intermediate_output_j65||0), 0.002); end
  def test_intermediate_output_k65; assert_in_delta(0.0, (worksheet.intermediate_output_k65||0), 0.002); end
  def test_intermediate_output_l65; assert_in_delta(0.0, (worksheet.intermediate_output_l65||0), 0.002); end
  def test_intermediate_output_m65; assert_in_delta(0.0, (worksheet.intermediate_output_m65||0), 0.002); end
  def test_intermediate_output_n65; assert_in_delta(0.0, (worksheet.intermediate_output_n65||0), 0.002); end
  def test_intermediate_output_o65; assert_in_delta(0.0, (worksheet.intermediate_output_o65||0), 0.002); end
  def test_intermediate_output_p65; assert_in_delta(0.0, (worksheet.intermediate_output_p65||0), 0.002); end
  def test_intermediate_output_c66; assert_equal("V.03", worksheet.intermediate_output_c66); end
  def test_intermediate_output_d66; assert_equal("Solid hydrocarbons", worksheet.intermediate_output_d66); end
  def test_intermediate_output_g66; assert_in_delta(0.0, (worksheet.intermediate_output_g66||0), 0.002); end
  def test_intermediate_output_h66; assert_in_delta(0.0, (worksheet.intermediate_output_h66||0), 0.002); end
  def test_intermediate_output_i66; assert_in_delta(0.0, (worksheet.intermediate_output_i66||0), 0.002); end
  def test_intermediate_output_j66; assert_in_delta(0.0, (worksheet.intermediate_output_j66||0), 0.002); end
  def test_intermediate_output_k66; assert_in_delta(0.0, (worksheet.intermediate_output_k66||0), 0.002); end
  def test_intermediate_output_l66; assert_in_delta(0.0, (worksheet.intermediate_output_l66||0), 0.002); end
  def test_intermediate_output_m66; assert_in_delta(0.0, (worksheet.intermediate_output_m66||0), 0.002); end
  def test_intermediate_output_n66; assert_in_delta(0.0, (worksheet.intermediate_output_n66||0), 0.002); end
  def test_intermediate_output_o66; assert_in_delta(0.0, (worksheet.intermediate_output_o66||0), 0.002); end
  def test_intermediate_output_p66; assert_in_delta(0.0, (worksheet.intermediate_output_p66||0), 0.002); end
  def test_intermediate_output_c67; assert_equal("V.04", worksheet.intermediate_output_c67); end
  def test_intermediate_output_d67; assert_equal("Liquid hydrocarbons", worksheet.intermediate_output_d67); end
  def test_intermediate_output_g67; assert_in_delta(0.0, (worksheet.intermediate_output_g67||0), 0.002); end
  def test_intermediate_output_h67; assert_in_delta(0.0, (worksheet.intermediate_output_h67||0), 0.002); end
  def test_intermediate_output_i67; assert_in_delta(0.0, (worksheet.intermediate_output_i67||0), 0.002); end
  def test_intermediate_output_j67; assert_in_delta(0.0, (worksheet.intermediate_output_j67||0), 0.002); end
  def test_intermediate_output_k67; assert_in_delta(0.0, (worksheet.intermediate_output_k67||0), 0.002); end
  def test_intermediate_output_l67; assert_in_delta(0.0, (worksheet.intermediate_output_l67||0), 0.002); end
  def test_intermediate_output_m67; assert_in_delta(0.0, (worksheet.intermediate_output_m67||0), 0.002); end
  def test_intermediate_output_n67; assert_in_delta(0.0, (worksheet.intermediate_output_n67||0), 0.002); end
  def test_intermediate_output_o67; assert_in_delta(0.0, (worksheet.intermediate_output_o67||0), 0.002); end
  def test_intermediate_output_p67; assert_in_delta(0.0, (worksheet.intermediate_output_p67||0), 0.002); end
  def test_intermediate_output_c68; assert_equal("V.05", worksheet.intermediate_output_c68); end
  def test_intermediate_output_d68; assert_equal("Gaseous hydrocarbons", worksheet.intermediate_output_d68); end
  def test_intermediate_output_g68; assert_in_delta(0.0, (worksheet.intermediate_output_g68||0), 0.002); end
  def test_intermediate_output_h68; assert_in_delta(0.0, (worksheet.intermediate_output_h68||0), 0.002); end
  def test_intermediate_output_i68; assert_in_delta(0.0, (worksheet.intermediate_output_i68||0), 0.002); end
  def test_intermediate_output_j68; assert_in_delta(0.0, (worksheet.intermediate_output_j68||0), 0.002); end
  def test_intermediate_output_k68; assert_in_delta(0.0, (worksheet.intermediate_output_k68||0), 0.002); end
  def test_intermediate_output_l68; assert_in_delta(0.0, (worksheet.intermediate_output_l68||0), 0.002); end
  def test_intermediate_output_m68; assert_in_delta(0.0, (worksheet.intermediate_output_m68||0), 0.002); end
  def test_intermediate_output_n68; assert_in_delta(0.0, (worksheet.intermediate_output_n68||0), 0.002); end
  def test_intermediate_output_o68; assert_in_delta(0.0, (worksheet.intermediate_output_o68||0), 0.002); end
  def test_intermediate_output_p68; assert_in_delta(0.0, (worksheet.intermediate_output_p68||0), 0.002); end
  def test_intermediate_output_c69; assert_equal("V.06", worksheet.intermediate_output_c69); end
  def test_intermediate_output_d69; assert_equal("Blast furnace gas", worksheet.intermediate_output_d69); end
  def test_intermediate_output_g69; assert_in_delta(0.0, (worksheet.intermediate_output_g69||0), 0.002); end
  def test_intermediate_output_h69; assert_in_delta(0.0, (worksheet.intermediate_output_h69||0), 0.002); end
  def test_intermediate_output_i69; assert_in_delta(0.0, (worksheet.intermediate_output_i69||0), 0.002); end
  def test_intermediate_output_j69; assert_in_delta(0.0, (worksheet.intermediate_output_j69||0), 0.002); end
  def test_intermediate_output_k69; assert_in_delta(0.0, (worksheet.intermediate_output_k69||0), 0.002); end
  def test_intermediate_output_l69; assert_in_delta(0.0, (worksheet.intermediate_output_l69||0), 0.002); end
  def test_intermediate_output_m69; assert_in_delta(0.0, (worksheet.intermediate_output_m69||0), 0.002); end
  def test_intermediate_output_n69; assert_in_delta(0.0, (worksheet.intermediate_output_n69||0), 0.002); end
  def test_intermediate_output_o69; assert_in_delta(0.0, (worksheet.intermediate_output_o69||0), 0.002); end
  def test_intermediate_output_p69; assert_in_delta(0.0, (worksheet.intermediate_output_p69||0), 0.002); end
  def test_intermediate_output_c70; assert_equal("V.08", worksheet.intermediate_output_c70); end
  def test_intermediate_output_d70; assert_equal("Edible biomass", worksheet.intermediate_output_d70); end
  def test_intermediate_output_g70; assert_in_delta(0.0, (worksheet.intermediate_output_g70||0), 0.002); end
  def test_intermediate_output_h70; assert_in_delta(0.0, (worksheet.intermediate_output_h70||0), 0.002); end
  def test_intermediate_output_i70; assert_in_delta(0.0, (worksheet.intermediate_output_i70||0), 0.002); end
  def test_intermediate_output_j70; assert_in_delta(0.0, (worksheet.intermediate_output_j70||0), 0.002); end
  def test_intermediate_output_k70; assert_in_delta(0.0, (worksheet.intermediate_output_k70||0), 0.002); end
  def test_intermediate_output_l70; assert_in_delta(0.0, (worksheet.intermediate_output_l70||0), 0.002); end
  def test_intermediate_output_m70; assert_in_delta(0.0, (worksheet.intermediate_output_m70||0), 0.002); end
  def test_intermediate_output_n70; assert_in_delta(0.0, (worksheet.intermediate_output_n70||0), 0.002); end
  def test_intermediate_output_o70; assert_in_delta(0.0, (worksheet.intermediate_output_o70||0), 0.002); end
  def test_intermediate_output_p70; assert_in_delta(0.0, (worksheet.intermediate_output_p70||0), 0.002); end
  def test_intermediate_output_c71; assert_equal("V.07", worksheet.intermediate_output_c71); end
  def test_intermediate_output_d71; assert_equal("Heat transport", worksheet.intermediate_output_d71); end
  def test_intermediate_output_g71; assert_in_delta(0.0, (worksheet.intermediate_output_g71||0), 0.002); end
  def test_intermediate_output_h71; assert_in_delta(0.0, (worksheet.intermediate_output_h71||0), 0.002); end
  def test_intermediate_output_i71; assert_in_delta(0.0, (worksheet.intermediate_output_i71||0), 0.002); end
  def test_intermediate_output_j71; assert_in_delta(0.0, (worksheet.intermediate_output_j71||0), 0.002); end
  def test_intermediate_output_k71; assert_in_delta(0.0, (worksheet.intermediate_output_k71||0), 0.002); end
  def test_intermediate_output_l71; assert_in_delta(0.0, (worksheet.intermediate_output_l71||0), 0.002); end
  def test_intermediate_output_m71; assert_in_delta(0.0, (worksheet.intermediate_output_m71||0), 0.002); end
  def test_intermediate_output_n71; assert_in_delta(0.0, (worksheet.intermediate_output_n71||0), 0.002); end
  def test_intermediate_output_o71; assert_in_delta(0.0, (worksheet.intermediate_output_o71||0), 0.002); end
  def test_intermediate_output_p71; assert_in_delta(0.0, (worksheet.intermediate_output_p71||0), 0.002); end
  def test_intermediate_output_c72; assert_equal("V.09", worksheet.intermediate_output_c72); end
  def test_intermediate_output_d72; assert_equal("Dry biomass and waste", worksheet.intermediate_output_d72); end
  def test_intermediate_output_g72; assert_in_epsilon(-181.05600370373242, worksheet.intermediate_output_g72, 0.002); end
  def test_intermediate_output_h72; assert_in_epsilon(-186.35986426623117, worksheet.intermediate_output_h72, 0.002); end
  def test_intermediate_output_i72; assert_in_epsilon(-200.60071420243594, worksheet.intermediate_output_i72, 0.002); end
  def test_intermediate_output_j72; assert_in_epsilon(-213.5684443752981, worksheet.intermediate_output_j72, 0.002); end
  def test_intermediate_output_k72; assert_in_epsilon(-231.28129365073806, worksheet.intermediate_output_k72, 0.002); end
  def test_intermediate_output_l72; assert_in_epsilon(-247.47186177979694, worksheet.intermediate_output_l72, 0.002); end
  def test_intermediate_output_m72; assert_in_epsilon(-266.0164188949144, worksheet.intermediate_output_m72, 0.002); end
  def test_intermediate_output_n72; assert_in_epsilon(-284.75217253911376, worksheet.intermediate_output_n72, 0.002); end
  def test_intermediate_output_o72; assert_in_epsilon(-305.4893118948317, worksheet.intermediate_output_o72, 0.002); end
  def test_intermediate_output_p72; assert_in_epsilon(-327.00306767593275, worksheet.intermediate_output_p72, 0.002); end
  def test_intermediate_output_c73; assert_equal("V.10", worksheet.intermediate_output_c73); end
  def test_intermediate_output_d73; assert_equal("Wet biomass and waste", worksheet.intermediate_output_d73); end
  def test_intermediate_output_g73; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_g73, 0.002); end
  def test_intermediate_output_h73; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_h73, 0.002); end
  def test_intermediate_output_i73; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_i73, 0.002); end
  def test_intermediate_output_j73; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_j73, 0.002); end
  def test_intermediate_output_k73; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_k73, 0.002); end
  def test_intermediate_output_l73; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_l73, 0.002); end
  def test_intermediate_output_m73; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_m73, 0.002); end
  def test_intermediate_output_n73; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_n73, 0.002); end
  def test_intermediate_output_o73; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_o73, 0.002); end
  def test_intermediate_output_p73; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_p73, 0.002); end
  def test_intermediate_output_c74; assert_equal("V.11", worksheet.intermediate_output_c74); end
  def test_intermediate_output_d74; assert_equal("Domestic solar thermal", worksheet.intermediate_output_d74); end
  def test_intermediate_output_g74; assert_in_delta(0.0, (worksheet.intermediate_output_g74||0), 0.002); end
  def test_intermediate_output_h74; assert_in_delta(0.0, (worksheet.intermediate_output_h74||0), 0.002); end
  def test_intermediate_output_i74; assert_in_delta(0.0, (worksheet.intermediate_output_i74||0), 0.002); end
  def test_intermediate_output_j74; assert_in_delta(0.0, (worksheet.intermediate_output_j74||0), 0.002); end
  def test_intermediate_output_k74; assert_in_delta(0.0, (worksheet.intermediate_output_k74||0), 0.002); end
  def test_intermediate_output_l74; assert_in_delta(0.0, (worksheet.intermediate_output_l74||0), 0.002); end
  def test_intermediate_output_m74; assert_in_delta(0.0, (worksheet.intermediate_output_m74||0), 0.002); end
  def test_intermediate_output_n74; assert_in_delta(0.0, (worksheet.intermediate_output_n74||0), 0.002); end
  def test_intermediate_output_o74; assert_in_delta(0.0, (worksheet.intermediate_output_o74||0), 0.002); end
  def test_intermediate_output_p74; assert_in_delta(0.0, (worksheet.intermediate_output_p74||0), 0.002); end
  def test_intermediate_output_c75; assert_equal("V.12", worksheet.intermediate_output_c75); end
  def test_intermediate_output_d75; assert_equal("Hydrogen", worksheet.intermediate_output_d75); end
  def test_intermediate_output_g75; assert_in_delta(0.0, (worksheet.intermediate_output_g75||0), 0.002); end
  def test_intermediate_output_h75; assert_in_delta(0.0, (worksheet.intermediate_output_h75||0), 0.002); end
  def test_intermediate_output_i75; assert_in_delta(0.0, (worksheet.intermediate_output_i75||0), 0.002); end
  def test_intermediate_output_j75; assert_in_delta(0.0, (worksheet.intermediate_output_j75||0), 0.002); end
  def test_intermediate_output_k75; assert_in_delta(0.0, (worksheet.intermediate_output_k75||0), 0.002); end
  def test_intermediate_output_l75; assert_in_delta(0.0, (worksheet.intermediate_output_l75||0), 0.002); end
  def test_intermediate_output_m75; assert_in_delta(0.0, (worksheet.intermediate_output_m75||0), 0.002); end
  def test_intermediate_output_n75; assert_in_delta(0.0, (worksheet.intermediate_output_n75||0), 0.002); end
  def test_intermediate_output_o75; assert_in_delta(0.0, (worksheet.intermediate_output_o75||0), 0.002); end
  def test_intermediate_output_p75; assert_in_delta(0.0, (worksheet.intermediate_output_p75||0), 0.002); end
  def test_intermediate_output_c76; assert_equal("V.13", worksheet.intermediate_output_c76); end
  def test_intermediate_output_d76; assert_equal("Energy crops (second generation)", worksheet.intermediate_output_d76); end
  def test_intermediate_output_g76; assert_in_delta(0.0, (worksheet.intermediate_output_g76||0), 0.002); end
  def test_intermediate_output_h76; assert_in_delta(0.0, (worksheet.intermediate_output_h76||0), 0.002); end
  def test_intermediate_output_i76; assert_in_delta(0.0, (worksheet.intermediate_output_i76||0), 0.002); end
  def test_intermediate_output_j76; assert_in_delta(0.0, (worksheet.intermediate_output_j76||0), 0.002); end
  def test_intermediate_output_k76; assert_in_delta(0.0, (worksheet.intermediate_output_k76||0), 0.002); end
  def test_intermediate_output_l76; assert_in_delta(0.0, (worksheet.intermediate_output_l76||0), 0.002); end
  def test_intermediate_output_m76; assert_in_delta(0.0, (worksheet.intermediate_output_m76||0), 0.002); end
  def test_intermediate_output_n76; assert_in_delta(0.0, (worksheet.intermediate_output_n76||0), 0.002); end
  def test_intermediate_output_o76; assert_in_delta(0.0, (worksheet.intermediate_output_o76||0), 0.002); end
  def test_intermediate_output_p76; assert_in_delta(0.0, (worksheet.intermediate_output_p76||0), 0.002); end
  def test_intermediate_output_d77; assert_equal("Total unnaccounted supply / demand", worksheet.intermediate_output_d77); end
  def test_intermediate_output_g77; assert_in_epsilon(-196.1998647917324, worksheet.intermediate_output_g77, 0.002); end
  def test_intermediate_output_h77; assert_in_epsilon(-201.50372535423116, worksheet.intermediate_output_h77, 0.002); end
  def test_intermediate_output_i77; assert_in_epsilon(-215.74457529043593, worksheet.intermediate_output_i77, 0.002); end
  def test_intermediate_output_j77; assert_in_epsilon(-228.7123054632981, worksheet.intermediate_output_j77, 0.002); end
  def test_intermediate_output_k77; assert_in_epsilon(-246.42515473873806, worksheet.intermediate_output_k77, 0.002); end
  def test_intermediate_output_l77; assert_in_epsilon(-262.61572286779693, worksheet.intermediate_output_l77, 0.002); end
  def test_intermediate_output_m77; assert_in_epsilon(-281.1602799829144, worksheet.intermediate_output_m77, 0.002); end
  def test_intermediate_output_n77; assert_in_epsilon(-299.89603362711375, worksheet.intermediate_output_n77, 0.002); end
  def test_intermediate_output_o77; assert_in_epsilon(-320.6331729828317, worksheet.intermediate_output_o77, 0.002); end
  def test_intermediate_output_p77; assert_in_epsilon(-342.14692876393275, worksheet.intermediate_output_p77, 0.002); end
  def test_intermediate_output_d79; assert_equal("Supply, Demand, and Unaccounted supply", worksheet.intermediate_output_d79); end
  def test_intermediate_output_g79; assert_in_epsilon(-54.79193317847813, worksheet.intermediate_output_g79, 0.002); end
  def test_intermediate_output_h79; assert_in_epsilon(-51.93840759805812, worksheet.intermediate_output_h79, 0.002); end
  def test_intermediate_output_i79; assert_in_epsilon(-52.476599868170524, worksheet.intermediate_output_i79, 0.002); end
  def test_intermediate_output_j79; assert_in_epsilon(-67.41050978913665, worksheet.intermediate_output_j79, 0.002); end
  def test_intermediate_output_k79; assert_in_epsilon(-113.74714017959155, worksheet.intermediate_output_k79, 0.002); end
  def test_intermediate_output_l79; assert_in_epsilon(-115.25479222415771, worksheet.intermediate_output_l79, 0.002); end
  def test_intermediate_output_m79; assert_in_epsilon(-103.2221367523772, worksheet.intermediate_output_m79, 0.002); end
  def test_intermediate_output_n79; assert_in_epsilon(-92.98698476532161, worksheet.intermediate_output_n79, 0.002); end
  def test_intermediate_output_o79; assert_in_epsilon(-93.8310435796621, worksheet.intermediate_output_o79, 0.002); end
  def test_intermediate_output_p79; assert_in_epsilon(-94.85473704690486, worksheet.intermediate_output_p79, 0.002); end
  def test_intermediate_output_b83; assert_equal("Electricity grid (net of distribution losses)", worksheet.intermediate_output_b83); end
  def test_intermediate_output_c85; assert_equal("V.01", worksheet.intermediate_output_c85); end
  def test_intermediate_output_d85; assert_equal("Electricity (delivered to end user)", worksheet.intermediate_output_d85); end
  def test_intermediate_output_g85; assert_in_epsilon(-891.5599733590611, worksheet.intermediate_output_g85, 0.002); end
  def test_intermediate_output_h85; assert_in_epsilon(-1057.0795468944698, worksheet.intermediate_output_h85, 0.002); end
  def test_intermediate_output_i85; assert_in_epsilon(-1240.9325364602746, worksheet.intermediate_output_i85, 0.002); end
  def test_intermediate_output_j85; assert_in_epsilon(-1416.4188082770797, worksheet.intermediate_output_j85, 0.002); end
  def test_intermediate_output_k85; assert_in_epsilon(-1617.1699958744116, worksheet.intermediate_output_k85, 0.002); end
  def test_intermediate_output_l85; assert_in_epsilon(-1871.7473674724179, worksheet.intermediate_output_l85, 0.002); end
  def test_intermediate_output_m85; assert_in_epsilon(-2212.079021708725, worksheet.intermediate_output_m85, 0.002); end
  def test_intermediate_output_n85; assert_in_epsilon(-2567.423378896934, worksheet.intermediate_output_n85, 0.002); end
  def test_intermediate_output_o85; assert_in_epsilon(-2976.910089355364, worksheet.intermediate_output_o85, 0.002); end
  def test_intermediate_output_p85; assert_in_epsilon(-3421.2667653904464, worksheet.intermediate_output_p85, 0.002); end
  def test_intermediate_output_q85; assert_equal("REFERENCED", worksheet.intermediate_output_q85); end
  def test_intermediate_output_c86; assert_equal("V.02", worksheet.intermediate_output_c86); end
  def test_intermediate_output_d86; assert_equal("Electricity (supplied to grid)", worksheet.intermediate_output_d86); end
  def test_intermediate_output_g86; assert_in_epsilon(891.5599733590611, worksheet.intermediate_output_g86, 0.002); end
  def test_intermediate_output_h86; assert_in_epsilon(1057.0795468944698, worksheet.intermediate_output_h86, 0.002); end
  def test_intermediate_output_i86; assert_in_epsilon(1240.9325364602746, worksheet.intermediate_output_i86, 0.002); end
  def test_intermediate_output_j86; assert_in_epsilon(1416.4188082770797, worksheet.intermediate_output_j86, 0.002); end
  def test_intermediate_output_k86; assert_in_epsilon(1617.1699958744116, worksheet.intermediate_output_k86, 0.002); end
  def test_intermediate_output_l86; assert_in_epsilon(1871.7473674724179, worksheet.intermediate_output_l86, 0.002); end
  def test_intermediate_output_m86; assert_in_epsilon(2212.079021708725, worksheet.intermediate_output_m86, 0.002); end
  def test_intermediate_output_n86; assert_in_epsilon(2567.423378896934, worksheet.intermediate_output_n86, 0.002); end
  def test_intermediate_output_o86; assert_in_epsilon(2976.910089355364, worksheet.intermediate_output_o86, 0.002); end
  def test_intermediate_output_p86; assert_in_epsilon(3421.2667653904464, worksheet.intermediate_output_p86, 0.002); end
  def test_intermediate_output_d87; assert_equal("Total electricity grid", worksheet.intermediate_output_d87); end
  def test_intermediate_output_g87; assert_in_delta(0.0, (worksheet.intermediate_output_g87||0), 0.002); end
  def test_intermediate_output_h87; assert_in_delta(0.0, (worksheet.intermediate_output_h87||0), 0.002); end
  def test_intermediate_output_i87; assert_in_delta(0.0, (worksheet.intermediate_output_i87||0), 0.002); end
  def test_intermediate_output_j87; assert_in_delta(0.0, (worksheet.intermediate_output_j87||0), 0.002); end
  def test_intermediate_output_k87; assert_in_delta(0.0, (worksheet.intermediate_output_k87||0), 0.002); end
  def test_intermediate_output_l87; assert_in_delta(0.0, (worksheet.intermediate_output_l87||0), 0.002); end
  def test_intermediate_output_m87; assert_in_delta(0.0, (worksheet.intermediate_output_m87||0), 0.002); end
  def test_intermediate_output_n87; assert_in_delta(0.0, (worksheet.intermediate_output_n87||0), 0.002); end
  def test_intermediate_output_o87; assert_in_delta(0.0, (worksheet.intermediate_output_o87||0), 0.002); end
  def test_intermediate_output_p87; assert_in_delta(0.0, (worksheet.intermediate_output_p87||0), 0.002); end
  def test_intermediate_output_c89; assert_equal("V.01", worksheet.intermediate_output_c89); end
  def test_intermediate_output_d89; assert_equal("Losses", worksheet.intermediate_output_d89); end
  def test_intermediate_output_g89; assert_in_epsilon(-90.84932115895033, worksheet.intermediate_output_g89, 0.002); end
  def test_intermediate_output_h89; assert_in_epsilon(-158.872537120292, worksheet.intermediate_output_h89, 0.002); end
  def test_intermediate_output_i89; assert_in_epsilon(-186.70840333995676, worksheet.intermediate_output_i89, 0.002); end
  def test_intermediate_output_j89; assert_in_epsilon(-220.79587126600217, worksheet.intermediate_output_j89, 0.002); end
  def test_intermediate_output_k89; assert_in_epsilon(-262.02276473731916, worksheet.intermediate_output_k89, 0.002); end
  def test_intermediate_output_l89; assert_in_epsilon(-312.1781911524362, worksheet.intermediate_output_l89, 0.002); end
  def test_intermediate_output_m89; assert_in_epsilon(-375.63301921669614, worksheet.intermediate_output_m89, 0.002); end
  def test_intermediate_output_n89; assert_in_epsilon(-444.9806807428328, worksheet.intermediate_output_n89, 0.002); end
  def test_intermediate_output_o89; assert_in_epsilon(-519.2899254030244, worksheet.intermediate_output_o89, 0.002); end
  def test_intermediate_output_p89; assert_in_epsilon(-598.2850091705317, worksheet.intermediate_output_p89, 0.002); end
  def test_intermediate_output_d90; assert_equal("Demand (for charting)", worksheet.intermediate_output_d90); end
  def test_intermediate_output_g90; assert_in_epsilon(891.5599733590611, worksheet.intermediate_output_g90, 0.002); end
  def test_intermediate_output_h90; assert_in_epsilon(1057.0795468944698, worksheet.intermediate_output_h90, 0.002); end
  def test_intermediate_output_i90; assert_in_epsilon(1240.9325364602746, worksheet.intermediate_output_i90, 0.002); end
  def test_intermediate_output_j90; assert_in_epsilon(1416.4188082770797, worksheet.intermediate_output_j90, 0.002); end
  def test_intermediate_output_k90; assert_in_epsilon(1617.1699958744116, worksheet.intermediate_output_k90, 0.002); end
  def test_intermediate_output_l90; assert_in_epsilon(1871.7473674724179, worksheet.intermediate_output_l90, 0.002); end
  def test_intermediate_output_m90; assert_in_epsilon(2212.079021708725, worksheet.intermediate_output_m90, 0.002); end
  def test_intermediate_output_n90; assert_in_epsilon(2567.423378896934, worksheet.intermediate_output_n90, 0.002); end
  def test_intermediate_output_o90; assert_in_epsilon(2976.910089355364, worksheet.intermediate_output_o90, 0.002); end
  def test_intermediate_output_p90; assert_in_epsilon(3421.2667653904464, worksheet.intermediate_output_p90, 0.002); end
  def test_intermediate_output_d91; assert_equal("Dummy for charting", worksheet.intermediate_output_d91); end
  def test_intermediate_output_g91; assert_in_epsilon(891.5599733590611, worksheet.intermediate_output_g91, 0.002); end
  def test_intermediate_output_h91; assert_in_epsilon(1057.0795468944698, worksheet.intermediate_output_h91, 0.002); end
  def test_intermediate_output_i91; assert_in_epsilon(1240.9325364602746, worksheet.intermediate_output_i91, 0.002); end
  def test_intermediate_output_j91; assert_in_epsilon(1416.4188082770797, worksheet.intermediate_output_j91, 0.002); end
  def test_intermediate_output_k91; assert_in_epsilon(1617.1699958744116, worksheet.intermediate_output_k91, 0.002); end
  def test_intermediate_output_l91; assert_in_epsilon(1871.7473674724179, worksheet.intermediate_output_l91, 0.002); end
  def test_intermediate_output_m91; assert_in_epsilon(2212.079021708725, worksheet.intermediate_output_m91, 0.002); end
  def test_intermediate_output_n91; assert_in_epsilon(2567.423378896934, worksheet.intermediate_output_n91, 0.002); end
  def test_intermediate_output_o91; assert_in_epsilon(2976.910089355364, worksheet.intermediate_output_o91, 0.002); end
  def test_intermediate_output_p91; assert_in_epsilon(3421.2667653904464, worksheet.intermediate_output_p91, 0.002); end
  def test_intermediate_output_r91; assert_equal("Includes exports", worksheet.intermediate_output_r91); end
  def test_intermediate_output_c94; assert_equal("Z.01", worksheet.intermediate_output_c94); end
  def test_intermediate_output_d94; assert_equal("Unallocated", worksheet.intermediate_output_d94); end
  def test_intermediate_output_g94; assert_in_epsilon(-55.46499367127808, worksheet.intermediate_output_g94, 0.002); end
  def test_intermediate_output_h94; assert_in_epsilon(-52.61146809085858, worksheet.intermediate_output_h94, 0.002); end
  def test_intermediate_output_i94; assert_in_epsilon(-53.1496603609703, worksheet.intermediate_output_i94, 0.002); end
  def test_intermediate_output_j94; assert_in_epsilon(-68.08357028193586, worksheet.intermediate_output_j94, 0.002); end
  def test_intermediate_output_k94; assert_in_epsilon(-114.42020067239173, worksheet.intermediate_output_k94, 0.002); end
  def test_intermediate_output_l94; assert_in_epsilon(-115.92785271695993, worksheet.intermediate_output_l94, 0.002); end
  def test_intermediate_output_m94; assert_in_epsilon(-103.89519724517868, worksheet.intermediate_output_m94, 0.002); end
  def test_intermediate_output_n94; assert_in_epsilon(-93.66004525812514, worksheet.intermediate_output_n94, 0.002); end
  def test_intermediate_output_o94; assert_in_epsilon(-94.50410407246454, worksheet.intermediate_output_o94, 0.002); end
  def test_intermediate_output_p94; assert_in_epsilon(-95.52779753970572, worksheet.intermediate_output_p94, 0.002); end
  def test_intermediate_output_d96; assert_equal("Net balance ", worksheet.intermediate_output_d96); end
  def test_intermediate_output_g96; assert_in_epsilon(-110.25692684975621, worksheet.intermediate_output_g96, 0.002); end
  def test_intermediate_output_h96; assert_in_epsilon(-104.5498756889167, worksheet.intermediate_output_h96, 0.002); end
  def test_intermediate_output_i96; assert_in_epsilon(-105.62626022914083, worksheet.intermediate_output_i96, 0.002); end
  def test_intermediate_output_j96; assert_in_epsilon(-135.49408007107252, worksheet.intermediate_output_j96, 0.002); end
  def test_intermediate_output_k96; assert_in_epsilon(-228.16734085198328, worksheet.intermediate_output_k96, 0.002); end
  def test_intermediate_output_l96; assert_in_epsilon(-231.18264494111764, worksheet.intermediate_output_l96, 0.002); end
  def test_intermediate_output_m96; assert_in_epsilon(-207.11733399755587, worksheet.intermediate_output_m96, 0.002); end
  def test_intermediate_output_n96; assert_in_epsilon(-186.64703002344675, worksheet.intermediate_output_n96, 0.002); end
  def test_intermediate_output_o96; assert_in_epsilon(-188.33514765212664, worksheet.intermediate_output_o96, 0.002); end
  def test_intermediate_output_p96; assert_in_epsilon(-190.38253458661057, worksheet.intermediate_output_p96, 0.002); end
  def test_intermediate_output_b98; assert_equal("Electricity Generation", worksheet.intermediate_output_b98); end
  def test_intermediate_output_r99; assert_equal("This graph is used for the website generation since it does not include the duplications and redudancies of the list to the left.", worksheet.intermediate_output_r99); end
  def test_intermediate_output_c100; assert_equal("V.02", worksheet.intermediate_output_c100); end
  def test_intermediate_output_d100; assert_equal("PJ", worksheet.intermediate_output_d100); end
  def test_intermediate_output_g100; assert_in_epsilon(2006.0, worksheet.intermediate_output_g100, 0.002); end
  def test_intermediate_output_h100; assert_in_epsilon(2010.0, worksheet.intermediate_output_h100, 0.002); end
  def test_intermediate_output_i100; assert_in_epsilon(2015.0, worksheet.intermediate_output_i100, 0.002); end
  def test_intermediate_output_j100; assert_in_epsilon(2020.0, worksheet.intermediate_output_j100, 0.002); end
  def test_intermediate_output_k100; assert_in_epsilon(2025.0, worksheet.intermediate_output_k100, 0.002); end
  def test_intermediate_output_l100; assert_in_epsilon(2030.0, worksheet.intermediate_output_l100, 0.002); end
  def test_intermediate_output_m100; assert_in_epsilon(2035.0, worksheet.intermediate_output_m100, 0.002); end
  def test_intermediate_output_n100; assert_in_epsilon(2040.0, worksheet.intermediate_output_n100, 0.002); end
  def test_intermediate_output_o100; assert_in_epsilon(2045.0, worksheet.intermediate_output_o100, 0.002); end
  def test_intermediate_output_p100; assert_in_epsilon(2050.0, worksheet.intermediate_output_p100, 0.002); end
  def test_intermediate_output_r100; assert_equal("V.02", worksheet.intermediate_output_r100); end
  def test_intermediate_output_s100; assert_equal("PJ", worksheet.intermediate_output_s100); end
  def test_intermediate_output_v100; assert_in_epsilon(2006.0, worksheet.intermediate_output_v100, 0.002); end
  def test_intermediate_output_w100; assert_in_epsilon(2010.0, worksheet.intermediate_output_w100, 0.002); end
  def test_intermediate_output_x100; assert_in_epsilon(2015.0, worksheet.intermediate_output_x100, 0.002); end
  def test_intermediate_output_y100; assert_in_epsilon(2020.0, worksheet.intermediate_output_y100, 0.002); end
  def test_intermediate_output_z100; assert_in_epsilon(2025.0, worksheet.intermediate_output_z100, 0.002); end
  def test_intermediate_output_aa100; assert_in_epsilon(2030.0, worksheet.intermediate_output_aa100, 0.002); end
  def test_intermediate_output_ab100; assert_in_epsilon(2035.0, worksheet.intermediate_output_ab100, 0.002); end
  def test_intermediate_output_ac100; assert_in_epsilon(2040.0, worksheet.intermediate_output_ac100, 0.002); end
  def test_intermediate_output_ad100; assert_in_epsilon(2045.0, worksheet.intermediate_output_ad100, 0.002); end
  def test_intermediate_output_ae100; assert_in_epsilon(2050.0, worksheet.intermediate_output_ae100, 0.002); end
  def test_intermediate_output_c101; assert_equal("Therm.a", worksheet.intermediate_output_c101); end
  def test_intermediate_output_d101; assert_equal("Biomass/Coal power stations", worksheet.intermediate_output_d101); end
  def test_intermediate_output_g101; assert_in_epsilon(824.7142358557012, worksheet.intermediate_output_g101, 0.002); end
  def test_intermediate_output_h101; assert_in_epsilon(979.5018717201098, worksheet.intermediate_output_h101, 0.002); end
  def test_intermediate_output_i101; assert_in_epsilon(1130.9229237977195, worksheet.intermediate_output_i101, 0.002); end
  def test_intermediate_output_j101; assert_in_epsilon(1291.2412708769657, worksheet.intermediate_output_j101, 0.002); end
  def test_intermediate_output_k101; assert_in_epsilon(1492.3670923972422, worksheet.intermediate_output_k101, 0.002); end
  def test_intermediate_output_l101; assert_in_epsilon(1746.860175302783, worksheet.intermediate_output_l101, 0.002); end
  def test_intermediate_output_m101; assert_in_epsilon(2087.19182953909, worksheet.intermediate_output_m101, 0.002); end
  def test_intermediate_output_n101; assert_in_epsilon(2442.536186727299, worksheet.intermediate_output_n101, 0.002); end
  def test_intermediate_output_o101; assert_in_epsilon(2852.022897185728, worksheet.intermediate_output_o101, 0.002); end
  def test_intermediate_output_p101; assert_in_epsilon(3344.895596308811, worksheet.intermediate_output_p101, 0.002); end
  def test_intermediate_output_r101; assert_equal("Therm.a", worksheet.intermediate_output_r101); end
  def test_intermediate_output_s101; assert_equal("Coal power", worksheet.intermediate_output_s101); end
  def test_intermediate_output_v101; assert_in_epsilon(824.7142358557012, worksheet.intermediate_output_v101, 0.002); end
  def test_intermediate_output_w101; assert_in_epsilon(979.5018717201098, worksheet.intermediate_output_w101, 0.002); end
  def test_intermediate_output_x101; assert_in_epsilon(1130.9229237977195, worksheet.intermediate_output_x101, 0.002); end
  def test_intermediate_output_y101; assert_in_epsilon(1291.2412708769657, worksheet.intermediate_output_y101, 0.002); end
  def test_intermediate_output_z101; assert_in_epsilon(1492.3670923972422, worksheet.intermediate_output_z101, 0.002); end
  def test_intermediate_output_aa101; assert_in_epsilon(1746.860175302783, worksheet.intermediate_output_aa101, 0.002); end
  def test_intermediate_output_ab101; assert_in_epsilon(2087.19182953909, worksheet.intermediate_output_ab101, 0.002); end
  def test_intermediate_output_ac101; assert_in_epsilon(2442.536186727299, worksheet.intermediate_output_ac101, 0.002); end
  def test_intermediate_output_ad101; assert_in_epsilon(2852.022897185728, worksheet.intermediate_output_ad101, 0.002); end
  def test_intermediate_output_ae101; assert_in_epsilon(3344.895596308811, worksheet.intermediate_output_ae101, 0.002); end
  def test_intermediate_output_c102; assert_equal("Therm.b", worksheet.intermediate_output_c102); end
  def test_intermediate_output_d102; assert_equal("CCGT", worksheet.intermediate_output_d102); end
  def test_intermediate_output_g102; assert_in_delta(0.28061017920000003, worksheet.intermediate_output_g102, 0.002); end
  def test_intermediate_output_h102; assert_in_delta(0.177182775, worksheet.intermediate_output_h102, 0.002); end
  def test_intermediate_output_i102; assert_in_epsilon(2.7572464123150686, worksheet.intermediate_output_i102, 0.002); end
  def test_intermediate_output_j102; assert_in_epsilon(3.513446381874432, worksheet.intermediate_output_j102, 0.002); end
  def test_intermediate_output_k102; assert_in_epsilon(3.691070458929227, worksheet.intermediate_output_k102, 0.002); end
  def test_intermediate_output_l102; assert_in_epsilon(3.77535915139498, worksheet.intermediate_output_l102, 0.002); end
  def test_intermediate_output_m102; assert_in_epsilon(3.77535915139498, worksheet.intermediate_output_m102, 0.002); end
  def test_intermediate_output_n102; assert_in_epsilon(3.77535915139498, worksheet.intermediate_output_n102, 0.002); end
  def test_intermediate_output_o102; assert_in_epsilon(3.77535915139498, worksheet.intermediate_output_o102, 0.002); end
  def test_intermediate_output_p102; assert_in_epsilon(1.2703168633949797, worksheet.intermediate_output_p102, 0.002); end
  def test_intermediate_output_r102; assert_equal("Therm.b", worksheet.intermediate_output_r102); end
  def test_intermediate_output_s102; assert_equal("CCGT", worksheet.intermediate_output_s102); end
  def test_intermediate_output_v102; assert_in_delta(0.28061017920000003, worksheet.intermediate_output_v102, 0.002); end
  def test_intermediate_output_w102; assert_in_delta(0.177182775, worksheet.intermediate_output_w102, 0.002); end
  def test_intermediate_output_x102; assert_in_epsilon(2.7572464123150686, worksheet.intermediate_output_x102, 0.002); end
  def test_intermediate_output_y102; assert_in_epsilon(3.513446381874432, worksheet.intermediate_output_y102, 0.002); end
  def test_intermediate_output_z102; assert_in_epsilon(3.691070458929227, worksheet.intermediate_output_z102, 0.002); end
  def test_intermediate_output_aa102; assert_in_epsilon(3.77535915139498, worksheet.intermediate_output_aa102, 0.002); end
  def test_intermediate_output_ab102; assert_in_epsilon(3.77535915139498, worksheet.intermediate_output_ab102, 0.002); end
  def test_intermediate_output_ac102; assert_in_epsilon(3.77535915139498, worksheet.intermediate_output_ac102, 0.002); end
  def test_intermediate_output_ad102; assert_in_epsilon(3.77535915139498, worksheet.intermediate_output_ad102, 0.002); end
  def test_intermediate_output_ae102; assert_in_epsilon(1.2703168633949797, worksheet.intermediate_output_ae102, 0.002); end
  def test_intermediate_output_c103; assert_equal("Coal power", worksheet.intermediate_output_c103); end
  def test_intermediate_output_d103; assert_equal("CMJ Coal power", worksheet.intermediate_output_d103); end
  def test_intermediate_output_g103; assert_in_epsilon(824.7142358557012, worksheet.intermediate_output_g103, 0.002); end
  def test_intermediate_output_h103; assert_in_epsilon(979.5018717201098, worksheet.intermediate_output_h103, 0.002); end
  def test_intermediate_output_i103; assert_in_epsilon(1130.9229237977195, worksheet.intermediate_output_i103, 0.002); end
  def test_intermediate_output_j103; assert_in_epsilon(1291.2412708769657, worksheet.intermediate_output_j103, 0.002); end
  def test_intermediate_output_k103; assert_in_epsilon(1492.3670923972422, worksheet.intermediate_output_k103, 0.002); end
  def test_intermediate_output_l103; assert_in_epsilon(1746.860175302783, worksheet.intermediate_output_l103, 0.002); end
  def test_intermediate_output_m103; assert_in_epsilon(2087.19182953909, worksheet.intermediate_output_m103, 0.002); end
  def test_intermediate_output_n103; assert_in_epsilon(2442.536186727299, worksheet.intermediate_output_n103, 0.002); end
  def test_intermediate_output_o103; assert_in_epsilon(2852.022897185728, worksheet.intermediate_output_o103, 0.002); end
  def test_intermediate_output_p103; assert_in_epsilon(3344.895596308811, worksheet.intermediate_output_p103, 0.002); end
  def test_intermediate_output_r103; assert_equal("Nuke", worksheet.intermediate_output_r103); end
  def test_intermediate_output_s103; assert_equal("Nuclear power", worksheet.intermediate_output_s103); end
  def test_intermediate_output_t103; assert_in_delta(0.0, (worksheet.intermediate_output_t103||0), 0.002); end
  def test_intermediate_output_u103; assert_in_delta(0.0, (worksheet.intermediate_output_u103||0), 0.002); end
  def test_intermediate_output_v103; assert_in_epsilon(35.218281600000005, worksheet.intermediate_output_v103, 0.002); end
  def test_intermediate_output_w103; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_w103, 0.002); end
  def test_intermediate_output_x103; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_x103, 0.002); end
  def test_intermediate_output_y103; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_y103, 0.002); end
  def test_intermediate_output_z103; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_z103, 0.002); end
  def test_intermediate_output_aa103; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_aa103, 0.002); end
  def test_intermediate_output_ab103; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_ab103, 0.002); end
  def test_intermediate_output_ac103; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_ac103, 0.002); end
  def test_intermediate_output_ad103; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_ad103, 0.002); end
  def test_intermediate_output_ae103; assert_in_delta(0.0, (worksheet.intermediate_output_ae103||0), 0.002); end
  def test_intermediate_output_c104; assert_equal("Gas power", worksheet.intermediate_output_c104); end
  def test_intermediate_output_d104; assert_equal("CMJ Gas power", worksheet.intermediate_output_d104); end
  def test_intermediate_output_g104; assert_in_delta(0.28061017920000003, worksheet.intermediate_output_g104, 0.002); end
  def test_intermediate_output_h104; assert_in_delta(0.177182775, worksheet.intermediate_output_h104, 0.002); end
  def test_intermediate_output_i104; assert_in_epsilon(2.7572464123150686, worksheet.intermediate_output_i104, 0.002); end
  def test_intermediate_output_j104; assert_in_epsilon(3.513446381874432, worksheet.intermediate_output_j104, 0.002); end
  def test_intermediate_output_k104; assert_in_epsilon(3.691070458929227, worksheet.intermediate_output_k104, 0.002); end
  def test_intermediate_output_l104; assert_in_epsilon(3.77535915139498, worksheet.intermediate_output_l104, 0.002); end
  def test_intermediate_output_m104; assert_in_epsilon(3.77535915139498, worksheet.intermediate_output_m104, 0.002); end
  def test_intermediate_output_n104; assert_in_epsilon(3.77535915139498, worksheet.intermediate_output_n104, 0.002); end
  def test_intermediate_output_o104; assert_in_epsilon(3.77535915139498, worksheet.intermediate_output_o104, 0.002); end
  def test_intermediate_output_p104; assert_in_epsilon(1.2703168633949797, worksheet.intermediate_output_p104, 0.002); end
  def test_intermediate_output_r104; assert_equal("RE.a", worksheet.intermediate_output_r104); end
  def test_intermediate_output_s104; assert_equal("Onshore wind", worksheet.intermediate_output_s104); end
  def test_intermediate_output_t104; assert_in_delta(0.0, (worksheet.intermediate_output_t104||0), 0.002); end
  def test_intermediate_output_u104; assert_in_delta(0.0, (worksheet.intermediate_output_u104||0), 0.002); end
  def test_intermediate_output_v104; assert_in_delta(0.02592772416, worksheet.intermediate_output_v104, 0.002); end
  def test_intermediate_output_w104; assert_in_delta(0.06859359936, worksheet.intermediate_output_w104, 0.002); end
  def test_intermediate_output_x104; assert_in_epsilon(11.57035420224, worksheet.intermediate_output_x104, 0.002); end
  def test_intermediate_output_y104; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_y104, 0.002); end
  def test_intermediate_output_z104; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_z104, 0.002); end
  def test_intermediate_output_aa104; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_aa104, 0.002); end
  def test_intermediate_output_ab104; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_ab104, 0.002); end
  def test_intermediate_output_ac104; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_ac104, 0.002); end
  def test_intermediate_output_ad104; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_ad104, 0.002); end
  def test_intermediate_output_ae104; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_ae104, 0.002); end
  def test_intermediate_output_c105; assert_equal("Nuke", worksheet.intermediate_output_c105); end
  def test_intermediate_output_d105; assert_equal("Nuclear power", worksheet.intermediate_output_d105); end
  def test_intermediate_output_g105; assert_in_epsilon(35.218281600000005, worksheet.intermediate_output_g105, 0.002); end
  def test_intermediate_output_h105; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_h105, 0.002); end
  def test_intermediate_output_i105; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_i105, 0.002); end
  def test_intermediate_output_j105; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_j105, 0.002); end
  def test_intermediate_output_k105; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_k105, 0.002); end
  def test_intermediate_output_l105; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_l105, 0.002); end
  def test_intermediate_output_m105; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_m105, 0.002); end
  def test_intermediate_output_n105; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_n105, 0.002); end
  def test_intermediate_output_o105; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_o105, 0.002); end
  def test_intermediate_output_p105; assert_in_delta(0.0, (worksheet.intermediate_output_p105||0), 0.002); end
  def test_intermediate_output_r105; assert_equal("RE.b", worksheet.intermediate_output_r105); end
  def test_intermediate_output_s105; assert_equal("Hydroelectric power stations", worksheet.intermediate_output_s105); end
  def test_intermediate_output_t105; assert_in_delta(0.0, (worksheet.intermediate_output_t105||0), 0.002); end
  def test_intermediate_output_u105; assert_in_delta(0.0, (worksheet.intermediate_output_u105||0), 0.002); end
  def test_intermediate_output_v105; assert_in_epsilon(31.320918000000002, worksheet.intermediate_output_v105, 0.002); end
  def test_intermediate_output_w105; assert_in_epsilon(31.320918000000002, worksheet.intermediate_output_w105, 0.002); end
  def test_intermediate_output_x105; assert_in_epsilon(37.03284360000001, worksheet.intermediate_output_x105, 0.002); end
  def test_intermediate_output_y105; assert_in_epsilon(37.111737600000005, worksheet.intermediate_output_y105, 0.002); end
  def test_intermediate_output_z105; assert_in_epsilon(36.5594796, worksheet.intermediate_output_z105, 0.002); end
  def test_intermediate_output_aa105; assert_in_epsilon(36.5594796, worksheet.intermediate_output_aa105, 0.002); end
  def test_intermediate_output_ab105; assert_in_epsilon(36.5594796, worksheet.intermediate_output_ab105, 0.002); end
  def test_intermediate_output_ac105; assert_in_epsilon(36.5594796, worksheet.intermediate_output_ac105, 0.002); end
  def test_intermediate_output_ad105; assert_in_epsilon(36.5594796, worksheet.intermediate_output_ad105, 0.002); end
  def test_intermediate_output_ae105; assert_in_epsilon(36.5594796, worksheet.intermediate_output_ae105, 0.002); end
  def test_intermediate_output_c106; assert_equal("Nuclear", worksheet.intermediate_output_c106); end
  def test_intermediate_output_d106; assert_equal("CMJ Nuclear", worksheet.intermediate_output_d106); end
  def test_intermediate_output_g106; assert_in_epsilon(35.218281600000005, worksheet.intermediate_output_g106, 0.002); end
  def test_intermediate_output_h106; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_h106, 0.002); end
  def test_intermediate_output_i106; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_i106, 0.002); end
  def test_intermediate_output_j106; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_j106, 0.002); end
  def test_intermediate_output_k106; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_k106, 0.002); end
  def test_intermediate_output_l106; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_l106, 0.002); end
  def test_intermediate_output_m106; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_m106, 0.002); end
  def test_intermediate_output_n106; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_n106, 0.002); end
  def test_intermediate_output_o106; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_o106, 0.002); end
  def test_intermediate_output_p106; assert_in_delta(0.0, (worksheet.intermediate_output_p106||0), 0.002); end
  def test_intermediate_output_r106; assert_equal("RE.c", worksheet.intermediate_output_r106); end
  def test_intermediate_output_s106; assert_equal("CSP", worksheet.intermediate_output_s106); end
  def test_intermediate_output_t106; assert_in_delta(0.0, (worksheet.intermediate_output_t106||0), 0.002); end
  def test_intermediate_output_u106; assert_in_delta(0.0, (worksheet.intermediate_output_u106||0), 0.002); end
  def test_intermediate_output_v106; assert_in_delta(0.0, (worksheet.intermediate_output_v106||0), 0.002); end
  def test_intermediate_output_w106; assert_in_delta(0.0, (worksheet.intermediate_output_w106||0), 0.002); end
  def test_intermediate_output_x106; assert_in_epsilon(1.9881288, worksheet.intermediate_output_x106, 0.002); end
  def test_intermediate_output_y106; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_y106, 0.002); end
  def test_intermediate_output_z106; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_z106, 0.002); end
  def test_intermediate_output_aa106; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_aa106, 0.002); end
  def test_intermediate_output_ab106; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_ab106, 0.002); end
  def test_intermediate_output_ac106; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_ac106, 0.002); end
  def test_intermediate_output_ad106; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_ad106, 0.002); end
  def test_intermediate_output_ae106; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_ae106, 0.002); end
  def test_intermediate_output_c107; assert_equal("RE.a", worksheet.intermediate_output_c107); end
  def test_intermediate_output_d107; assert_equal("Onshore wind", worksheet.intermediate_output_d107); end
  def test_intermediate_output_g107; assert_in_delta(0.02592772416, worksheet.intermediate_output_g107, 0.002); end
  def test_intermediate_output_h107; assert_in_delta(0.06859359936, worksheet.intermediate_output_h107, 0.002); end
  def test_intermediate_output_i107; assert_in_epsilon(11.57035420224, worksheet.intermediate_output_i107, 0.002); end
  def test_intermediate_output_j107; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_j107, 0.002); end
  def test_intermediate_output_k107; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_k107, 0.002); end
  def test_intermediate_output_l107; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_l107, 0.002); end
  def test_intermediate_output_m107; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_m107, 0.002); end
  def test_intermediate_output_n107; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_n107, 0.002); end
  def test_intermediate_output_o107; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_o107, 0.002); end
  def test_intermediate_output_p107; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_p107, 0.002); end
  def test_intermediate_output_r107; assert_equal("RE.e", worksheet.intermediate_output_r107); end
  def test_intermediate_output_s107; assert_equal("Centralised PV", worksheet.intermediate_output_s107); end
  def test_intermediate_output_t107; assert_in_delta(0.0, (worksheet.intermediate_output_t107||0), 0.002); end
  def test_intermediate_output_u107; assert_in_delta(0.0, (worksheet.intermediate_output_u107||0), 0.002); end
  def test_intermediate_output_v107; assert_in_delta(0.0, (worksheet.intermediate_output_v107||0), 0.002); end
  def test_intermediate_output_w107; assert_in_delta(0.0, (worksheet.intermediate_output_w107||0), 0.002); end
  def test_intermediate_output_x107; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_x107, 0.002); end
  def test_intermediate_output_y107; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_y107, 0.002); end
  def test_intermediate_output_z107; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_z107, 0.002); end
  def test_intermediate_output_aa107; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_aa107, 0.002); end
  def test_intermediate_output_ab107; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_ab107, 0.002); end
  def test_intermediate_output_ac107; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_ac107, 0.002); end
  def test_intermediate_output_ad107; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_ad107, 0.002); end
  def test_intermediate_output_ae107; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_ae107, 0.002); end
  def test_intermediate_output_c108; assert_equal("Wind", worksheet.intermediate_output_c108); end
  def test_intermediate_output_d108; assert_equal("CMJ Wind", worksheet.intermediate_output_d108); end
  def test_intermediate_output_g108; assert_in_delta(0.02592772416, worksheet.intermediate_output_g108, 0.002); end
  def test_intermediate_output_h108; assert_in_delta(0.06859359936, worksheet.intermediate_output_h108, 0.002); end
  def test_intermediate_output_i108; assert_in_epsilon(11.57035420224, worksheet.intermediate_output_i108, 0.002); end
  def test_intermediate_output_j108; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_j108, 0.002); end
  def test_intermediate_output_k108; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_k108, 0.002); end
  def test_intermediate_output_l108; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_l108, 0.002); end
  def test_intermediate_output_m108; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_m108, 0.002); end
  def test_intermediate_output_n108; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_n108, 0.002); end
  def test_intermediate_output_o108; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_o108, 0.002); end
  def test_intermediate_output_p108; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_p108, 0.002); end
  def test_intermediate_output_r108; assert_equal("RE.d", worksheet.intermediate_output_r108); end
  def test_intermediate_output_s108; assert_equal("Decentralised PV", worksheet.intermediate_output_s108); end
  def test_intermediate_output_t108; assert_in_delta(0.0, (worksheet.intermediate_output_t108||0), 0.002); end
  def test_intermediate_output_u108; assert_in_delta(0.0, (worksheet.intermediate_output_u108||0), 0.002); end
  def test_intermediate_output_v108; assert_in_delta(0.0, (worksheet.intermediate_output_v108||0), 0.002); end
  def test_intermediate_output_w108; assert_in_delta(0.08634159360000002, worksheet.intermediate_output_w108, 0.002); end
  def test_intermediate_output_x108; assert_in_epsilon(2.3411402902055913, worksheet.intermediate_output_x108, 0.002); end
  def test_intermediate_output_y108; assert_in_epsilon(42.519714238775194, worksheet.intermediate_output_y108, 0.002); end
  def test_intermediate_output_z108; assert_in_epsilon(102.60314308074803, worksheet.intermediate_output_z108, 0.002); end
  def test_intermediate_output_aa108; assert_in_epsilon(165.34949660014925, worksheet.intermediate_output_aa108, 0.002); end
  def test_intermediate_output_ab108; assert_in_epsilon(226.48432081385033, worksheet.intermediate_output_ab108, 0.002); end
  def test_intermediate_output_ac108; assert_in_epsilon(309.88926467877843, worksheet.intermediate_output_ac108, 0.002); end
  def test_intermediate_output_ad108; assert_in_epsilon(370.5428363718666, worksheet.intermediate_output_ad108, 0.002); end
  def test_intermediate_output_ae108; assert_in_epsilon(425.97284422612074, worksheet.intermediate_output_ae108, 0.002); end
  def test_intermediate_output_c109; assert_equal("RE.b", worksheet.intermediate_output_c109); end
  def test_intermediate_output_d109; assert_equal("Hydroelectric power stations", worksheet.intermediate_output_d109); end
  def test_intermediate_output_g109; assert_in_epsilon(31.320918000000002, worksheet.intermediate_output_g109, 0.002); end
  def test_intermediate_output_h109; assert_in_epsilon(31.320918000000002, worksheet.intermediate_output_h109, 0.002); end
  def test_intermediate_output_i109; assert_in_epsilon(37.03284360000001, worksheet.intermediate_output_i109, 0.002); end
  def test_intermediate_output_j109; assert_in_epsilon(37.111737600000005, worksheet.intermediate_output_j109, 0.002); end
  def test_intermediate_output_k109; assert_in_epsilon(36.5594796, worksheet.intermediate_output_k109, 0.002); end
  def test_intermediate_output_l109; assert_in_epsilon(36.5594796, worksheet.intermediate_output_l109, 0.002); end
  def test_intermediate_output_m109; assert_in_epsilon(36.5594796, worksheet.intermediate_output_m109, 0.002); end
  def test_intermediate_output_n109; assert_in_epsilon(36.5594796, worksheet.intermediate_output_n109, 0.002); end
  def test_intermediate_output_o109; assert_in_epsilon(36.5594796, worksheet.intermediate_output_o109, 0.002); end
  def test_intermediate_output_p109; assert_in_epsilon(36.5594796, worksheet.intermediate_output_p109, 0.002); end
  def test_intermediate_output_r109; assert_equal("ElcDSB.i", worksheet.intermediate_output_r109); end
  def test_intermediate_output_s109; assert_equal("Electricity imports and exports", worksheet.intermediate_output_s109); end
  def test_intermediate_output_t109; assert_in_delta(0.0, (worksheet.intermediate_output_t109||0), 0.002); end
  def test_intermediate_output_u109; assert_in_delta(0.0, (worksheet.intermediate_output_u109||0), 0.002); end
  def test_intermediate_output_v109; assert_in_delta(0.0, (worksheet.intermediate_output_v109||0), 0.002); end
  def test_intermediate_output_w109; assert_in_delta(0.0, (worksheet.intermediate_output_w109||0), 0.002); end
  def test_intermediate_output_x109; assert_in_delta(0.0, (worksheet.intermediate_output_x109||0), 0.002); end
  def test_intermediate_output_y109; assert_in_delta(0.0, (worksheet.intermediate_output_y109||0), 0.002); end
  def test_intermediate_output_z109; assert_in_delta(0.0, (worksheet.intermediate_output_z109||0), 0.002); end
  def test_intermediate_output_aa109; assert_in_delta(0.0, (worksheet.intermediate_output_aa109||0), 0.002); end
  def test_intermediate_output_ab109; assert_in_delta(0.0, (worksheet.intermediate_output_ab109||0), 0.002); end
  def test_intermediate_output_ac109; assert_in_delta(0.0, (worksheet.intermediate_output_ac109||0), 0.002); end
  def test_intermediate_output_ad109; assert_in_delta(0.0, (worksheet.intermediate_output_ad109||0), 0.002); end
  def test_intermediate_output_ae109; assert_in_delta(0.0, (worksheet.intermediate_output_ae109||0), 0.002); end
  def test_intermediate_output_c110; assert_equal("Hydro", worksheet.intermediate_output_c110); end
  def test_intermediate_output_d110; assert_equal("CMJ Hydro", worksheet.intermediate_output_d110); end
  def test_intermediate_output_g110; assert_in_epsilon(31.320918000000002, worksheet.intermediate_output_g110, 0.002); end
  def test_intermediate_output_h110; assert_in_epsilon(31.320918000000002, worksheet.intermediate_output_h110, 0.002); end
  def test_intermediate_output_i110; assert_in_epsilon(37.03284360000001, worksheet.intermediate_output_i110, 0.002); end
  def test_intermediate_output_j110; assert_in_epsilon(37.111737600000005, worksheet.intermediate_output_j110, 0.002); end
  def test_intermediate_output_k110; assert_in_epsilon(36.5594796, worksheet.intermediate_output_k110, 0.002); end
  def test_intermediate_output_l110; assert_in_epsilon(36.5594796, worksheet.intermediate_output_l110, 0.002); end
  def test_intermediate_output_m110; assert_in_epsilon(36.5594796, worksheet.intermediate_output_m110, 0.002); end
  def test_intermediate_output_n110; assert_in_epsilon(36.5594796, worksheet.intermediate_output_n110, 0.002); end
  def test_intermediate_output_o110; assert_in_epsilon(36.5594796, worksheet.intermediate_output_o110, 0.002); end
  def test_intermediate_output_p110; assert_in_epsilon(36.5594796, worksheet.intermediate_output_p110, 0.002); end
  def test_intermediate_output_c111; assert_equal("RE.c", worksheet.intermediate_output_c111); end
  def test_intermediate_output_d111; assert_equal("CSP", worksheet.intermediate_output_d111); end
  def test_intermediate_output_g111; assert_in_delta(0.0, (worksheet.intermediate_output_g111||0), 0.002); end
  def test_intermediate_output_h111; assert_in_delta(0.0, (worksheet.intermediate_output_h111||0), 0.002); end
  def test_intermediate_output_i111; assert_in_epsilon(1.9881288, worksheet.intermediate_output_i111, 0.002); end
  def test_intermediate_output_j111; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_j111, 0.002); end
  def test_intermediate_output_k111; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_k111, 0.002); end
  def test_intermediate_output_l111; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_l111, 0.002); end
  def test_intermediate_output_m111; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_m111, 0.002); end
  def test_intermediate_output_n111; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_n111, 0.002); end
  def test_intermediate_output_o111; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_o111, 0.002); end
  def test_intermediate_output_p111; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_p111, 0.002); end
  def test_intermediate_output_r111; assert_in_delta(0.0, (worksheet.intermediate_output_r111||0), 0.002); end
  def test_intermediate_output_s111; assert_equal("Total generation supplied to grid", worksheet.intermediate_output_s111); end
  def test_intermediate_output_t111; assert_in_delta(0.0, (worksheet.intermediate_output_t111||0), 0.002); end
  def test_intermediate_output_u111; assert_in_delta(0.0, (worksheet.intermediate_output_u111||0), 0.002); end
  def test_intermediate_output_v111; assert_in_epsilon(891.2793631798612, worksheet.intermediate_output_v111, 0.002); end
  def test_intermediate_output_w111; assert_in_epsilon(1056.9887057130695, worksheet.intermediate_output_w111, 0.002); end
  def test_intermediate_output_x111; assert_in_epsilon(1240.516430338165, worksheet.intermediate_output_x111, 0.002); end
  def test_intermediate_output_y111; assert_in_epsilon(1455.4250761339808, worksheet.intermediate_output_y111, 0.002); end
  def test_intermediate_output_z111; assert_in_epsilon(1716.0820684962302, worksheet.intermediate_output_z111, 0.002); end
  def test_intermediate_output_aa111; assert_in_epsilon(2033.3215049211724, worksheet.intermediate_output_aa111, 0.002); end
  def test_intermediate_output_ab111; assert_in_epsilon(2434.7879833711804, worksheet.intermediate_output_ab111, 0.002); end
  def test_intermediate_output_ac111; assert_in_epsilon(2873.5372844243175, worksheet.intermediate_output_ac111, 0.002); end
  def test_intermediate_output_ad111; assert_in_epsilon(3343.677566575835, worksheet.intermediate_output_ad111, 0.002); end
  def test_intermediate_output_ae111; assert_in_epsilon(3845.969292753172, worksheet.intermediate_output_ae111, 0.002); end
  def test_intermediate_output_c112; assert_equal("RE.e", worksheet.intermediate_output_c112); end
  def test_intermediate_output_d112; assert_equal("Centralised PV", worksheet.intermediate_output_d112); end
  def test_intermediate_output_g112; assert_in_delta(0.0, (worksheet.intermediate_output_g112||0), 0.002); end
  def test_intermediate_output_h112; assert_in_delta(0.0, (worksheet.intermediate_output_h112||0), 0.002); end
  def test_intermediate_output_i112; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_i112, 0.002); end
  def test_intermediate_output_j112; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_j112, 0.002); end
  def test_intermediate_output_k112; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_k112, 0.002); end
  def test_intermediate_output_l112; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_l112, 0.002); end
  def test_intermediate_output_m112; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_m112, 0.002); end
  def test_intermediate_output_n112; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_n112, 0.002); end
  def test_intermediate_output_o112; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_o112, 0.002); end
  def test_intermediate_output_p112; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_p112, 0.002); end
  def test_intermediate_output_r112; assert_in_delta(0.0, (worksheet.intermediate_output_r112||0), 0.002); end
  def test_intermediate_output_s112; assert_in_delta(0.0, (worksheet.intermediate_output_s112||0), 0.002); end
  def test_intermediate_output_t112; assert_in_delta(0.0, (worksheet.intermediate_output_t112||0), 0.002); end
  def test_intermediate_output_u112; assert_in_delta(0.0, (worksheet.intermediate_output_u112||0), 0.002); end
  def test_intermediate_output_v112; assert_in_delta(0.0, (worksheet.intermediate_output_v112||0), 0.002); end
  def test_intermediate_output_w112; assert_in_delta(0.0, (worksheet.intermediate_output_w112||0), 0.002); end
  def test_intermediate_output_x112; assert_in_delta(0.0, (worksheet.intermediate_output_x112||0), 0.002); end
  def test_intermediate_output_y112; assert_in_delta(0.0, (worksheet.intermediate_output_y112||0), 0.002); end
  def test_intermediate_output_z112; assert_in_delta(0.0, (worksheet.intermediate_output_z112||0), 0.002); end
  def test_intermediate_output_aa112; assert_in_delta(0.0, (worksheet.intermediate_output_aa112||0), 0.002); end
  def test_intermediate_output_ab112; assert_in_delta(0.0, (worksheet.intermediate_output_ab112||0), 0.002); end
  def test_intermediate_output_ac112; assert_in_delta(0.0, (worksheet.intermediate_output_ac112||0), 0.002); end
  def test_intermediate_output_ad112; assert_in_delta(0.0, (worksheet.intermediate_output_ad112||0), 0.002); end
  def test_intermediate_output_ae112; assert_in_delta(0.0, (worksheet.intermediate_output_ae112||0), 0.002); end
  def test_intermediate_output_c113; assert_equal("RE.d", worksheet.intermediate_output_c113); end
  def test_intermediate_output_d113; assert_equal("Decentralised PV", worksheet.intermediate_output_d113); end
  def test_intermediate_output_g113; assert_in_delta(0.0, (worksheet.intermediate_output_g113||0), 0.002); end
  def test_intermediate_output_h113; assert_in_delta(0.08634159360000002, worksheet.intermediate_output_h113, 0.002); end
  def test_intermediate_output_i113; assert_in_epsilon(2.3411402902055913, worksheet.intermediate_output_i113, 0.002); end
  def test_intermediate_output_j113; assert_in_epsilon(42.519714238775194, worksheet.intermediate_output_j113, 0.002); end
  def test_intermediate_output_k113; assert_in_epsilon(102.60314308074803, worksheet.intermediate_output_k113, 0.002); end
  def test_intermediate_output_l113; assert_in_epsilon(165.34949660014925, worksheet.intermediate_output_l113, 0.002); end
  def test_intermediate_output_m113; assert_in_epsilon(226.48432081385033, worksheet.intermediate_output_m113, 0.002); end
  def test_intermediate_output_n113; assert_in_epsilon(309.88926467877843, worksheet.intermediate_output_n113, 0.002); end
  def test_intermediate_output_o113; assert_in_epsilon(370.5428363718666, worksheet.intermediate_output_o113, 0.002); end
  def test_intermediate_output_p113; assert_in_epsilon(425.97284422612074, worksheet.intermediate_output_p113, 0.002); end
  def test_intermediate_output_r113; assert_in_delta(0.0, (worksheet.intermediate_output_r113||0), 0.002); end
  def test_intermediate_output_s113; assert_equal("Electricity exports", worksheet.intermediate_output_s113); end
  def test_intermediate_output_t113; assert_in_delta(0.0, (worksheet.intermediate_output_t113||0), 0.002); end
  def test_intermediate_output_u113; assert_in_delta(0.0, (worksheet.intermediate_output_u113||0), 0.002); end
  def test_intermediate_output_v113; assert_in_epsilon(-24.81858000000011, worksheet.intermediate_output_v113, 0.002); end
  def test_intermediate_output_w113; assert_in_epsilon(-24.818579999999997, worksheet.intermediate_output_w113, 0.002); end
  def test_intermediate_output_x113; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_x113, 0.002); end
  def test_intermediate_output_y113; assert_in_epsilon(-19.13821200000045, worksheet.intermediate_output_y113, 0.002); end
  def test_intermediate_output_z113; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_z113, 0.002); end
  def test_intermediate_output_aa113; assert_in_epsilon(-19.138212000000223, worksheet.intermediate_output_aa113, 0.002); end
  def test_intermediate_output_ab113; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_ab113, 0.002); end
  def test_intermediate_output_ac113; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_ac113, 0.002); end
  def test_intermediate_output_ad113; assert_in_epsilon(-19.138211999999086, worksheet.intermediate_output_ad113, 0.002); end
  def test_intermediate_output_ae113; assert_in_epsilon(-19.13821199999954, worksheet.intermediate_output_ae113, 0.002); end
  def test_intermediate_output_c114; assert_equal("Solar", worksheet.intermediate_output_c114); end
  def test_intermediate_output_d114; assert_equal("CMJ Solar", worksheet.intermediate_output_d114); end
  def test_intermediate_output_g114; assert_in_delta(0.0, (worksheet.intermediate_output_g114||0), 0.002); end
  def test_intermediate_output_h114; assert_in_delta(0.08634159360000002, worksheet.intermediate_output_h114, 0.002); end
  def test_intermediate_output_i114; assert_in_epsilon(14.97932793820559, worksheet.intermediate_output_i114, 0.002); end
  def test_intermediate_output_j114; assert_in_epsilon(58.47144988677519, worksheet.intermediate_output_j114, 0.002); end
  def test_intermediate_output_k114; assert_in_epsilon(118.55487872874802, worksheet.intermediate_output_k114, 0.002); end
  def test_intermediate_output_l114; assert_in_epsilon(181.30123224814926, worksheet.intermediate_output_l114, 0.002); end
  def test_intermediate_output_m114; assert_in_epsilon(242.43605646185034, worksheet.intermediate_output_m114, 0.002); end
  def test_intermediate_output_n114; assert_in_epsilon(325.84100032677844, worksheet.intermediate_output_n114, 0.002); end
  def test_intermediate_output_o114; assert_in_epsilon(386.4945720198666, worksheet.intermediate_output_o114, 0.002); end
  def test_intermediate_output_p114; assert_in_epsilon(441.92457987412075, worksheet.intermediate_output_p114, 0.002); end
  def test_intermediate_output_r114; assert_in_delta(0.0, (worksheet.intermediate_output_r114||0), 0.002); end
  def test_intermediate_output_s114; assert_equal("Electricity total", worksheet.intermediate_output_s114); end
  def test_intermediate_output_t114; assert_in_delta(0.0, (worksheet.intermediate_output_t114||0), 0.002); end
  def test_intermediate_output_u114; assert_in_delta(0.0, (worksheet.intermediate_output_u114||0), 0.002); end
  def test_intermediate_output_v114; assert_in_epsilon(866.4607831798611, worksheet.intermediate_output_v114, 0.002); end
  def test_intermediate_output_w114; assert_in_epsilon(1032.1701257130694, worksheet.intermediate_output_w114, 0.002); end
  def test_intermediate_output_x114; assert_in_epsilon(1221.378218338165, worksheet.intermediate_output_x114, 0.002); end
  def test_intermediate_output_y114; assert_in_epsilon(1436.2868641339803, worksheet.intermediate_output_y114, 0.002); end
  def test_intermediate_output_z114; assert_in_epsilon(1696.9438564962302, worksheet.intermediate_output_z114, 0.002); end
  def test_intermediate_output_aa114; assert_in_epsilon(2014.183292921172, worksheet.intermediate_output_aa114, 0.002); end
  def test_intermediate_output_ab114; assert_in_epsilon(2415.6497713711806, worksheet.intermediate_output_ab114, 0.002); end
  def test_intermediate_output_ac114; assert_in_epsilon(2854.3990724243176, worksheet.intermediate_output_ac114, 0.002); end
  def test_intermediate_output_ad114; assert_in_epsilon(3324.539354575836, worksheet.intermediate_output_ad114, 0.002); end
  def test_intermediate_output_ae114; assert_in_epsilon(3826.8310807531725, worksheet.intermediate_output_ae114, 0.002); end
  def test_intermediate_output_c115; assert_equal("ElcDSB.i", worksheet.intermediate_output_c115); end
  def test_intermediate_output_d115; assert_equal("Electricity imports and exports", worksheet.intermediate_output_d115); end
  def test_intermediate_output_g115; assert_in_delta(0.0, (worksheet.intermediate_output_g115||0), 0.002); end
  def test_intermediate_output_h115; assert_in_delta(0.0, (worksheet.intermediate_output_h115||0), 0.002); end
  def test_intermediate_output_i115; assert_in_delta(0.0, (worksheet.intermediate_output_i115||0), 0.002); end
  def test_intermediate_output_j115; assert_in_delta(0.0, (worksheet.intermediate_output_j115||0), 0.002); end
  def test_intermediate_output_k115; assert_in_delta(0.0, (worksheet.intermediate_output_k115||0), 0.002); end
  def test_intermediate_output_l115; assert_in_delta(0.0, (worksheet.intermediate_output_l115||0), 0.002); end
  def test_intermediate_output_m115; assert_in_delta(0.0, (worksheet.intermediate_output_m115||0), 0.002); end
  def test_intermediate_output_n115; assert_in_delta(0.0, (worksheet.intermediate_output_n115||0), 0.002); end
  def test_intermediate_output_o115; assert_in_delta(0.0, (worksheet.intermediate_output_o115||0), 0.002); end
  def test_intermediate_output_p115; assert_in_delta(0.0, (worksheet.intermediate_output_p115||0), 0.002); end
  def test_intermediate_output_r115; assert_in_delta(0.0, (worksheet.intermediate_output_r115||0), 0.002); end
  def test_intermediate_output_s115; assert_equal("GWh", worksheet.intermediate_output_s115); end
  def test_intermediate_output_t115; assert_in_delta(0.0, (worksheet.intermediate_output_t115||0), 0.002); end
  def test_intermediate_output_u115; assert_in_delta(0.0, (worksheet.intermediate_output_u115||0), 0.002); end
  def test_intermediate_output_v115; assert_in_epsilon(240683.55088329475, worksheet.intermediate_output_v115, 0.002); end
  def test_intermediate_output_w115; assert_in_epsilon(286713.923809186, worksheet.intermediate_output_w115, 0.002); end
  def test_intermediate_output_x115; assert_in_epsilon(339271.72731615696, worksheet.intermediate_output_x115, 0.002); end
  def test_intermediate_output_y115; assert_in_epsilon(398968.5733705501, worksheet.intermediate_output_y115, 0.002); end
  def test_intermediate_output_z115; assert_in_epsilon(471373.2934711751, worksheet.intermediate_output_z115, 0.002); end
  def test_intermediate_output_aa115; assert_in_epsilon(559495.3591447701, worksheet.intermediate_output_aa115, 0.002); end
  def test_intermediate_output_ab115; assert_in_epsilon(671013.8253808835, worksheet.intermediate_output_ab115, 0.002); end
  def test_intermediate_output_ac115; assert_in_epsilon(792888.6312289771, worksheet.intermediate_output_ac115, 0.002); end
  def test_intermediate_output_ad115; assert_in_epsilon(923483.1540488434, worksheet.intermediate_output_ad115, 0.002); end
  def test_intermediate_output_ae115; assert_in_epsilon(1063008.633542548, worksheet.intermediate_output_ae115, 0.002); end
  def test_intermediate_output_r116; assert_in_delta(0.0, (worksheet.intermediate_output_r116||0), 0.002); end
  def test_intermediate_output_s116; assert_equal("Load Factor (fixed assumption)", worksheet.intermediate_output_s116); end
  def test_intermediate_output_t116; assert_in_delta(0.0, (worksheet.intermediate_output_t116||0), 0.002); end
  def test_intermediate_output_u116; assert_in_delta(0.0, (worksheet.intermediate_output_u116||0), 0.002); end
  def test_intermediate_output_v116; assert_in_delta(0.76, worksheet.intermediate_output_v116, 0.002); end
  def test_intermediate_output_w116; assert_in_delta(0.76, worksheet.intermediate_output_w116, 0.002); end
  def test_intermediate_output_x116; assert_in_delta(0.76, worksheet.intermediate_output_x116, 0.002); end
  def test_intermediate_output_y116; assert_in_delta(0.76, worksheet.intermediate_output_y116, 0.002); end
  def test_intermediate_output_z116; assert_in_delta(0.76, worksheet.intermediate_output_z116, 0.002); end
  def test_intermediate_output_aa116; assert_in_delta(0.76, worksheet.intermediate_output_aa116, 0.002); end
  def test_intermediate_output_ab116; assert_in_delta(0.76, worksheet.intermediate_output_ab116, 0.002); end
  def test_intermediate_output_ac116; assert_in_delta(0.76, worksheet.intermediate_output_ac116, 0.002); end
  def test_intermediate_output_ad116; assert_in_delta(0.76, worksheet.intermediate_output_ad116, 0.002); end
  def test_intermediate_output_ae116; assert_in_delta(0.76, worksheet.intermediate_output_ae116, 0.002); end
  def test_intermediate_output_r117; assert_in_delta(0.0, (worksheet.intermediate_output_r117||0), 0.002); end
  def test_intermediate_output_s117; assert_equal("Peak demand Upstream GW", worksheet.intermediate_output_s117); end
  def test_intermediate_output_t117; assert_in_delta(0.0, (worksheet.intermediate_output_t117||0), 0.002); end
  def test_intermediate_output_u117; assert_in_delta(0.0, (worksheet.intermediate_output_u117||0), 0.002); end
  def test_intermediate_output_v117; assert_in_epsilon(36.151698943056765, worksheet.intermediate_output_v117, 0.002); end
  def test_intermediate_output_w117; assert_in_epsilon(43.06565786607575, worksheet.intermediate_output_w117, 0.002); end
  def test_intermediate_output_x117; assert_in_epsilon(50.96006478553186, worksheet.intermediate_output_x117, 0.002); end
  def test_intermediate_output_y117; assert_in_epsilon(59.9267864351343, worksheet.intermediate_output_y117, 0.002); end
  def test_intermediate_output_z117; assert_in_epsilon(70.80228512845095, worksheet.intermediate_output_z117, 0.002); end
  def test_intermediate_output_aa117; assert_in_epsilon(84.03859636276887, worksheet.intermediate_output_aa117, 0.002); end
  def test_intermediate_output_ab117; assert_in_epsilon(100.7891470471166, worksheet.intermediate_output_ab117, 0.002); end
  def test_intermediate_output_ac117; assert_in_epsilon(119.09526424371802, worksheet.intermediate_output_ac117, 0.002); end
  def test_intermediate_output_ad117; assert_in_epsilon(138.71112023084044, worksheet.intermediate_output_ad117, 0.002); end
  def test_intermediate_output_ae117; assert_in_epsilon(159.6684441153791, worksheet.intermediate_output_ae117, 0.002); end
  def test_intermediate_output_d118; assert_equal("Total generation supplied to grid", worksheet.intermediate_output_d118); end
  def test_intermediate_output_g118; assert_in_epsilon(891.2793631798612, worksheet.intermediate_output_g118, 0.002); end
  def test_intermediate_output_h118; assert_in_epsilon(1056.9887057130695, worksheet.intermediate_output_h118, 0.002); end
  def test_intermediate_output_i118; assert_in_epsilon(1240.516430338165, worksheet.intermediate_output_i118, 0.002); end
  def test_intermediate_output_j118; assert_in_epsilon(1455.4250761339808, worksheet.intermediate_output_j118, 0.002); end
  def test_intermediate_output_k118; assert_in_epsilon(1716.0820684962302, worksheet.intermediate_output_k118, 0.002); end
  def test_intermediate_output_l118; assert_in_epsilon(2033.3215049211724, worksheet.intermediate_output_l118, 0.002); end
  def test_intermediate_output_m118; assert_in_epsilon(2434.7879833711804, worksheet.intermediate_output_m118, 0.002); end
  def test_intermediate_output_n118; assert_in_epsilon(2873.5372844243175, worksheet.intermediate_output_n118, 0.002); end
  def test_intermediate_output_o118; assert_in_epsilon(3343.677566575835, worksheet.intermediate_output_o118, 0.002); end
  def test_intermediate_output_p118; assert_in_epsilon(3845.969292753172, worksheet.intermediate_output_p118, 0.002); end
  def test_intermediate_output_r118; assert_in_delta(0.0, (worksheet.intermediate_output_r118||0), 0.002); end
  def test_intermediate_output_s118; assert_in_delta(0.0, (worksheet.intermediate_output_s118||0), 0.002); end
  def test_intermediate_output_d120; assert_equal("Electricity exports", worksheet.intermediate_output_d120); end
  def test_intermediate_output_g120; assert_in_epsilon(-24.81858000000011, worksheet.intermediate_output_g120, 0.002); end
  def test_intermediate_output_h120; assert_in_epsilon(-24.818579999999997, worksheet.intermediate_output_h120, 0.002); end
  def test_intermediate_output_i120; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_i120, 0.002); end
  def test_intermediate_output_j120; assert_in_epsilon(-19.13821200000045, worksheet.intermediate_output_j120, 0.002); end
  def test_intermediate_output_k120; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_k120, 0.002); end
  def test_intermediate_output_l120; assert_in_epsilon(-19.138212000000223, worksheet.intermediate_output_l120, 0.002); end
  def test_intermediate_output_m120; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_m120, 0.002); end
  def test_intermediate_output_n120; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_n120, 0.002); end
  def test_intermediate_output_o120; assert_in_epsilon(-19.138211999999086, worksheet.intermediate_output_o120, 0.002); end
  def test_intermediate_output_p120; assert_in_epsilon(-19.13821199999954, worksheet.intermediate_output_p120, 0.002); end
  def test_intermediate_output_q120; assert_equal("REFERENCED", worksheet.intermediate_output_q120); end
  def test_intermediate_output_d121; assert_equal("Electricity total", worksheet.intermediate_output_d121); end
  def test_intermediate_output_g121; assert_in_epsilon(866.4607831798611, worksheet.intermediate_output_g121, 0.002); end
  def test_intermediate_output_h121; assert_in_epsilon(1032.1701257130694, worksheet.intermediate_output_h121, 0.002); end
  def test_intermediate_output_i121; assert_in_epsilon(1221.378218338165, worksheet.intermediate_output_i121, 0.002); end
  def test_intermediate_output_j121; assert_in_epsilon(1436.2868641339803, worksheet.intermediate_output_j121, 0.002); end
  def test_intermediate_output_k121; assert_in_epsilon(1696.9438564962302, worksheet.intermediate_output_k121, 0.002); end
  def test_intermediate_output_l121; assert_in_epsilon(2014.183292921172, worksheet.intermediate_output_l121, 0.002); end
  def test_intermediate_output_m121; assert_in_epsilon(2415.6497713711806, worksheet.intermediate_output_m121, 0.002); end
  def test_intermediate_output_n121; assert_in_epsilon(2854.3990724243176, worksheet.intermediate_output_n121, 0.002); end
  def test_intermediate_output_o121; assert_in_epsilon(3324.539354575836, worksheet.intermediate_output_o121, 0.002); end
  def test_intermediate_output_p121; assert_in_epsilon(3826.8310807531725, worksheet.intermediate_output_p121, 0.002); end
  def test_intermediate_output_d122; assert_equal("GWh", worksheet.intermediate_output_d122); end
  def test_intermediate_output_g122; assert_in_epsilon(240683.55088329475, worksheet.intermediate_output_g122, 0.002); end
  def test_intermediate_output_h122; assert_in_epsilon(286713.923809186, worksheet.intermediate_output_h122, 0.002); end
  def test_intermediate_output_i122; assert_in_epsilon(339271.72731615696, worksheet.intermediate_output_i122, 0.002); end
  def test_intermediate_output_j122; assert_in_epsilon(398968.5733705501, worksheet.intermediate_output_j122, 0.002); end
  def test_intermediate_output_k122; assert_in_epsilon(471373.2934711751, worksheet.intermediate_output_k122, 0.002); end
  def test_intermediate_output_l122; assert_in_epsilon(559495.3591447701, worksheet.intermediate_output_l122, 0.002); end
  def test_intermediate_output_m122; assert_in_epsilon(671013.8253808835, worksheet.intermediate_output_m122, 0.002); end
  def test_intermediate_output_n122; assert_in_epsilon(792888.6312289771, worksheet.intermediate_output_n122, 0.002); end
  def test_intermediate_output_o122; assert_in_epsilon(923483.1540488434, worksheet.intermediate_output_o122, 0.002); end
  def test_intermediate_output_p122; assert_in_epsilon(1063008.633542548, worksheet.intermediate_output_p122, 0.002); end
  def test_intermediate_output_d123; assert_equal("Load Factor (fixed assumption)", worksheet.intermediate_output_d123); end
  def test_intermediate_output_g123; assert_in_delta(0.76, worksheet.intermediate_output_g123, 0.002); end
  def test_intermediate_output_h123; assert_in_delta(0.76, worksheet.intermediate_output_h123, 0.002); end
  def test_intermediate_output_i123; assert_in_delta(0.76, worksheet.intermediate_output_i123, 0.002); end
  def test_intermediate_output_j123; assert_in_delta(0.76, worksheet.intermediate_output_j123, 0.002); end
  def test_intermediate_output_k123; assert_in_delta(0.76, worksheet.intermediate_output_k123, 0.002); end
  def test_intermediate_output_l123; assert_in_delta(0.76, worksheet.intermediate_output_l123, 0.002); end
  def test_intermediate_output_m123; assert_in_delta(0.76, worksheet.intermediate_output_m123, 0.002); end
  def test_intermediate_output_n123; assert_in_delta(0.76, worksheet.intermediate_output_n123, 0.002); end
  def test_intermediate_output_o123; assert_in_delta(0.76, worksheet.intermediate_output_o123, 0.002); end
  def test_intermediate_output_p123; assert_in_delta(0.76, worksheet.intermediate_output_p123, 0.002); end
  def test_intermediate_output_d124; assert_equal("Peak demand Upstream GW", worksheet.intermediate_output_d124); end
  def test_intermediate_output_g124; assert_in_epsilon(36.151698943056765, worksheet.intermediate_output_g124, 0.002); end
  def test_intermediate_output_h124; assert_in_epsilon(43.06565786607575, worksheet.intermediate_output_h124, 0.002); end
  def test_intermediate_output_i124; assert_in_epsilon(50.96006478553186, worksheet.intermediate_output_i124, 0.002); end
  def test_intermediate_output_j124; assert_in_epsilon(59.9267864351343, worksheet.intermediate_output_j124, 0.002); end
  def test_intermediate_output_k124; assert_in_epsilon(70.80228512845095, worksheet.intermediate_output_k124, 0.002); end
  def test_intermediate_output_l124; assert_in_epsilon(84.03859636276887, worksheet.intermediate_output_l124, 0.002); end
  def test_intermediate_output_m124; assert_in_epsilon(100.7891470471166, worksheet.intermediate_output_m124, 0.002); end
  def test_intermediate_output_n124; assert_in_epsilon(119.09526424371802, worksheet.intermediate_output_n124, 0.002); end
  def test_intermediate_output_o124; assert_in_epsilon(138.71112023084044, worksheet.intermediate_output_o124, 0.002); end
  def test_intermediate_output_p124; assert_in_epsilon(159.6684441153791, worksheet.intermediate_output_p124, 0.002); end
  def test_intermediate_output_d126; assert_equal("GW installed capacity", worksheet.intermediate_output_d126); end
  def test_intermediate_output_g126; assert_in_epsilon(2006.0, worksheet.intermediate_output_g126, 0.002); end
  def test_intermediate_output_h126; assert_in_epsilon(2010.0, worksheet.intermediate_output_h126, 0.002); end
  def test_intermediate_output_i126; assert_in_epsilon(2015.0, worksheet.intermediate_output_i126, 0.002); end
  def test_intermediate_output_j126; assert_in_epsilon(2020.0, worksheet.intermediate_output_j126, 0.002); end
  def test_intermediate_output_k126; assert_in_epsilon(2025.0, worksheet.intermediate_output_k126, 0.002); end
  def test_intermediate_output_l126; assert_in_epsilon(2030.0, worksheet.intermediate_output_l126, 0.002); end
  def test_intermediate_output_m126; assert_in_epsilon(2035.0, worksheet.intermediate_output_m126, 0.002); end
  def test_intermediate_output_n126; assert_in_epsilon(2040.0, worksheet.intermediate_output_n126, 0.002); end
  def test_intermediate_output_o126; assert_in_epsilon(2045.0, worksheet.intermediate_output_o126, 0.002); end
  def test_intermediate_output_p126; assert_in_epsilon(2050.0, worksheet.intermediate_output_p126, 0.002); end
  def test_intermediate_output_c128; assert_equal("Therm.b", worksheet.intermediate_output_c128); end
  def test_intermediate_output_d128; assert_equal("CCGT", worksheet.intermediate_output_d128); end
  def test_intermediate_output_g128; assert_in_delta(0.342, worksheet.intermediate_output_g128, 0.002); end
  def test_intermediate_output_h128; assert_in_epsilon(2.409, worksheet.intermediate_output_h128, 0.002); end
  def test_intermediate_output_i128; assert_in_epsilon(3.569, worksheet.intermediate_output_i128, 0.002); end
  def test_intermediate_output_j128; assert_in_epsilon(13.987491756679622, worksheet.intermediate_output_j128, 0.002); end
  def test_intermediate_output_k128; assert_in_epsilon(16.402491756679623, worksheet.intermediate_output_k128, 0.002); end
  def test_intermediate_output_l128; assert_in_epsilon(17.548491756679624, worksheet.intermediate_output_l128, 0.002); end
  def test_intermediate_output_m128; assert_in_epsilon(17.548491756679624, worksheet.intermediate_output_m128, 0.002); end
  def test_intermediate_output_n128; assert_in_epsilon(17.548491756679624, worksheet.intermediate_output_n128, 0.002); end
  def test_intermediate_output_o128; assert_in_epsilon(17.548491756679624, worksheet.intermediate_output_o128, 0.002); end
  def test_intermediate_output_p128; assert_in_epsilon(17.408491756679624, worksheet.intermediate_output_p128, 0.002); end
  def test_intermediate_output_c129; assert_equal("Therm.a.Solid", worksheet.intermediate_output_c129); end
  def test_intermediate_output_d129; assert_equal("Coal and or biomass", worksheet.intermediate_output_d129); end
  def test_intermediate_output_g129; assert_in_epsilon(34.23, worksheet.intermediate_output_g129, 0.002); end
  def test_intermediate_output_h129; assert_in_epsilon(35.68, worksheet.intermediate_output_h129, 0.002); end
  def test_intermediate_output_i129; assert_in_epsilon(40.86443397824231, worksheet.intermediate_output_i129, 0.002); end
  def test_intermediate_output_j129; assert_in_epsilon(46.51943397824231, worksheet.intermediate_output_j129, 0.002); end
  def test_intermediate_output_k129; assert_in_epsilon(53.18546096115481, worksheet.intermediate_output_k129, 0.002); end
  def test_intermediate_output_l129; assert_in_epsilon(61.76600948771934, worksheet.intermediate_output_l129, 0.002); end
  def test_intermediate_output_m129; assert_in_epsilon(73.70662415292134, worksheet.intermediate_output_m129, 0.002); end
  def test_intermediate_output_n129; assert_in_epsilon(85.27836392742644, worksheet.intermediate_output_n129, 0.002); end
  def test_intermediate_output_o129; assert_in_epsilon(99.53754067433255, worksheet.intermediate_output_o129, 0.002); end
  def test_intermediate_output_p129; assert_in_epsilon(116.48923668636517, worksheet.intermediate_output_p129, 0.002); end
  def test_intermediate_output_c130; assert_equal("Nuke", worksheet.intermediate_output_c130); end
  def test_intermediate_output_d130; assert_equal("Nuclear power", worksheet.intermediate_output_d130); end
  def test_intermediate_output_g130; assert_in_epsilon(1.8, worksheet.intermediate_output_g130, 0.002); end
  def test_intermediate_output_h130; assert_in_epsilon(1.8, worksheet.intermediate_output_h130, 0.002); end
  def test_intermediate_output_i130; assert_in_epsilon(1.8, worksheet.intermediate_output_i130, 0.002); end
  def test_intermediate_output_j130; assert_in_epsilon(1.8, worksheet.intermediate_output_j130, 0.002); end
  def test_intermediate_output_k130; assert_in_epsilon(1.8, worksheet.intermediate_output_k130, 0.002); end
  def test_intermediate_output_l130; assert_in_epsilon(1.8, worksheet.intermediate_output_l130, 0.002); end
  def test_intermediate_output_m130; assert_in_epsilon(1.8, worksheet.intermediate_output_m130, 0.002); end
  def test_intermediate_output_n130; assert_in_epsilon(1.8, worksheet.intermediate_output_n130, 0.002); end
  def test_intermediate_output_o130; assert_in_epsilon(1.8, worksheet.intermediate_output_o130, 0.002); end
  def test_intermediate_output_p130; assert_in_delta(0.0, (worksheet.intermediate_output_p130||0), 0.002); end
  def test_intermediate_output_c131; assert_equal("RE.a", worksheet.intermediate_output_c131); end
  def test_intermediate_output_d131; assert_equal("Onshore wind", worksheet.intermediate_output_d131); end
  def test_intermediate_output_g131; assert_in_delta(0.0008216, worksheet.intermediate_output_g131, 0.002); end
  def test_intermediate_output_h131; assert_in_delta(0.0021736, worksheet.intermediate_output_h131, 0.002); end
  def test_intermediate_output_i131; assert_in_delta(0.36664240000000003, worksheet.intermediate_output_i131, 0.002); end
  def test_intermediate_output_j131; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_j131, 0.002); end
  def test_intermediate_output_k131; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_k131, 0.002); end
  def test_intermediate_output_l131; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_l131, 0.002); end
  def test_intermediate_output_m131; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_m131, 0.002); end
  def test_intermediate_output_n131; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_n131, 0.002); end
  def test_intermediate_output_o131; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_o131, 0.002); end
  def test_intermediate_output_p131; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_p131, 0.002); end
  def test_intermediate_output_c132; assert_equal("RE.b", worksheet.intermediate_output_c132); end
  def test_intermediate_output_d132; assert_equal("Hydroelectric power stations", worksheet.intermediate_output_d132); end
  def test_intermediate_output_g132; assert_in_delta(0.67, worksheet.intermediate_output_g132, 0.002); end
  def test_intermediate_output_h132; assert_in_delta(0.67, worksheet.intermediate_output_h132, 0.002); end
  def test_intermediate_output_i132; assert_in_delta(0.674, worksheet.intermediate_output_i132, 0.002); end
  def test_intermediate_output_j132; assert_in_delta(0.684, worksheet.intermediate_output_j132, 0.002); end
  def test_intermediate_output_k132; assert_in_delta(0.614, worksheet.intermediate_output_k132, 0.002); end
  def test_intermediate_output_l132; assert_in_delta(0.614, worksheet.intermediate_output_l132, 0.002); end
  def test_intermediate_output_m132; assert_in_delta(0.614, worksheet.intermediate_output_m132, 0.002); end
  def test_intermediate_output_n132; assert_in_delta(0.614, worksheet.intermediate_output_n132, 0.002); end
  def test_intermediate_output_o132; assert_in_delta(0.614, worksheet.intermediate_output_o132, 0.002); end
  def test_intermediate_output_p132; assert_in_delta(0.614, worksheet.intermediate_output_p132, 0.002); end
  def test_intermediate_output_c133; assert_equal("RE.c", worksheet.intermediate_output_c133); end
  def test_intermediate_output_d133; assert_equal("CSP", worksheet.intermediate_output_d133); end
  def test_intermediate_output_g133; assert_in_delta(0.0, (worksheet.intermediate_output_g133||0), 0.002); end
  def test_intermediate_output_h133; assert_in_delta(0.0, (worksheet.intermediate_output_h133||0), 0.002); end
  def test_intermediate_output_i133; assert_in_delta(0.063, worksheet.intermediate_output_i133, 0.002); end
  def test_intermediate_output_j133; assert_in_delta(0.168, worksheet.intermediate_output_j133, 0.002); end
  def test_intermediate_output_k133; assert_in_delta(0.168, worksheet.intermediate_output_k133, 0.002); end
  def test_intermediate_output_l133; assert_in_delta(0.168, worksheet.intermediate_output_l133, 0.002); end
  def test_intermediate_output_m133; assert_in_delta(0.168, worksheet.intermediate_output_m133, 0.002); end
  def test_intermediate_output_n133; assert_in_delta(0.168, worksheet.intermediate_output_n133, 0.002); end
  def test_intermediate_output_o133; assert_in_delta(0.168, worksheet.intermediate_output_o133, 0.002); end
  def test_intermediate_output_p133; assert_in_delta(0.168, worksheet.intermediate_output_p133, 0.002); end
  def test_intermediate_output_c134; assert_equal("Re.d", worksheet.intermediate_output_c134); end
  def test_intermediate_output_d134; assert_equal("Decentralised PV", worksheet.intermediate_output_d134); end
  def test_intermediate_output_g134; assert_in_delta(0.0, (worksheet.intermediate_output_g134||0), 0.002); end
  def test_intermediate_output_h134; assert_in_delta(0.016, worksheet.intermediate_output_h134, 0.002); end
  def test_intermediate_output_i134; assert_in_delta(0.4233823202794939, worksheet.intermediate_output_i134, 0.002); end
  def test_intermediate_output_j134; assert_in_epsilon(7.269867031173957, worksheet.intermediate_output_j134, 0.002); end
  def test_intermediate_output_k134; assert_in_epsilon(17.60198966238316, worksheet.intermediate_output_k134, 0.002); end
  def test_intermediate_output_l134; assert_in_epsilon(28.479858314744995, worksheet.intermediate_output_l134, 0.002); end
  def test_intermediate_output_m134; assert_in_epsilon(39.082231539658686, worksheet.intermediate_output_m134, 0.002); end
  def test_intermediate_output_n134; assert_in_epsilon(53.327572709148285, worksheet.intermediate_output_n134, 0.002); end
  def test_intermediate_output_o134; assert_in_epsilon(63.68675414000026, worksheet.intermediate_output_o134, 0.002); end
  def test_intermediate_output_p134; assert_in_epsilon(73.09772921056023, worksheet.intermediate_output_p134, 0.002); end
  def test_intermediate_output_c135; assert_equal("RE.e", worksheet.intermediate_output_c135); end
  def test_intermediate_output_d135; assert_equal("Centralised PV", worksheet.intermediate_output_d135); end
  def test_intermediate_output_g135; assert_in_delta(0.0, (worksheet.intermediate_output_g135||0), 0.002); end
  def test_intermediate_output_h135; assert_in_delta(0.0, (worksheet.intermediate_output_h135||0), 0.002); end
  def test_intermediate_output_i135; assert_in_epsilon(1.534, worksheet.intermediate_output_i135, 0.002); end
  def test_intermediate_output_j135; assert_in_epsilon(1.534, worksheet.intermediate_output_j135, 0.002); end
  def test_intermediate_output_k135; assert_in_epsilon(1.534, worksheet.intermediate_output_k135, 0.002); end
  def test_intermediate_output_l135; assert_in_epsilon(1.534, worksheet.intermediate_output_l135, 0.002); end
  def test_intermediate_output_m135; assert_in_epsilon(1.534, worksheet.intermediate_output_m135, 0.002); end
  def test_intermediate_output_n135; assert_in_epsilon(1.534, worksheet.intermediate_output_n135, 0.002); end
  def test_intermediate_output_o135; assert_in_epsilon(1.534, worksheet.intermediate_output_o135, 0.002); end
  def test_intermediate_output_p135; assert_in_epsilon(1.534, worksheet.intermediate_output_p135, 0.002); end
  def test_intermediate_output_c138; assert_equal("ElcDSB.i", worksheet.intermediate_output_c138); end
  def test_intermediate_output_d138; assert_equal("Electricity imports and exports", worksheet.intermediate_output_d138); end
  def test_intermediate_output_g138; assert_in_epsilon(1.5, worksheet.intermediate_output_g138, 0.002); end
  def test_intermediate_output_h138; assert_in_epsilon(1.5, worksheet.intermediate_output_h138, 0.002); end
  def test_intermediate_output_i138; assert_in_epsilon(1.5, worksheet.intermediate_output_i138, 0.002); end
  def test_intermediate_output_j138; assert_in_epsilon(1.5, worksheet.intermediate_output_j138, 0.002); end
  def test_intermediate_output_k138; assert_in_epsilon(1.5, worksheet.intermediate_output_k138, 0.002); end
  def test_intermediate_output_l138; assert_in_epsilon(1.5, worksheet.intermediate_output_l138, 0.002); end
  def test_intermediate_output_m138; assert_in_epsilon(1.5, worksheet.intermediate_output_m138, 0.002); end
  def test_intermediate_output_n138; assert_in_epsilon(1.5, worksheet.intermediate_output_n138, 0.002); end
  def test_intermediate_output_o138; assert_in_epsilon(1.5, worksheet.intermediate_output_o138, 0.002); end
  def test_intermediate_output_p138; assert_in_epsilon(1.5, worksheet.intermediate_output_p138, 0.002); end
  def test_intermediate_output_c139; assert_equal("ElcDSB.s", worksheet.intermediate_output_c139); end
  def test_intermediate_output_d139; assert_equal("Electricity storage scheme", worksheet.intermediate_output_d139); end
  def test_intermediate_output_g139; assert_in_epsilon(1.58, worksheet.intermediate_output_g139, 0.002); end
  def test_intermediate_output_h139; assert_in_epsilon(1.58, worksheet.intermediate_output_h139, 0.002); end
  def test_intermediate_output_i139; assert_in_epsilon(2.912, worksheet.intermediate_output_i139, 0.002); end
  def test_intermediate_output_j139; assert_in_epsilon(2.912, worksheet.intermediate_output_j139, 0.002); end
  def test_intermediate_output_k139; assert_in_epsilon(2.912, worksheet.intermediate_output_k139, 0.002); end
  def test_intermediate_output_l139; assert_in_epsilon(2.912, worksheet.intermediate_output_l139, 0.002); end
  def test_intermediate_output_m139; assert_in_epsilon(2.912, worksheet.intermediate_output_m139, 0.002); end
  def test_intermediate_output_n139; assert_in_epsilon(2.912, worksheet.intermediate_output_n139, 0.002); end
  def test_intermediate_output_o139; assert_in_epsilon(2.912, worksheet.intermediate_output_o139, 0.002); end
  def test_intermediate_output_p139; assert_in_epsilon(2.912, worksheet.intermediate_output_p139, 0.002); end
  def test_intermediate_output_g140; assert_in_delta(0.0, (worksheet.intermediate_output_g140||0), 0.002); end
  def test_intermediate_output_h140; assert_in_delta(0.0, (worksheet.intermediate_output_h140||0), 0.002); end
  def test_intermediate_output_i140; assert_in_delta(0.0, (worksheet.intermediate_output_i140||0), 0.002); end
  def test_intermediate_output_j140; assert_in_delta(0.0, (worksheet.intermediate_output_j140||0), 0.002); end
  def test_intermediate_output_k140; assert_in_delta(0.0, (worksheet.intermediate_output_k140||0), 0.002); end
  def test_intermediate_output_l140; assert_in_delta(0.0, (worksheet.intermediate_output_l140||0), 0.002); end
  def test_intermediate_output_m140; assert_in_delta(0.0, (worksheet.intermediate_output_m140||0), 0.002); end
  def test_intermediate_output_n140; assert_in_delta(0.0, (worksheet.intermediate_output_n140||0), 0.002); end
  def test_intermediate_output_o140; assert_in_delta(0.0, (worksheet.intermediate_output_o140||0), 0.002); end
  def test_intermediate_output_p140; assert_in_delta(0.0, (worksheet.intermediate_output_p140||0), 0.002); end
  def test_intermediate_output_d141; assert_equal("Total generation", worksheet.intermediate_output_d141); end
  def test_intermediate_output_g141; assert_in_epsilon(40.122821599999995, worksheet.intermediate_output_g141, 0.002); end
  def test_intermediate_output_h141; assert_in_epsilon(43.65717359999999, worksheet.intermediate_output_h141, 0.002); end
  def test_intermediate_output_i141; assert_in_epsilon(53.70645869852181, worksheet.intermediate_output_i141, 0.002); end
  def test_intermediate_output_j141; assert_in_epsilon(77.0906151660959, worksheet.intermediate_output_j141, 0.002); end
  def test_intermediate_output_k141; assert_in_epsilon(96.43376478021761, worksheet.intermediate_output_k141, 0.002); end
  def test_intermediate_output_l141; assert_in_epsilon(117.03818195914398, worksheet.intermediate_output_l141, 0.002); end
  def test_intermediate_output_m141; assert_in_epsilon(139.58116984925965, worksheet.intermediate_output_m141, 0.002); end
  def test_intermediate_output_n141; assert_in_epsilon(165.39825079325433, worksheet.intermediate_output_n141, 0.002); end
  def test_intermediate_output_o141; assert_in_epsilon(190.01660897101243, worksheet.intermediate_output_o141, 0.002); end
  def test_intermediate_output_p141; assert_in_epsilon(214.43928005360505, worksheet.intermediate_output_p141, 0.002); end
  def test_intermediate_output_d142; assert_equal("reserve margin", worksheet.intermediate_output_d142); end
  def test_intermediate_output_g142; assert_in_delta(0.10984608671360707, worksheet.intermediate_output_g142, 0.002); end
  def test_intermediate_output_h142; assert_in_delta(0.013363681467817301, worksheet.intermediate_output_h142, 0.002); end
  def test_intermediate_output_i142; assert_in_delta(0.015482939357142733, worksheet.intermediate_output_i142, 0.002); end
  def test_intermediate_output_j142; assert_in_delta(0.13950292009795318, worksheet.intermediate_output_j142, 0.002); end
  def test_intermediate_output_k142; assert_in_delta(0.09174124786508298, worksheet.intermediate_output_k142, 0.002); end
  def test_intermediate_output_l142; assert_in_delta(0.03552804795479503, worksheet.intermediate_output_l142, 0.002); end
  def test_intermediate_output_m142; assert_in_delta(-0.01809925761811315, worksheet.intermediate_output_m142, 0.002); end
  def test_intermediate_output_n142; assert_in_delta(-0.07186336261110748, worksheet.intermediate_output_n142, 0.002); end
  def test_intermediate_output_o142; assert_in_delta(-0.10031831173067274, worksheet.intermediate_output_o142, 0.002); end
  def test_intermediate_output_p142; assert_in_delta(-0.12438834349749439, worksheet.intermediate_output_p142, 0.002); end
  def test_intermediate_output_b146; assert_equal("Emissions", worksheet.intermediate_output_b146); end
  def test_intermediate_output_g148; assert_in_delta(0.0, (worksheet.intermediate_output_g148||0), 0.002); end
  def test_intermediate_output_c150; assert_equal("Emissions by sector", worksheet.intermediate_output_c150); end
  def test_intermediate_output_g150; assert_in_epsilon(2006.0, worksheet.intermediate_output_g150, 0.002); end
  def test_intermediate_output_h150; assert_in_epsilon(2010.0, worksheet.intermediate_output_h150, 0.002); end
  def test_intermediate_output_i150; assert_in_epsilon(2015.0, worksheet.intermediate_output_i150, 0.002); end
  def test_intermediate_output_j150; assert_in_epsilon(2020.0, worksheet.intermediate_output_j150, 0.002); end
  def test_intermediate_output_k150; assert_in_epsilon(2025.0, worksheet.intermediate_output_k150, 0.002); end
  def test_intermediate_output_l150; assert_in_epsilon(2030.0, worksheet.intermediate_output_l150, 0.002); end
  def test_intermediate_output_m150; assert_in_epsilon(2035.0, worksheet.intermediate_output_m150, 0.002); end
  def test_intermediate_output_n150; assert_in_epsilon(2040.0, worksheet.intermediate_output_n150, 0.002); end
  def test_intermediate_output_o150; assert_in_epsilon(2045.0, worksheet.intermediate_output_o150, 0.002); end
  def test_intermediate_output_p150; assert_in_epsilon(2050.0, worksheet.intermediate_output_p150, 0.002); end
  def test_intermediate_output_c151; assert_equal("Therm", worksheet.intermediate_output_c151); end
  def test_intermediate_output_d151; assert_equal("Coal and gas power", worksheet.intermediate_output_d151); end
  def test_intermediate_output_g151; assert_in_epsilon(235.37666606152874, worksheet.intermediate_output_g151, 0.002); end
  def test_intermediate_output_h151; assert_in_epsilon(285.40359745378123, worksheet.intermediate_output_h151, 0.002); end
  def test_intermediate_output_i151; assert_in_epsilon(322.52520062265995, worksheet.intermediate_output_i151, 0.002); end
  def test_intermediate_output_j151; assert_in_epsilon(368.05605060410085, worksheet.intermediate_output_j151, 0.002); end
  def test_intermediate_output_k151; assert_in_epsilon(432.4378422429402, worksheet.intermediate_output_k151, 0.002); end
  def test_intermediate_output_l151; assert_in_epsilon(495.1964983124568, worksheet.intermediate_output_l151, 0.002); end
  def test_intermediate_output_m151; assert_in_epsilon(577.0440529789958, worksheet.intermediate_output_m151, 0.002); end
  def test_intermediate_output_n151; assert_in_epsilon(659.0336586965923, worksheet.intermediate_output_n151, 0.002); end
  def test_intermediate_output_o151; assert_in_epsilon(766.0590974395177, worksheet.intermediate_output_o151, 0.002); end
  def test_intermediate_output_p151; assert_in_epsilon(891.6258536687769, worksheet.intermediate_output_p151, 0.002); end
  def test_intermediate_output_q151; assert_in_delta(0.5107078271896965, worksheet.intermediate_output_q151, 0.002); end
  def test_intermediate_output_c152; assert_equal("Nuke", worksheet.intermediate_output_c152); end
  def test_intermediate_output_g152; assert_in_delta(0.0, (worksheet.intermediate_output_g152||0), 0.002); end
  def test_intermediate_output_h152; assert_in_delta(0.0, (worksheet.intermediate_output_h152||0), 0.002); end
  def test_intermediate_output_i152; assert_in_delta(0.0, (worksheet.intermediate_output_i152||0), 0.002); end
  def test_intermediate_output_j152; assert_in_delta(0.0, (worksheet.intermediate_output_j152||0), 0.002); end
  def test_intermediate_output_k152; assert_in_delta(0.0, (worksheet.intermediate_output_k152||0), 0.002); end
  def test_intermediate_output_l152; assert_in_delta(0.0, (worksheet.intermediate_output_l152||0), 0.002); end
  def test_intermediate_output_m152; assert_in_delta(0.0, (worksheet.intermediate_output_m152||0), 0.002); end
  def test_intermediate_output_n152; assert_in_delta(0.0, (worksheet.intermediate_output_n152||0), 0.002); end
  def test_intermediate_output_o152; assert_in_delta(0.0, (worksheet.intermediate_output_o152||0), 0.002); end
  def test_intermediate_output_p152; assert_in_delta(0.0, (worksheet.intermediate_output_p152||0), 0.002); end
  def test_intermediate_output_q152; assert_in_delta(0.0, (worksheet.intermediate_output_q152||0), 0.002); end
  def test_intermediate_output_c153; assert_equal("RE", worksheet.intermediate_output_c153); end
  def test_intermediate_output_g153; assert_in_delta(0.0, (worksheet.intermediate_output_g153||0), 0.002); end
  def test_intermediate_output_h153; assert_in_delta(0.0, (worksheet.intermediate_output_h153||0), 0.002); end
  def test_intermediate_output_i153; assert_in_delta(0.0, (worksheet.intermediate_output_i153||0), 0.002); end
  def test_intermediate_output_j153; assert_in_delta(0.0, (worksheet.intermediate_output_j153||0), 0.002); end
  def test_intermediate_output_k153; assert_in_delta(0.0, (worksheet.intermediate_output_k153||0), 0.002); end
  def test_intermediate_output_l153; assert_in_delta(0.0, (worksheet.intermediate_output_l153||0), 0.002); end
  def test_intermediate_output_m153; assert_in_delta(0.0, (worksheet.intermediate_output_m153||0), 0.002); end
  def test_intermediate_output_n153; assert_in_delta(0.0, (worksheet.intermediate_output_n153||0), 0.002); end
  def test_intermediate_output_o153; assert_in_delta(0.0, (worksheet.intermediate_output_o153||0), 0.002); end
  def test_intermediate_output_p153; assert_in_delta(0.0, (worksheet.intermediate_output_p153||0), 0.002); end
  def test_intermediate_output_q153; assert_in_delta(0.0, (worksheet.intermediate_output_q153||0), 0.002); end
  def test_intermediate_output_c156; assert_equal("AGL", worksheet.intermediate_output_c156); end
  def test_intermediate_output_d156; assert_equal("Land, agricultre and forestry", worksheet.intermediate_output_d156); end
  def test_intermediate_output_g156; assert_in_epsilon(46.69110295826523, worksheet.intermediate_output_g156, 0.002); end
  def test_intermediate_output_h156; assert_in_epsilon(53.1529126311861, worksheet.intermediate_output_h156, 0.002); end
  def test_intermediate_output_i156; assert_in_epsilon(59.6994774022186, worksheet.intermediate_output_i156, 0.002); end
  def test_intermediate_output_j156; assert_in_epsilon(68.2161680234127, worksheet.intermediate_output_j156, 0.002); end
  def test_intermediate_output_k156; assert_in_epsilon(68.56530407765598, worksheet.intermediate_output_k156, 0.002); end
  def test_intermediate_output_l156; assert_in_epsilon(69.13094270098945, worksheet.intermediate_output_l156, 0.002); end
  def test_intermediate_output_m156; assert_in_epsilon(69.92652675530218, worksheet.intermediate_output_m156, 0.002); end
  def test_intermediate_output_n156; assert_in_epsilon(70.96692693412378, worksheet.intermediate_output_n156, 0.002); end
  def test_intermediate_output_o156; assert_in_epsilon(72.3422609942225, worksheet.intermediate_output_o156, 0.002); end
  def test_intermediate_output_p156; assert_in_epsilon(73.95324205926937, worksheet.intermediate_output_p156, 0.002); end
  def test_intermediate_output_q156; assert_in_delta(0.10130788297712018, worksheet.intermediate_output_q156, 0.002); end
  def test_intermediate_output_c157; assert_equal("WST", worksheet.intermediate_output_c157); end
  def test_intermediate_output_d157; assert_equal("Waste emissions", worksheet.intermediate_output_d157); end
  def test_intermediate_output_g157; assert_in_epsilon(2.623138104298895, worksheet.intermediate_output_g157, 0.002); end
  def test_intermediate_output_h157; assert_in_epsilon(7.015085640497572, worksheet.intermediate_output_h157, 0.002); end
  def test_intermediate_output_i157; assert_in_epsilon(11.921574502466903, worksheet.intermediate_output_i157, 0.002); end
  def test_intermediate_output_j157; assert_in_epsilon(16.236152840885765, worksheet.intermediate_output_j157, 0.002); end
  def test_intermediate_output_k157; assert_in_epsilon(20.155273938517077, worksheet.intermediate_output_k157, 0.002); end
  def test_intermediate_output_l157; assert_in_epsilon(23.77830831781407, worksheet.intermediate_output_l157, 0.002); end
  def test_intermediate_output_m157; assert_in_epsilon(27.186290446401184, worksheet.intermediate_output_m157, 0.002); end
  def test_intermediate_output_n157; assert_in_epsilon(30.448217619410688, worksheet.intermediate_output_n157, 0.002); end
  def test_intermediate_output_o157; assert_in_epsilon(33.69942871082754, worksheet.intermediate_output_o157, 0.002); end
  def test_intermediate_output_p157; assert_in_epsilon(36.87885777328626, worksheet.intermediate_output_p157, 0.002); end
  def test_intermediate_output_q157; assert_in_delta(0.005691546167600124, worksheet.intermediate_output_q157, 0.002); end
  def test_intermediate_output_c159; assert_equal("H2prod", worksheet.intermediate_output_c159); end
  def test_intermediate_output_g159; assert_in_delta(0.0, (worksheet.intermediate_output_g159||0), 0.002); end
  def test_intermediate_output_h159; assert_in_delta(0.0, (worksheet.intermediate_output_h159||0), 0.002); end
  def test_intermediate_output_i159; assert_in_delta(0.0, (worksheet.intermediate_output_i159||0), 0.002); end
  def test_intermediate_output_j159; assert_in_delta(0.0, (worksheet.intermediate_output_j159||0), 0.002); end
  def test_intermediate_output_k159; assert_in_delta(0.0, (worksheet.intermediate_output_k159||0), 0.002); end
  def test_intermediate_output_l159; assert_in_delta(0.0, (worksheet.intermediate_output_l159||0), 0.002); end
  def test_intermediate_output_m159; assert_in_delta(0.0, (worksheet.intermediate_output_m159||0), 0.002); end
  def test_intermediate_output_n159; assert_in_delta(0.0, (worksheet.intermediate_output_n159||0), 0.002); end
  def test_intermediate_output_o159; assert_in_delta(0.0, (worksheet.intermediate_output_o159||0), 0.002); end
  def test_intermediate_output_p159; assert_in_delta(0.0, (worksheet.intermediate_output_p159||0), 0.002); end
  def test_intermediate_output_q159; assert_in_delta(0.0, (worksheet.intermediate_output_q159||0), 0.002); end
  def test_intermediate_output_c160; assert_equal("RES", worksheet.intermediate_output_c160); end
  def test_intermediate_output_d160; assert_equal("Household emissions", worksheet.intermediate_output_d160); end
  def test_intermediate_output_g160; assert_in_epsilon(3.7182466405130725, worksheet.intermediate_output_g160, 0.002); end
  def test_intermediate_output_h160; assert_in_epsilon(3.764383955315642, worksheet.intermediate_output_h160, 0.002); end
  def test_intermediate_output_i160; assert_in_epsilon(3.8832818576474053, worksheet.intermediate_output_i160, 0.002); end
  def test_intermediate_output_j160; assert_in_epsilon(3.970860978950576, worksheet.intermediate_output_j160, 0.002); end
  def test_intermediate_output_k160; assert_in_epsilon(4.024482239671912, worksheet.intermediate_output_k160, 0.002); end
  def test_intermediate_output_l160; assert_in_epsilon(4.036877804330983, worksheet.intermediate_output_l160, 0.002); end
  def test_intermediate_output_m160; assert_in_epsilon(3.6829467488068217, worksheet.intermediate_output_m160, 0.002); end
  def test_intermediate_output_n160; assert_in_epsilon(3.33286574730369, worksheet.intermediate_output_n160, 0.002); end
  def test_intermediate_output_o160; assert_in_epsilon(2.903174207098406, worksheet.intermediate_output_o160, 0.002); end
  def test_intermediate_output_p160; assert_in_epsilon(2.4971088765227987, worksheet.intermediate_output_p160, 0.002); end
  def test_intermediate_output_q160; assert_in_delta(0.008067654685173538, worksheet.intermediate_output_q160, 0.002); end
  def test_intermediate_output_c161; assert_equal("COM", worksheet.intermediate_output_c161); end
  def test_intermediate_output_d161; assert_equal("Commercial sector emissions", worksheet.intermediate_output_d161); end
  def test_intermediate_output_g161; assert_in_epsilon(8.8862553782154, worksheet.intermediate_output_g161, 0.002); end
  def test_intermediate_output_h161; assert_in_epsilon(9.803310043292498, worksheet.intermediate_output_h161, 0.002); end
  def test_intermediate_output_i161; assert_in_epsilon(10.602019289835846, worksheet.intermediate_output_i161, 0.002); end
  def test_intermediate_output_j161; assert_in_epsilon(11.141690460064911, worksheet.intermediate_output_j161, 0.002); end
  def test_intermediate_output_k161; assert_in_epsilon(11.333569619721601, worksheet.intermediate_output_k161, 0.002); end
  def test_intermediate_output_l161; assert_in_epsilon(11.181641885786934, worksheet.intermediate_output_l161, 0.002); end
  def test_intermediate_output_m161; assert_in_epsilon(10.667554053850074, worksheet.intermediate_output_m161, 0.002); end
  def test_intermediate_output_n161; assert_in_epsilon(9.545828256243906, worksheet.intermediate_output_n161, 0.002); end
  def test_intermediate_output_o161; assert_in_epsilon(7.768395322765536, worksheet.intermediate_output_o161, 0.002); end
  def test_intermediate_output_p161; assert_in_epsilon(5.366101688372341, worksheet.intermediate_output_p161, 0.002); end
  def test_intermediate_output_q161; assert_in_delta(0.019280926406166406, worksheet.intermediate_output_q161, 0.002); end
  def test_intermediate_output_c162; assert_equal("IND", worksheet.intermediate_output_c162); end
  def test_intermediate_output_d162; assert_equal("Industry", worksheet.intermediate_output_d162); end
  def test_intermediate_output_g162; assert_in_epsilon(63.078460679035885, worksheet.intermediate_output_g162, 0.002); end
  def test_intermediate_output_h162; assert_in_epsilon(73.69126572548763, worksheet.intermediate_output_h162, 0.002); end
  def test_intermediate_output_i162; assert_in_epsilon(90.9348477018036, worksheet.intermediate_output_i162, 0.002); end
  def test_intermediate_output_j162; assert_in_epsilon(108.8002293138643, worksheet.intermediate_output_j162, 0.002); end
  def test_intermediate_output_k162; assert_in_epsilon(135.8127149542214, worksheet.intermediate_output_k162, 0.002); end
  def test_intermediate_output_l162; assert_in_epsilon(163.7547905807464, worksheet.intermediate_output_l162, 0.002); end
  def test_intermediate_output_m162; assert_in_epsilon(205.61430873334373, worksheet.intermediate_output_m162, 0.002); end
  def test_intermediate_output_n162; assert_in_epsilon(248.12071838083958, worksheet.intermediate_output_n162, 0.002); end
  def test_intermediate_output_o162; assert_in_epsilon(296.76954193901884, worksheet.intermediate_output_o162, 0.002); end
  def test_intermediate_output_p162; assert_in_epsilon(346.12572457865616, worksheet.intermediate_output_p162, 0.002); end
  def test_intermediate_output_q162; assert_in_delta(0.1368643040743896, worksheet.intermediate_output_q162, 0.002); end
  def test_intermediate_output_c163; assert_equal("TRA", worksheet.intermediate_output_c163); end
  def test_intermediate_output_d163; assert_equal("Transport", worksheet.intermediate_output_d163); end
  def test_intermediate_output_g163; assert_in_epsilon(46.61458893702269, worksheet.intermediate_output_g163, 0.002); end
  def test_intermediate_output_h163; assert_in_epsilon(52.63391515836663, worksheet.intermediate_output_h163, 0.002); end
  def test_intermediate_output_i163; assert_in_epsilon(59.923155224465916, worksheet.intermediate_output_i163, 0.002); end
  def test_intermediate_output_j163; assert_in_epsilon(67.39222302925477, worksheet.intermediate_output_j163, 0.002); end
  def test_intermediate_output_k163; assert_in_epsilon(74.78864389865554, worksheet.intermediate_output_k163, 0.002); end
  def test_intermediate_output_l163; assert_in_epsilon(82.2351086983291, worksheet.intermediate_output_l163, 0.002); end
  def test_intermediate_output_m163; assert_in_epsilon(89.73347774942502, worksheet.intermediate_output_m163, 0.002); end
  def test_intermediate_output_n163; assert_in_epsilon(97.16594299946709, worksheet.intermediate_output_n163, 0.002); end
  def test_intermediate_output_o163; assert_in_epsilon(105.73714761353091, worksheet.intermediate_output_o163, 0.002); end
  def test_intermediate_output_p163; assert_in_epsilon(111.58971303395437, worksheet.intermediate_output_p163, 0.002); end
  def test_intermediate_output_q163; assert_in_delta(0.10114186690512725, worksheet.intermediate_output_q163, 0.002); end
  def test_intermediate_output_c166; assert_equal("XV", worksheet.intermediate_output_c166); end
  def test_intermediate_output_g166; assert_in_delta(0.0, (worksheet.intermediate_output_g166||0), 0.002); end
  def test_intermediate_output_h166; assert_in_delta(0.0, (worksheet.intermediate_output_h166||0), 0.002); end
  def test_intermediate_output_i166; assert_in_delta(0.0, (worksheet.intermediate_output_i166||0), 0.002); end
  def test_intermediate_output_j166; assert_in_delta(0.0, (worksheet.intermediate_output_j166||0), 0.002); end
  def test_intermediate_output_k166; assert_in_delta(0.0, (worksheet.intermediate_output_k166||0), 0.002); end
  def test_intermediate_output_l166; assert_in_delta(0.0, (worksheet.intermediate_output_l166||0), 0.002); end
  def test_intermediate_output_m166; assert_in_delta(0.0, (worksheet.intermediate_output_m166||0), 0.002); end
  def test_intermediate_output_n166; assert_in_delta(0.0, (worksheet.intermediate_output_n166||0), 0.002); end
  def test_intermediate_output_o166; assert_in_delta(0.0, (worksheet.intermediate_output_o166||0), 0.002); end
  def test_intermediate_output_p166; assert_in_delta(0.0, (worksheet.intermediate_output_p166||0), 0.002); end
  def test_intermediate_output_q166; assert_in_delta(0.0, (worksheet.intermediate_output_q166||0), 0.002); end
  def test_intermediate_output_c167; assert_equal("XVI", worksheet.intermediate_output_c167); end
  def test_intermediate_output_g167; assert_in_epsilon(1.092662841022116, worksheet.intermediate_output_g167, 0.002); end
  def test_intermediate_output_h167; assert_in_epsilon(1.065615458948663, worksheet.intermediate_output_h167, 0.002); end
  def test_intermediate_output_i167; assert_in_epsilon(1.1932721305421006, worksheet.intermediate_output_i167, 0.002); end
  def test_intermediate_output_j167; assert_in_epsilon(1.3134084343915315, worksheet.intermediate_output_j167, 0.002); end
  def test_intermediate_output_k167; assert_in_epsilon(1.9451373020135574, worksheet.intermediate_output_k167, 0.002); end
  def test_intermediate_output_l167; assert_in_epsilon(2.092441070121342, worksheet.intermediate_output_l167, 0.002); end
  def test_intermediate_output_m167; assert_in_epsilon(2.695609649398731, worksheet.intermediate_output_m167, 0.002); end
  def test_intermediate_output_n167; assert_in_epsilon(3.258636625138732, worksheet.intermediate_output_n167, 0.002); end
  def test_intermediate_output_o167; assert_in_epsilon(3.5479042972890267, worksheet.intermediate_output_o167, 0.002); end
  def test_intermediate_output_p167; assert_in_epsilon(3.830009847106561, worksheet.intermediate_output_p167, 0.002); end
  def test_intermediate_output_q167; assert_in_delta(0.002370801977641459, worksheet.intermediate_output_q167, 0.002); end
  def test_intermediate_output_c168; assert_equal("XVII", worksheet.intermediate_output_c168); end
  def test_intermediate_output_g168; assert_in_delta(0.0, (worksheet.intermediate_output_g168||0), 0.002); end
  def test_intermediate_output_h168; assert_in_delta(0.0, (worksheet.intermediate_output_h168||0), 0.002); end
  def test_intermediate_output_i168; assert_in_delta(0.0, (worksheet.intermediate_output_i168||0), 0.002); end
  def test_intermediate_output_j168; assert_in_delta(0.0, (worksheet.intermediate_output_j168||0), 0.002); end
  def test_intermediate_output_k168; assert_in_delta(0.0, (worksheet.intermediate_output_k168||0), 0.002); end
  def test_intermediate_output_l168; assert_in_delta(0.0, (worksheet.intermediate_output_l168||0), 0.002); end
  def test_intermediate_output_m168; assert_in_delta(0.0, (worksheet.intermediate_output_m168||0), 0.002); end
  def test_intermediate_output_n168; assert_in_delta(0.0, (worksheet.intermediate_output_n168||0), 0.002); end
  def test_intermediate_output_o168; assert_in_delta(0.0, (worksheet.intermediate_output_o168||0), 0.002); end
  def test_intermediate_output_p168; assert_in_delta(0.0, (worksheet.intermediate_output_p168||0), 0.002); end
  def test_intermediate_output_q168; assert_in_delta(0.0, (worksheet.intermediate_output_q168||0), 0.002); end
  def test_intermediate_output_c169; assert_equal("FOS", worksheet.intermediate_output_c169); end
  def test_intermediate_output_d169; assert_equal("Fossil fuel production", worksheet.intermediate_output_d169); end
  def test_intermediate_output_g169; assert_in_epsilon(52.80209485039292, worksheet.intermediate_output_g169, 0.002); end
  def test_intermediate_output_h169; assert_in_epsilon(51.91412030632143, worksheet.intermediate_output_h169, 0.002); end
  def test_intermediate_output_i169; assert_in_epsilon(51.96975075110203, worksheet.intermediate_output_i169, 0.002); end
  def test_intermediate_output_j169; assert_in_epsilon(51.57758467192617, worksheet.intermediate_output_j169, 0.002); end
  def test_intermediate_output_k169; assert_in_epsilon(54.71606004097896, worksheet.intermediate_output_k169, 0.002); end
  def test_intermediate_output_l169; assert_in_epsilon(53.89343906850867, worksheet.intermediate_output_l169, 0.002); end
  def test_intermediate_output_m169; assert_in_epsilon(55.96005493234343, worksheet.intermediate_output_m169, 0.002); end
  def test_intermediate_output_n169; assert_in_epsilon(44.160711617698865, worksheet.intermediate_output_n169, 0.002); end
  def test_intermediate_output_o169; assert_in_epsilon(44.82393920291961, worksheet.intermediate_output_o169, 0.002); end
  def test_intermediate_output_p169; assert_in_epsilon(35.04447326396273, worksheet.intermediate_output_p169, 0.002); end
  def test_intermediate_output_q169; assert_in_delta(0.11456718961708488, worksheet.intermediate_output_q169, 0.002); end
  def test_intermediate_output_c171; assert_equal("Total", worksheet.intermediate_output_c171); end
  def test_intermediate_output_d171; assert_equal("Total", worksheet.intermediate_output_d171); end
  def test_intermediate_output_g171; assert_in_epsilon(460.883216450295, worksheet.intermediate_output_g171, 0.002); end
  def test_intermediate_output_h171; assert_in_epsilon(538.4442063731974, worksheet.intermediate_output_h171, 0.002); end
  def test_intermediate_output_i171; assert_in_epsilon(612.6525794827425, worksheet.intermediate_output_i171, 0.002); end
  def test_intermediate_output_j171; assert_in_epsilon(696.7043683568515, worksheet.intermediate_output_j171, 0.002); end
  def test_intermediate_output_k171; assert_in_epsilon(803.7790283143762, worksheet.intermediate_output_k171, 0.002); end
  def test_intermediate_output_l171; assert_in_epsilon(905.3000484390838, worksheet.intermediate_output_l171, 0.002); end
  def test_intermediate_output_m171; assert_in_epsilon(1042.5108220478667, worksheet.intermediate_output_m171, 0.002); end
  def test_intermediate_output_n171; assert_in_epsilon(1166.0335068768184, worksheet.intermediate_output_n171, 0.002); end
  def test_intermediate_output_o171; assert_in_epsilon(1333.65088972719, worksheet.intermediate_output_o171, 0.002); end
  def test_intermediate_output_p171; assert_in_epsilon(1506.9110847899078, worksheet.intermediate_output_p171, 0.002); end
  def test_intermediate_output_c173; assert_equal("Modelled emissions", worksheet.intermediate_output_c173); end
  def test_intermediate_output_d175; assert_equal("IPCC Sector", worksheet.intermediate_output_d175); end
  def test_intermediate_output_p175; assert_equal("Mt CO2e", worksheet.intermediate_output_p175); end
  def test_intermediate_output_c176; assert_equal("1A", worksheet.intermediate_output_c176); end
  def test_intermediate_output_d176; assert_equal("Fuel Combustion", worksheet.intermediate_output_d176); end
  def test_intermediate_output_g176; assert_in_epsilon(376.4892178156032, worksheet.intermediate_output_g176, 0.002); end
  def test_intermediate_output_h176; assert_in_epsilon(443.293303984381, worksheet.intermediate_output_h176, 0.002); end
  def test_intermediate_output_i176; assert_in_epsilon(504.5548331054522, worksheet.intermediate_output_i176, 0.002); end
  def test_intermediate_output_j176; assert_in_epsilon(575.4722846358662, worksheet.intermediate_output_j176, 0.002); end
  def test_intermediate_output_k176; assert_in_epsilon(673.763598116094, worksheet.intermediate_output_k176, 0.002); end
  def test_intermediate_output_l176; assert_in_epsilon(768.7838900574403, worksheet.intermediate_output_l176, 0.002); end
  def test_intermediate_output_m176; assert_in_epsilon(896.9885782981614, worksheet.intermediate_output_m176, 0.002); end
  def test_intermediate_output_n176; assert_in_epsilon(1019.9849413474453, worksheet.intermediate_output_n176, 0.002); end
  def test_intermediate_output_o176; assert_in_epsilon(1178.9842530911374, worksheet.intermediate_output_o176, 0.002); end
  def test_intermediate_output_p176; assert_in_epsilon(1349.846586950452, worksheet.intermediate_output_p176, 0.002); end
  def test_intermediate_output_c177; assert_equal("1B", worksheet.intermediate_output_c177); end
  def test_intermediate_output_d177; assert_equal("Fugitive Emissions from Fuels", worksheet.intermediate_output_d177); end
  def test_intermediate_output_g177; assert_in_epsilon(1.092662841022116, worksheet.intermediate_output_g177, 0.002); end
  def test_intermediate_output_h177; assert_in_epsilon(1.065615458948663, worksheet.intermediate_output_h177, 0.002); end
  def test_intermediate_output_i177; assert_in_epsilon(1.1932721305421006, worksheet.intermediate_output_i177, 0.002); end
  def test_intermediate_output_j177; assert_in_epsilon(1.3134084343915315, worksheet.intermediate_output_j177, 0.002); end
  def test_intermediate_output_k177; assert_in_epsilon(1.9451373020135574, worksheet.intermediate_output_k177, 0.002); end
  def test_intermediate_output_l177; assert_in_epsilon(2.092441070121342, worksheet.intermediate_output_l177, 0.002); end
  def test_intermediate_output_m177; assert_in_epsilon(2.695609649398731, worksheet.intermediate_output_m177, 0.002); end
  def test_intermediate_output_n177; assert_in_epsilon(3.258636625138732, worksheet.intermediate_output_n177, 0.002); end
  def test_intermediate_output_o177; assert_in_epsilon(3.5479042972890267, worksheet.intermediate_output_o177, 0.002); end
  def test_intermediate_output_p177; assert_in_epsilon(3.830009847106561, worksheet.intermediate_output_p177, 0.002); end
  def test_intermediate_output_c178; assert_in_delta(1.0, worksheet.intermediate_output_c178, 0.002); end
  def test_intermediate_output_d178; assert_equal("Fuel Combustion", worksheet.intermediate_output_d178); end
  def test_intermediate_output_g178; assert_in_epsilon(377.5818806566253, worksheet.intermediate_output_g178, 0.002); end
  def test_intermediate_output_h178; assert_in_epsilon(444.3589194433297, worksheet.intermediate_output_h178, 0.002); end
  def test_intermediate_output_i178; assert_in_epsilon(505.7481052359943, worksheet.intermediate_output_i178, 0.002); end
  def test_intermediate_output_j178; assert_in_epsilon(576.7856930702577, worksheet.intermediate_output_j178, 0.002); end
  def test_intermediate_output_k178; assert_in_epsilon(675.7087354181076, worksheet.intermediate_output_k178, 0.002); end
  def test_intermediate_output_l178; assert_in_epsilon(770.8763311275617, worksheet.intermediate_output_l178, 0.002); end
  def test_intermediate_output_m178; assert_in_epsilon(899.6841879475602, worksheet.intermediate_output_m178, 0.002); end
  def test_intermediate_output_n178; assert_in_epsilon(1023.243577972584, worksheet.intermediate_output_n178, 0.002); end
  def test_intermediate_output_o178; assert_in_epsilon(1182.5321573884264, worksheet.intermediate_output_o178, 0.002); end
  def test_intermediate_output_p178; assert_in_epsilon(1353.6765967975587, worksheet.intermediate_output_p178, 0.002); end
  def test_intermediate_output_c179; assert_in_epsilon(2.0, worksheet.intermediate_output_c179, 0.002); end
  def test_intermediate_output_d179; assert_equal("Industrial Processes", worksheet.intermediate_output_d179); end
  def test_intermediate_output_g179; assert_in_epsilon(37.648200571903196, worksheet.intermediate_output_g179, 0.002); end
  def test_intermediate_output_h179; assert_in_epsilon(37.63879106181394, worksheet.intermediate_output_h179, 0.002); end
  def test_intermediate_output_i179; assert_in_epsilon(38.80505393720839, worksheet.intermediate_output_i179, 0.002); end
  def test_intermediate_output_j179; assert_in_epsilon(40.08281578005542, worksheet.intermediate_output_j179, 0.002); end
  def test_intermediate_output_k179; assert_in_epsilon(43.96630542937146, worksheet.intermediate_output_k179, 0.002); end
  def test_intermediate_output_l179; assert_in_epsilon(46.131186033510566, worksheet.intermediate_output_l179, 0.002); end
  def test_intermediate_output_m179; assert_in_epsilon(50.33079502242729, worksheet.intermediate_output_m179, 0.002); end
  def test_intermediate_output_n179; assert_in_epsilon(45.992020857555914, worksheet.intermediate_output_n179, 0.002); end
  def test_intermediate_output_o179; assert_in_epsilon(49.69453752360138, worksheet.intermediate_output_o179, 0.002); end
  def test_intermediate_output_p179; assert_in_epsilon(47.020141432712606, worksheet.intermediate_output_p179, 0.002); end
  def test_intermediate_output_c180; assert_in_epsilon(3.0, worksheet.intermediate_output_c180, 0.002); end
  def test_intermediate_output_d180; assert_equal("Solvent and Other Product Use", worksheet.intermediate_output_d180); end
  def test_intermediate_output_g180; assert_in_delta(0.0, (worksheet.intermediate_output_g180||0), 0.002); end
  def test_intermediate_output_h180; assert_in_delta(0.0, (worksheet.intermediate_output_h180||0), 0.002); end
  def test_intermediate_output_i180; assert_in_delta(0.0, (worksheet.intermediate_output_i180||0), 0.002); end
  def test_intermediate_output_j180; assert_in_delta(0.0, (worksheet.intermediate_output_j180||0), 0.002); end
  def test_intermediate_output_k180; assert_in_delta(0.0, (worksheet.intermediate_output_k180||0), 0.002); end
  def test_intermediate_output_l180; assert_in_delta(0.0, (worksheet.intermediate_output_l180||0), 0.002); end
  def test_intermediate_output_m180; assert_in_delta(0.0, (worksheet.intermediate_output_m180||0), 0.002); end
  def test_intermediate_output_n180; assert_in_delta(0.0, (worksheet.intermediate_output_n180||0), 0.002); end
  def test_intermediate_output_o180; assert_in_delta(0.0, (worksheet.intermediate_output_o180||0), 0.002); end
  def test_intermediate_output_p180; assert_in_delta(0.0, (worksheet.intermediate_output_p180||0), 0.002); end
  def test_intermediate_output_c181; assert_in_epsilon(4.0, worksheet.intermediate_output_c181, 0.002); end
  def test_intermediate_output_d181; assert_equal("Agriculture", worksheet.intermediate_output_d181); end
  def test_intermediate_output_g181; assert_in_epsilon(43.61472600399361, worksheet.intermediate_output_g181, 0.002); end
  def test_intermediate_output_h181; assert_in_epsilon(43.04718167837683, worksheet.intermediate_output_h181, 0.002); end
  def test_intermediate_output_i181; assert_in_epsilon(41.90199190246045, worksheet.intermediate_output_i181, 0.002); end
  def test_intermediate_output_j181; assert_in_epsilon(41.83782031340011, worksheet.intermediate_output_j181, 0.002); end
  def test_intermediate_output_k181; assert_in_epsilon(39.37807908147248, worksheet.intermediate_output_k181, 0.002); end
  def test_intermediate_output_l181; assert_in_epsilon(37.1746324932571, worksheet.intermediate_output_l181, 0.002); end
  def test_intermediate_output_m181; assert_in_epsilon(35.19355555437035, worksheet.intermediate_output_m181, 0.002); end
  def test_intermediate_output_n181; assert_in_epsilon(33.407914155526825, worksheet.intermediate_output_n181, 0.002); end
  def test_intermediate_output_o181; assert_in_epsilon(31.795097738118187, worksheet.intermediate_output_o181, 0.002); end
  def test_intermediate_output_p181; assert_in_epsilon(30.335995837662693, worksheet.intermediate_output_p181, 0.002); end
  def test_intermediate_output_c182; assert_in_epsilon(5.0, worksheet.intermediate_output_c182, 0.002); end
  def test_intermediate_output_d182; assert_equal("Land Use, Land-Use Change and Forestry", worksheet.intermediate_output_d182); end
  def test_intermediate_output_g182; assert_in_epsilon(-25.241849417808073, worksheet.intermediate_output_g182, 0.002); end
  def test_intermediate_output_h182; assert_in_epsilon(-23.699770586662464, worksheet.intermediate_output_h182, 0.002); end
  def test_intermediate_output_i182; assert_in_epsilon(-21.534672047730453, worksheet.intermediate_output_i182, 0.002); end
  def test_intermediate_output_j182; assert_in_epsilon(-19.369573508798442, worksheet.intermediate_output_j182, 0.002); end
  def test_intermediate_output_k182; assert_in_epsilon(-18.694953990080784, worksheet.intermediate_output_k182, 0.002); end
  def test_intermediate_output_l182; assert_in_epsilon(-18.02033447136312, worksheet.intermediate_output_l182, 0.002); end
  def test_intermediate_output_m182; assert_in_epsilon(-17.34571495264546, worksheet.intermediate_output_m182, 0.002); end
  def test_intermediate_output_n182; assert_in_epsilon(-16.671095433927796, worksheet.intermediate_output_n182, 0.002); end
  def test_intermediate_output_o182; assert_in_epsilon(-15.996475915210132, worksheet.intermediate_output_o182, 0.002); end
  def test_intermediate_output_p182; assert_in_epsilon(-15.321856396492471, worksheet.intermediate_output_p182, 0.002); end
  def test_intermediate_output_c183; assert_in_epsilon(6.0, worksheet.intermediate_output_c183, 0.002); end
  def test_intermediate_output_d183; assert_equal("Waste", worksheet.intermediate_output_d183); end
  def test_intermediate_output_g183; assert_in_epsilon(2.623138104298895, worksheet.intermediate_output_g183, 0.002); end
  def test_intermediate_output_h183; assert_in_epsilon(7.015085640497572, worksheet.intermediate_output_h183, 0.002); end
  def test_intermediate_output_i183; assert_in_epsilon(11.921574502466903, worksheet.intermediate_output_i183, 0.002); end
  def test_intermediate_output_j183; assert_in_epsilon(16.236152840885765, worksheet.intermediate_output_j183, 0.002); end
  def test_intermediate_output_k183; assert_in_epsilon(20.155273938517077, worksheet.intermediate_output_k183, 0.002); end
  def test_intermediate_output_l183; assert_in_epsilon(23.77830831781407, worksheet.intermediate_output_l183, 0.002); end
  def test_intermediate_output_m183; assert_in_epsilon(27.186290446401184, worksheet.intermediate_output_m183, 0.002); end
  def test_intermediate_output_n183; assert_in_epsilon(30.448217619410688, worksheet.intermediate_output_n183, 0.002); end
  def test_intermediate_output_o183; assert_in_epsilon(33.69942871082754, worksheet.intermediate_output_o183, 0.002); end
  def test_intermediate_output_p183; assert_in_epsilon(36.87885777328626, worksheet.intermediate_output_p183, 0.002); end
  def test_intermediate_output_c184; assert_in_epsilon(7.0, worksheet.intermediate_output_c184, 0.002); end
  def test_intermediate_output_d184; assert_equal("Other", worksheet.intermediate_output_d184); end
  def test_intermediate_output_g184; assert_in_delta(0.0, (worksheet.intermediate_output_g184||0), 0.002); end
  def test_intermediate_output_h184; assert_in_delta(0.0, (worksheet.intermediate_output_h184||0), 0.002); end
  def test_intermediate_output_i184; assert_in_delta(0.0, (worksheet.intermediate_output_i184||0), 0.002); end
  def test_intermediate_output_j184; assert_in_delta(0.0, (worksheet.intermediate_output_j184||0), 0.002); end
  def test_intermediate_output_k184; assert_in_delta(0.0, (worksheet.intermediate_output_k184||0), 0.002); end
  def test_intermediate_output_l184; assert_in_delta(0.0, (worksheet.intermediate_output_l184||0), 0.002); end
  def test_intermediate_output_m184; assert_in_delta(0.0, (worksheet.intermediate_output_m184||0), 0.002); end
  def test_intermediate_output_n184; assert_in_delta(0.0, (worksheet.intermediate_output_n184||0), 0.002); end
  def test_intermediate_output_o184; assert_in_delta(0.0, (worksheet.intermediate_output_o184||0), 0.002); end
  def test_intermediate_output_p184; assert_in_delta(0.0, (worksheet.intermediate_output_p184||0), 0.002); end
  def test_intermediate_output_c185; assert_equal("X1", worksheet.intermediate_output_c185); end
  def test_intermediate_output_d185; assert_equal("International Aviation and Shipping", worksheet.intermediate_output_d185); end
  def test_intermediate_output_g185; assert_in_delta(0.0, (worksheet.intermediate_output_g185||0), 0.002); end
  def test_intermediate_output_h185; assert_in_delta(0.0, (worksheet.intermediate_output_h185||0), 0.002); end
  def test_intermediate_output_i185; assert_in_delta(0.0, (worksheet.intermediate_output_i185||0), 0.002); end
  def test_intermediate_output_j185; assert_in_delta(0.0, (worksheet.intermediate_output_j185||0), 0.002); end
  def test_intermediate_output_k185; assert_in_delta(0.0, (worksheet.intermediate_output_k185||0), 0.002); end
  def test_intermediate_output_l185; assert_in_delta(0.0, (worksheet.intermediate_output_l185||0), 0.002); end
  def test_intermediate_output_m185; assert_in_delta(0.0, (worksheet.intermediate_output_m185||0), 0.002); end
  def test_intermediate_output_n185; assert_in_delta(0.0, (worksheet.intermediate_output_n185||0), 0.002); end
  def test_intermediate_output_o185; assert_in_delta(0.0, (worksheet.intermediate_output_o185||0), 0.002); end
  def test_intermediate_output_p185; assert_in_delta(0.0, (worksheet.intermediate_output_p185||0), 0.002); end
  def test_intermediate_output_c186; assert_equal("X2", worksheet.intermediate_output_c186); end
  def test_intermediate_output_d186; assert_equal("Bioenergy credit", worksheet.intermediate_output_d186); end
  def test_intermediate_output_g186; assert_in_delta(0.0, (worksheet.intermediate_output_g186||0), 0.002); end
  def test_intermediate_output_h186; assert_in_delta(0.0, (worksheet.intermediate_output_h186||0), 0.002); end
  def test_intermediate_output_i186; assert_in_delta(0.0, (worksheet.intermediate_output_i186||0), 0.002); end
  def test_intermediate_output_j186; assert_in_delta(0.0, (worksheet.intermediate_output_j186||0), 0.002); end
  def test_intermediate_output_k186; assert_in_delta(0.0, (worksheet.intermediate_output_k186||0), 0.002); end
  def test_intermediate_output_l186; assert_in_delta(0.0, (worksheet.intermediate_output_l186||0), 0.002); end
  def test_intermediate_output_m186; assert_in_delta(0.0, (worksheet.intermediate_output_m186||0), 0.002); end
  def test_intermediate_output_n186; assert_in_delta(0.0, (worksheet.intermediate_output_n186||0), 0.002); end
  def test_intermediate_output_o186; assert_in_delta(0.0, (worksheet.intermediate_output_o186||0), 0.002); end
  def test_intermediate_output_p186; assert_in_delta(0.0, (worksheet.intermediate_output_p186||0), 0.002); end
  def test_intermediate_output_c187; assert_equal("X3", worksheet.intermediate_output_c187); end
  def test_intermediate_output_d187; assert_equal("Carbon capture", worksheet.intermediate_output_d187); end
  def test_intermediate_output_g187; assert_in_delta(0.0, (worksheet.intermediate_output_g187||0), 0.002); end
  def test_intermediate_output_h187; assert_in_delta(0.0, (worksheet.intermediate_output_h187||0), 0.002); end
  def test_intermediate_output_i187; assert_in_delta(0.0, (worksheet.intermediate_output_i187||0), 0.002); end
  def test_intermediate_output_j187; assert_in_epsilon(-1.0947005710981883, worksheet.intermediate_output_j187, 0.002); end
  def test_intermediate_output_k187; assert_in_epsilon(-1.0947005710981883, worksheet.intermediate_output_k187, 0.002); end
  def test_intermediate_output_l187; assert_in_epsilon(-1.0947005710981883, worksheet.intermediate_output_l187, 0.002); end
  def test_intermediate_output_m187; assert_in_epsilon(-1.0947005710981883, worksheet.intermediate_output_m187, 0.002); end
  def test_intermediate_output_n187; assert_in_epsilon(-1.0947005710981883, worksheet.intermediate_output_n187, 0.002); end
  def test_intermediate_output_o187; assert_in_epsilon(-1.0947005710981883, worksheet.intermediate_output_o187, 0.002); end
  def test_intermediate_output_p187; assert_in_epsilon(-1.0947005710981883, worksheet.intermediate_output_p187, 0.002); end
  def test_intermediate_output_d188; assert_equal("Total", worksheet.intermediate_output_d188); end
  def test_intermediate_output_f188; assert_in_delta(0.0, (worksheet.intermediate_output_f188||0), 0.002); end
  def test_intermediate_output_g188; assert_in_epsilon(436.22609591901295, worksheet.intermediate_output_g188, 0.002); end
  def test_intermediate_output_h188; assert_in_epsilon(508.36020723735555, worksheet.intermediate_output_h188, 0.002); end
  def test_intermediate_output_i188; assert_in_epsilon(576.8420535303994, worksheet.intermediate_output_i188, 0.002); end
  def test_intermediate_output_j188; assert_in_epsilon(654.4782079247024, worksheet.intermediate_output_j188, 0.002); end
  def test_intermediate_output_k188; assert_in_epsilon(759.4187393062897, worksheet.intermediate_output_k188, 0.002); end
  def test_intermediate_output_l188; assert_in_epsilon(858.8454229296822, worksheet.intermediate_output_l188, 0.002); end
  def test_intermediate_output_m188; assert_in_epsilon(993.9544134470153, worksheet.intermediate_output_m188, 0.002); end
  def test_intermediate_output_n188; assert_in_epsilon(1115.3259346000516, worksheet.intermediate_output_n188, 0.002); end
  def test_intermediate_output_o188; assert_in_epsilon(1280.6300448746651, worksheet.intermediate_output_o188, 0.002); end
  def test_intermediate_output_p188; assert_in_epsilon(1451.4950348736295, worksheet.intermediate_output_p188, 0.002); end
  def test_intermediate_output_c190; assert_equal("Excluding international bunkers", worksheet.intermediate_output_c190); end
  def test_intermediate_output_f190; assert_in_delta(0.0, (worksheet.intermediate_output_f190||0), 0.002); end
  def test_intermediate_output_g190; assert_in_epsilon(436.22609591901295, worksheet.intermediate_output_g190, 0.002); end
  def test_intermediate_output_h190; assert_in_epsilon(508.36020723735555, worksheet.intermediate_output_h190, 0.002); end
  def test_intermediate_output_i190; assert_in_epsilon(576.8420535303994, worksheet.intermediate_output_i190, 0.002); end
  def test_intermediate_output_j190; assert_in_epsilon(654.4782079247024, worksheet.intermediate_output_j190, 0.002); end
  def test_intermediate_output_k190; assert_in_epsilon(759.4187393062897, worksheet.intermediate_output_k190, 0.002); end
  def test_intermediate_output_l190; assert_in_epsilon(858.8454229296822, worksheet.intermediate_output_l190, 0.002); end
  def test_intermediate_output_m190; assert_in_epsilon(993.9544134470153, worksheet.intermediate_output_m190, 0.002); end
  def test_intermediate_output_n190; assert_in_epsilon(1115.3259346000516, worksheet.intermediate_output_n190, 0.002); end
  def test_intermediate_output_o190; assert_in_epsilon(1280.6300448746651, worksheet.intermediate_output_o190, 0.002); end
  def test_intermediate_output_p190; assert_in_epsilon(1451.4950348736295, worksheet.intermediate_output_p190, 0.002); end
  def test_intermediate_output_b194; assert_equal("Electricity Generation Emissions", worksheet.intermediate_output_b194); end
  def test_intermediate_output_c197; assert_equal("Emissions from Electricity Generation, exlcuding CHP", worksheet.intermediate_output_c197); end
  def test_intermediate_output_g197; assert_in_epsilon(2006.0, worksheet.intermediate_output_g197, 0.002); end
  def test_intermediate_output_h197; assert_equal("2010", worksheet.intermediate_output_h197); end
  def test_intermediate_output_i197; assert_equal("2015", worksheet.intermediate_output_i197); end
  def test_intermediate_output_j197; assert_equal("2020", worksheet.intermediate_output_j197); end
  def test_intermediate_output_k197; assert_equal("2025", worksheet.intermediate_output_k197); end
  def test_intermediate_output_l197; assert_equal("2030", worksheet.intermediate_output_l197); end
  def test_intermediate_output_m197; assert_equal("2035", worksheet.intermediate_output_m197); end
  def test_intermediate_output_n197; assert_equal("2040", worksheet.intermediate_output_n197); end
  def test_intermediate_output_o197; assert_equal("2045", worksheet.intermediate_output_o197); end
  def test_intermediate_output_p197; assert_equal("2050", worksheet.intermediate_output_p197); end
  def test_intermediate_output_c198; assert_equal("Power Generation", worksheet.intermediate_output_c198); end
  def test_intermediate_output_g198; assert_in_epsilon(235.37666606152874, worksheet.intermediate_output_g198, 0.002); end
  def test_intermediate_output_h198; assert_in_epsilon(285.40359745378123, worksheet.intermediate_output_h198, 0.002); end
  def test_intermediate_output_i198; assert_in_epsilon(322.52520062265995, worksheet.intermediate_output_i198, 0.002); end
  def test_intermediate_output_j198; assert_in_epsilon(368.05605060410085, worksheet.intermediate_output_j198, 0.002); end
  def test_intermediate_output_k198; assert_in_epsilon(432.4378422429402, worksheet.intermediate_output_k198, 0.002); end
  def test_intermediate_output_l198; assert_in_epsilon(495.1964983124568, worksheet.intermediate_output_l198, 0.002); end
  def test_intermediate_output_m198; assert_in_epsilon(577.0440529789958, worksheet.intermediate_output_m198, 0.002); end
  def test_intermediate_output_n198; assert_in_epsilon(659.0336586965923, worksheet.intermediate_output_n198, 0.002); end
  def test_intermediate_output_o198; assert_in_epsilon(766.0590974395177, worksheet.intermediate_output_o198, 0.002); end
  def test_intermediate_output_p198; assert_in_epsilon(891.6258536687769, worksheet.intermediate_output_p198, 0.002); end
  def test_intermediate_output_d199; assert_equal("CCS in Power", worksheet.intermediate_output_d199); end
  def test_intermediate_output_d200; assert_equal("Bioenergy in Gas Power", worksheet.intermediate_output_d200); end
  def test_intermediate_output_d201; assert_equal("Bioenergy in Solid BM Power", worksheet.intermediate_output_d201); end
  def test_intermediate_output_d202; assert_equal("Bioenergy in Solid HC CCS Power", worksheet.intermediate_output_d202); end
  def test_intermediate_output_d203; assert_equal("Bioenergy in Gas CCS Power", worksheet.intermediate_output_d203); end
  def test_intermediate_output_c204; assert_equal("Total Emissions from Power", worksheet.intermediate_output_c204); end
  def test_intermediate_output_g204; assert_in_epsilon(235.37666606152874, worksheet.intermediate_output_g204, 0.002); end
  def test_intermediate_output_h204; assert_in_epsilon(285.40359745378123, worksheet.intermediate_output_h204, 0.002); end
  def test_intermediate_output_i204; assert_in_epsilon(322.52520062265995, worksheet.intermediate_output_i204, 0.002); end
  def test_intermediate_output_j204; assert_in_epsilon(368.05605060410085, worksheet.intermediate_output_j204, 0.002); end
  def test_intermediate_output_k204; assert_in_epsilon(432.4378422429402, worksheet.intermediate_output_k204, 0.002); end
  def test_intermediate_output_l204; assert_in_epsilon(495.1964983124568, worksheet.intermediate_output_l204, 0.002); end
  def test_intermediate_output_m204; assert_in_epsilon(577.0440529789958, worksheet.intermediate_output_m204, 0.002); end
  def test_intermediate_output_n204; assert_in_epsilon(659.0336586965923, worksheet.intermediate_output_n204, 0.002); end
  def test_intermediate_output_o204; assert_in_epsilon(766.0590974395177, worksheet.intermediate_output_o204, 0.002); end
  def test_intermediate_output_p204; assert_in_epsilon(891.6258536687769, worksheet.intermediate_output_p204, 0.002); end
  def test_intermediate_output_c206; assert_equal("Emissions reclassified", worksheet.intermediate_output_c206); end
  def test_intermediate_output_g206; assert_in_epsilon(2006.0, worksheet.intermediate_output_g206, 0.002); end
  def test_intermediate_output_h206; assert_equal("2010", worksheet.intermediate_output_h206); end
  def test_intermediate_output_i206; assert_equal("2015", worksheet.intermediate_output_i206); end
  def test_intermediate_output_j206; assert_equal("2020", worksheet.intermediate_output_j206); end
  def test_intermediate_output_k206; assert_equal("2025", worksheet.intermediate_output_k206); end
  def test_intermediate_output_l206; assert_equal("2030", worksheet.intermediate_output_l206); end
  def test_intermediate_output_m206; assert_equal("2035", worksheet.intermediate_output_m206); end
  def test_intermediate_output_n206; assert_equal("2040", worksheet.intermediate_output_n206); end
  def test_intermediate_output_o206; assert_equal("2045", worksheet.intermediate_output_o206); end
  def test_intermediate_output_p206; assert_equal("2050", worksheet.intermediate_output_p206); end
  def test_intermediate_output_c207; assert_in_delta(1.0, worksheet.intermediate_output_c207, 0.002); end
  def test_intermediate_output_d207; assert_equal("Fuel Combustion", worksheet.intermediate_output_d207); end
  def test_intermediate_output_g207; assert_in_epsilon(235.37666606152874, worksheet.intermediate_output_g207, 0.002); end
  def test_intermediate_output_h207; assert_in_epsilon(285.40359745378123, worksheet.intermediate_output_h207, 0.002); end
  def test_intermediate_output_i207; assert_in_epsilon(322.52520062265995, worksheet.intermediate_output_i207, 0.002); end
  def test_intermediate_output_j207; assert_in_epsilon(368.05605060410085, worksheet.intermediate_output_j207, 0.002); end
  def test_intermediate_output_k207; assert_in_epsilon(432.4378422429402, worksheet.intermediate_output_k207, 0.002); end
  def test_intermediate_output_l207; assert_in_epsilon(495.1964983124568, worksheet.intermediate_output_l207, 0.002); end
  def test_intermediate_output_m207; assert_in_epsilon(577.0440529789958, worksheet.intermediate_output_m207, 0.002); end
  def test_intermediate_output_n207; assert_in_epsilon(659.0336586965923, worksheet.intermediate_output_n207, 0.002); end
  def test_intermediate_output_o207; assert_in_epsilon(766.0590974395177, worksheet.intermediate_output_o207, 0.002); end
  def test_intermediate_output_p207; assert_in_epsilon(891.6258536687769, worksheet.intermediate_output_p207, 0.002); end
  def test_intermediate_output_c208; assert_equal("X2", worksheet.intermediate_output_c208); end
  def test_intermediate_output_d208; assert_equal("Bioenergy credit", worksheet.intermediate_output_d208); end
  def test_intermediate_output_g208; assert_in_delta(0.0, (worksheet.intermediate_output_g208||0), 0.002); end
  def test_intermediate_output_h208; assert_in_delta(0.0, (worksheet.intermediate_output_h208||0), 0.002); end
  def test_intermediate_output_i208; assert_in_delta(0.0, (worksheet.intermediate_output_i208||0), 0.002); end
  def test_intermediate_output_j208; assert_in_delta(0.0, (worksheet.intermediate_output_j208||0), 0.002); end
  def test_intermediate_output_k208; assert_in_delta(0.0, (worksheet.intermediate_output_k208||0), 0.002); end
  def test_intermediate_output_l208; assert_in_delta(0.0, (worksheet.intermediate_output_l208||0), 0.002); end
  def test_intermediate_output_m208; assert_in_delta(0.0, (worksheet.intermediate_output_m208||0), 0.002); end
  def test_intermediate_output_n208; assert_in_delta(0.0, (worksheet.intermediate_output_n208||0), 0.002); end
  def test_intermediate_output_o208; assert_in_delta(0.0, (worksheet.intermediate_output_o208||0), 0.002); end
  def test_intermediate_output_p208; assert_in_delta(0.0, (worksheet.intermediate_output_p208||0), 0.002); end
  def test_intermediate_output_c209; assert_equal("X3", worksheet.intermediate_output_c209); end
  def test_intermediate_output_d209; assert_equal("Carbon capture", worksheet.intermediate_output_d209); end
  def test_intermediate_output_g209; assert_in_delta(0.0, (worksheet.intermediate_output_g209||0), 0.002); end
  def test_intermediate_output_h209; assert_in_delta(0.0, (worksheet.intermediate_output_h209||0), 0.002); end
  def test_intermediate_output_i209; assert_in_delta(0.0, (worksheet.intermediate_output_i209||0), 0.002); end
  def test_intermediate_output_j209; assert_in_delta(0.0, (worksheet.intermediate_output_j209||0), 0.002); end
  def test_intermediate_output_k209; assert_in_delta(0.0, (worksheet.intermediate_output_k209||0), 0.002); end
  def test_intermediate_output_l209; assert_in_delta(0.0, (worksheet.intermediate_output_l209||0), 0.002); end
  def test_intermediate_output_m209; assert_in_delta(0.0, (worksheet.intermediate_output_m209||0), 0.002); end
  def test_intermediate_output_n209; assert_in_delta(0.0, (worksheet.intermediate_output_n209||0), 0.002); end
  def test_intermediate_output_o209; assert_in_delta(0.0, (worksheet.intermediate_output_o209||0), 0.002); end
  def test_intermediate_output_p209; assert_in_delta(0.0, (worksheet.intermediate_output_p209||0), 0.002); end
  def test_intermediate_output_d210; assert_equal("Total", worksheet.intermediate_output_d210); end
  def test_intermediate_output_g210; assert_in_epsilon(235.37666606152874, worksheet.intermediate_output_g210, 0.002); end
  def test_intermediate_output_h210; assert_in_epsilon(285.40359745378123, worksheet.intermediate_output_h210, 0.002); end
  def test_intermediate_output_i210; assert_in_epsilon(322.52520062265995, worksheet.intermediate_output_i210, 0.002); end
  def test_intermediate_output_j210; assert_in_epsilon(368.05605060410085, worksheet.intermediate_output_j210, 0.002); end
  def test_intermediate_output_k210; assert_in_epsilon(432.4378422429402, worksheet.intermediate_output_k210, 0.002); end
  def test_intermediate_output_l210; assert_in_epsilon(495.1964983124568, worksheet.intermediate_output_l210, 0.002); end
  def test_intermediate_output_m210; assert_in_epsilon(577.0440529789958, worksheet.intermediate_output_m210, 0.002); end
  def test_intermediate_output_n210; assert_in_epsilon(659.0336586965923, worksheet.intermediate_output_n210, 0.002); end
  def test_intermediate_output_o210; assert_in_epsilon(766.0590974395177, worksheet.intermediate_output_o210, 0.002); end
  def test_intermediate_output_p210; assert_in_epsilon(891.6258536687769, worksheet.intermediate_output_p210, 0.002); end
  def test_intermediate_output_c212; assert_equal("Emissions intensity", worksheet.intermediate_output_c212); end
  def test_intermediate_output_e212; assert_equal("MtCO2e/TWh", worksheet.intermediate_output_e212); end
  def test_intermediate_output_g212; assert_in_delta(0.2640885403447061, worksheet.intermediate_output_g212, 0.002); end
  def test_intermediate_output_h212; assert_in_delta(0.27001574937476863, worksheet.intermediate_output_h212, 0.002); end
  def test_intermediate_output_i212; assert_in_delta(0.2599926875089752, worksheet.intermediate_output_i212, 0.002); end
  def test_intermediate_output_j212; assert_in_delta(0.25288560478960653, worksheet.intermediate_output_j212, 0.002); end
  def test_intermediate_output_k212; assert_in_delta(0.2519913529670974, worksheet.intermediate_output_k212, 0.002); end
  def test_intermediate_output_l212; assert_in_delta(0.2435406782026114, worksheet.intermediate_output_l212, 0.002); end
  def test_intermediate_output_m212; assert_in_delta(0.23699971287850163, worksheet.intermediate_output_m212, 0.002); end
  def test_intermediate_output_n212; assert_in_delta(0.2293457830767707, worksheet.intermediate_output_n212, 0.002); end
  def test_intermediate_output_o212; assert_in_delta(0.2291067491367049, worksheet.intermediate_output_o212, 0.002); end
  def test_intermediate_output_p212; assert_in_delta(0.23183384624230802, worksheet.intermediate_output_p212, 0.002); end
  def test_intermediate_output_e213; assert_equal("gCO2e/KWh", worksheet.intermediate_output_e213); end
  def test_intermediate_output_g213; assert_in_epsilon(264.0885403447061, worksheet.intermediate_output_g213, 0.002); end
  def test_intermediate_output_h213; assert_in_epsilon(270.01574937476863, worksheet.intermediate_output_h213, 0.002); end
  def test_intermediate_output_i213; assert_in_epsilon(259.9926875089752, worksheet.intermediate_output_i213, 0.002); end
  def test_intermediate_output_j213; assert_in_epsilon(252.88560478960653, worksheet.intermediate_output_j213, 0.002); end
  def test_intermediate_output_k213; assert_in_epsilon(251.9913529670974, worksheet.intermediate_output_k213, 0.002); end
  def test_intermediate_output_l213; assert_in_epsilon(243.54067820261142, worksheet.intermediate_output_l213, 0.002); end
  def test_intermediate_output_m213; assert_in_epsilon(236.99971287850164, worksheet.intermediate_output_m213, 0.002); end
  def test_intermediate_output_n213; assert_in_epsilon(229.3457830767707, worksheet.intermediate_output_n213, 0.002); end
  def test_intermediate_output_o213; assert_in_epsilon(229.1067491367049, worksheet.intermediate_output_o213, 0.002); end
  def test_intermediate_output_p213; assert_in_epsilon(231.83384624230803, worksheet.intermediate_output_p213, 0.002); end
  def test_intermediate_output_c215; assert_equal("Note: Emissions from CHP are excluded, while emissions from district heating are included.", worksheet.intermediate_output_c215); end
  def test_intermediate_output_b218; assert_equal("Primary supply, format for web-based interface", worksheet.intermediate_output_b218); end
  def test_intermediate_output_c220; assert_equal("N.01", worksheet.intermediate_output_c220); end
  def test_intermediate_output_d220; assert_equal("Nuclear fission", worksheet.intermediate_output_d220); end
  def test_intermediate_output_e220; assert_in_delta(0.0, (worksheet.intermediate_output_e220||0), 0.002); end
  def test_intermediate_output_f220; assert_in_delta(0.0, (worksheet.intermediate_output_f220||0), 0.002); end
  def test_intermediate_output_g220; assert_in_epsilon(110.05713000000002, worksheet.intermediate_output_g220, 0.002); end
  def test_intermediate_output_h220; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_h220, 0.002); end
  def test_intermediate_output_i220; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_i220, 0.002); end
  def test_intermediate_output_j220; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_j220, 0.002); end
  def test_intermediate_output_k220; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_k220, 0.002); end
  def test_intermediate_output_l220; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_l220, 0.002); end
  def test_intermediate_output_m220; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_m220, 0.002); end
  def test_intermediate_output_n220; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_n220, 0.002); end
  def test_intermediate_output_o220; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_o220, 0.002); end
  def test_intermediate_output_p220; assert_in_delta(0.0, (worksheet.intermediate_output_p220||0), 0.002); end
  def test_intermediate_output_c221; assert_equal("R.01", worksheet.intermediate_output_c221); end
  def test_intermediate_output_d221; assert_equal("Solar", worksheet.intermediate_output_d221); end
  def test_intermediate_output_e221; assert_in_delta(0.0, (worksheet.intermediate_output_e221||0), 0.002); end
  def test_intermediate_output_f221; assert_in_delta(0.0, (worksheet.intermediate_output_f221||0), 0.002); end
  def test_intermediate_output_g221; assert_in_delta(0.0, (worksheet.intermediate_output_g221||0), 0.002); end
  def test_intermediate_output_h221; assert_in_delta(0.08634159360000002, worksheet.intermediate_output_h221, 0.002); end
  def test_intermediate_output_i221; assert_in_epsilon(14.97932793820559, worksheet.intermediate_output_i221, 0.002); end
  def test_intermediate_output_j221; assert_in_epsilon(58.47144988677519, worksheet.intermediate_output_j221, 0.002); end
  def test_intermediate_output_k221; assert_in_epsilon(118.55487872874802, worksheet.intermediate_output_k221, 0.002); end
  def test_intermediate_output_l221; assert_in_epsilon(181.30123224814926, worksheet.intermediate_output_l221, 0.002); end
  def test_intermediate_output_m221; assert_in_epsilon(242.43605646185034, worksheet.intermediate_output_m221, 0.002); end
  def test_intermediate_output_n221; assert_in_epsilon(325.84100032677844, worksheet.intermediate_output_n221, 0.002); end
  def test_intermediate_output_o221; assert_in_epsilon(386.4945720198666, worksheet.intermediate_output_o221, 0.002); end
  def test_intermediate_output_p221; assert_in_epsilon(441.92457987412075, worksheet.intermediate_output_p221, 0.002); end
  def test_intermediate_output_c222; assert_equal("R.02", worksheet.intermediate_output_c222); end
  def test_intermediate_output_d222; assert_equal("Wind", worksheet.intermediate_output_d222); end
  def test_intermediate_output_e222; assert_in_delta(0.0, (worksheet.intermediate_output_e222||0), 0.002); end
  def test_intermediate_output_f222; assert_in_delta(0.0, (worksheet.intermediate_output_f222||0), 0.002); end
  def test_intermediate_output_g222; assert_in_delta(0.02592772416, worksheet.intermediate_output_g222, 0.002); end
  def test_intermediate_output_h222; assert_in_delta(0.06859359936, worksheet.intermediate_output_h222, 0.002); end
  def test_intermediate_output_i222; assert_in_epsilon(11.57035420224, worksheet.intermediate_output_i222, 0.002); end
  def test_intermediate_output_j222; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_j222, 0.002); end
  def test_intermediate_output_k222; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_k222, 0.002); end
  def test_intermediate_output_l222; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_l222, 0.002); end
  def test_intermediate_output_m222; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_m222, 0.002); end
  def test_intermediate_output_n222; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_n222, 0.002); end
  def test_intermediate_output_o222; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_o222, 0.002); end
  def test_intermediate_output_p222; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_p222, 0.002); end
  def test_intermediate_output_c223; assert_equal("R.06", worksheet.intermediate_output_c223); end
  def test_intermediate_output_d223; assert_equal("Hydro", worksheet.intermediate_output_d223); end
  def test_intermediate_output_e223; assert_in_delta(0.0, (worksheet.intermediate_output_e223||0), 0.002); end
  def test_intermediate_output_f223; assert_in_delta(0.0, (worksheet.intermediate_output_f223||0), 0.002); end
  def test_intermediate_output_g223; assert_in_epsilon(5.285898, worksheet.intermediate_output_g223, 0.002); end
  def test_intermediate_output_h223; assert_in_epsilon(5.285898, worksheet.intermediate_output_h223, 0.002); end
  def test_intermediate_output_i223; assert_in_epsilon(5.317455600000001, worksheet.intermediate_output_i223, 0.002); end
  def test_intermediate_output_j223; assert_in_epsilon(5.396349600000001, worksheet.intermediate_output_j223, 0.002); end
  def test_intermediate_output_k223; assert_in_epsilon(4.8440916, worksheet.intermediate_output_k223, 0.002); end
  def test_intermediate_output_l223; assert_in_epsilon(4.8440916, worksheet.intermediate_output_l223, 0.002); end
  def test_intermediate_output_m223; assert_in_epsilon(4.8440916, worksheet.intermediate_output_m223, 0.002); end
  def test_intermediate_output_n223; assert_in_epsilon(4.8440916, worksheet.intermediate_output_n223, 0.002); end
  def test_intermediate_output_o223; assert_in_epsilon(4.8440916, worksheet.intermediate_output_o223, 0.002); end
  def test_intermediate_output_p223; assert_in_epsilon(4.8440916, worksheet.intermediate_output_p223, 0.002); end
  def test_intermediate_output_c224; assert_equal("Y.02", worksheet.intermediate_output_c224); end
  def test_intermediate_output_d224; assert_equal("Electricity oversupply (imports)", worksheet.intermediate_output_d224); end
  def test_intermediate_output_e224; assert_in_delta(0.0, (worksheet.intermediate_output_e224||0), 0.002); end
  def test_intermediate_output_f224; assert_in_delta(0.0, (worksheet.intermediate_output_f224||0), 0.002); end
  def test_intermediate_output_g224; assert_in_delta(0.0, (worksheet.intermediate_output_g224||0), 0.002); end
  def test_intermediate_output_h224; assert_in_delta(0.0, (worksheet.intermediate_output_h224||0), 0.002); end
  def test_intermediate_output_i224; assert_in_delta(0.0, (worksheet.intermediate_output_i224||0), 0.002); end
  def test_intermediate_output_j224; assert_in_delta(0.0, (worksheet.intermediate_output_j224||0), 0.002); end
  def test_intermediate_output_k224; assert_in_delta(0.0, (worksheet.intermediate_output_k224||0), 0.002); end
  def test_intermediate_output_l224; assert_in_delta(0.0, (worksheet.intermediate_output_l224||0), 0.002); end
  def test_intermediate_output_m224; assert_in_delta(0.0, (worksheet.intermediate_output_m224||0), 0.002); end
  def test_intermediate_output_n224; assert_in_delta(0.0, (worksheet.intermediate_output_n224||0), 0.002); end
  def test_intermediate_output_o224; assert_in_delta(0.0, (worksheet.intermediate_output_o224||0), 0.002); end
  def test_intermediate_output_p224; assert_in_delta(0.0, (worksheet.intermediate_output_p224||0), 0.002); end
  def test_intermediate_output_c225; assert_equal("R.07", worksheet.intermediate_output_c225); end
  def test_intermediate_output_d225; assert_equal("Environmental heat", worksheet.intermediate_output_d225); end
  def test_intermediate_output_e225; assert_in_delta(0.0, (worksheet.intermediate_output_e225||0), 0.002); end
  def test_intermediate_output_f225; assert_in_delta(0.0, (worksheet.intermediate_output_f225||0), 0.002); end
  def test_intermediate_output_g225; assert_in_delta(0.0, (worksheet.intermediate_output_g225||0), 0.002); end
  def test_intermediate_output_h225; assert_in_delta(0.0, (worksheet.intermediate_output_h225||0), 0.002); end
  def test_intermediate_output_i225; assert_in_delta(0.0, (worksheet.intermediate_output_i225||0), 0.002); end
  def test_intermediate_output_j225; assert_in_delta(0.0, (worksheet.intermediate_output_j225||0), 0.002); end
  def test_intermediate_output_k225; assert_in_delta(0.0, (worksheet.intermediate_output_k225||0), 0.002); end
  def test_intermediate_output_l225; assert_in_delta(0.0, (worksheet.intermediate_output_l225||0), 0.002); end
  def test_intermediate_output_m225; assert_in_delta(0.0, (worksheet.intermediate_output_m225||0), 0.002); end
  def test_intermediate_output_n225; assert_in_delta(0.0, (worksheet.intermediate_output_n225||0), 0.002); end
  def test_intermediate_output_o225; assert_in_delta(0.0, (worksheet.intermediate_output_o225||0), 0.002); end
  def test_intermediate_output_p225; assert_in_delta(0.0, (worksheet.intermediate_output_p225||0), 0.002); end
  def test_intermediate_output_d226; assert_equal("Bioenergy", worksheet.intermediate_output_d226); end
  def test_intermediate_output_e226; assert_in_delta(0.0, (worksheet.intermediate_output_e226||0), 0.002); end
  def test_intermediate_output_f226; assert_in_delta(0.0, (worksheet.intermediate_output_f226||0), 0.002); end
  def test_intermediate_output_g226; assert_in_delta(0.4933915591403157, worksheet.intermediate_output_g226, 0.002); end
  def test_intermediate_output_h226; assert_in_epsilon(1.1707433853966898, worksheet.intermediate_output_h226, 0.002); end
  def test_intermediate_output_i226; assert_in_epsilon(3.129264525198214, worksheet.intermediate_output_i226, 0.002); end
  def test_intermediate_output_j226; assert_in_epsilon(5.418080568322371, worksheet.intermediate_output_j226, 0.002); end
  def test_intermediate_output_k226; assert_in_epsilon(8.305294717792817, worksheet.intermediate_output_k226, 0.002); end
  def test_intermediate_output_l226; assert_in_epsilon(11.891457265721982, worksheet.intermediate_output_l226, 0.002); end
  def test_intermediate_output_m226; assert_in_epsilon(16.300095295393366, worksheet.intermediate_output_m226, 0.002); end
  def test_intermediate_output_n226; assert_in_epsilon(21.761673308626534, worksheet.intermediate_output_n226, 0.002); end
  def test_intermediate_output_o226; assert_in_epsilon(28.54497500586531, worksheet.intermediate_output_o226, 0.002); end
  def test_intermediate_output_p226; assert_in_epsilon(36.90242193759567, worksheet.intermediate_output_p226, 0.002); end
  def test_intermediate_output_d227; assert_equal("Coal", worksheet.intermediate_output_d227); end
  def test_intermediate_output_e227; assert_in_delta(0.0, (worksheet.intermediate_output_e227||0), 0.002); end
  def test_intermediate_output_f227; assert_in_delta(0.0, (worksheet.intermediate_output_f227||0), 0.002); end
  def test_intermediate_output_g227; assert_in_epsilon(3828.1386874365517, worksheet.intermediate_output_g227, 0.002); end
  def test_intermediate_output_h227; assert_in_epsilon(4444.064277532254, worksheet.intermediate_output_h227, 0.002); end
  def test_intermediate_output_i227; assert_in_epsilon(4981.080156770106, worksheet.intermediate_output_i227, 0.002); end
  def test_intermediate_output_j227; assert_in_epsilon(5602.251042000064, worksheet.intermediate_output_j227, 0.002); end
  def test_intermediate_output_k227; assert_in_epsilon(6501.338248055366, worksheet.intermediate_output_k227, 0.002); end
  def test_intermediate_output_l227; assert_in_epsilon(7387.264788322718, worksheet.intermediate_output_l227, 0.002); end
  def test_intermediate_output_m227; assert_in_epsilon(8593.105097538122, worksheet.intermediate_output_m227, 0.002); end
  def test_intermediate_output_n227; assert_in_epsilon(9597.169358173773, worksheet.intermediate_output_n227, 0.002); end
  def test_intermediate_output_o227; assert_in_epsilon(11127.38511685538, worksheet.intermediate_output_o227, 0.002); end
  def test_intermediate_output_p227; assert_in_epsilon(12694.075383109057, worksheet.intermediate_output_p227, 0.002); end
  def test_intermediate_output_d228; assert_equal("Oil", worksheet.intermediate_output_d228); end
  def test_intermediate_output_e228; assert_in_delta(0.0, (worksheet.intermediate_output_e228||0), 0.002); end
  def test_intermediate_output_f228; assert_in_delta(0.0, (worksheet.intermediate_output_f228||0), 0.002); end
  def test_intermediate_output_g228; assert_in_epsilon(546.628373322753, worksheet.intermediate_output_g228, 0.002); end
  def test_intermediate_output_h228; assert_in_epsilon(673.982035242302, worksheet.intermediate_output_h228, 0.002); end
  def test_intermediate_output_i228; assert_in_epsilon(810.0456886608929, worksheet.intermediate_output_i228, 0.002); end
  def test_intermediate_output_j228; assert_in_epsilon(959.9818016469646, worksheet.intermediate_output_j228, 0.002); end
  def test_intermediate_output_k228; assert_in_epsilon(1033.3960937408597, worksheet.intermediate_output_k228, 0.002); end
  def test_intermediate_output_l228; assert_in_epsilon(1185.4364478681784, worksheet.intermediate_output_l228, 0.002); end
  def test_intermediate_output_m228; assert_in_epsilon(1283.28419764884, worksheet.intermediate_output_m228, 0.002); end
  def test_intermediate_output_n228; assert_in_epsilon(1459.7231176415985, worksheet.intermediate_output_n228, 0.002); end
  def test_intermediate_output_o228; assert_in_epsilon(1650.336333425027, worksheet.intermediate_output_o228, 0.002); end
  def test_intermediate_output_p228; assert_in_epsilon(1830.706604565673, worksheet.intermediate_output_p228, 0.002); end
  def test_intermediate_output_d229; assert_equal("Natural gas", worksheet.intermediate_output_d229); end
  def test_intermediate_output_e229; assert_in_delta(0.0, (worksheet.intermediate_output_e229||0), 0.002); end
  def test_intermediate_output_f229; assert_in_delta(0.0, (worksheet.intermediate_output_f229||0), 0.002); end
  def test_intermediate_output_g229; assert_in_epsilon(188.48270730017887, worksheet.intermediate_output_g229, 0.002); end
  def test_intermediate_output_h229; assert_in_epsilon(183.81707430966014, worksheet.intermediate_output_h229, 0.002); end
  def test_intermediate_output_i229; assert_in_epsilon(211.07717008895284, worksheet.intermediate_output_i229, 0.002); end
  def test_intermediate_output_j229; assert_in_epsilon(234.5559744075491, worksheet.intermediate_output_j229, 0.002); end
  def test_intermediate_output_k229; assert_in_epsilon(343.9636816934601, worksheet.intermediate_output_k229, 0.002); end
  def test_intermediate_output_l229; assert_in_epsilon(369.9805777206349, worksheet.intermediate_output_l229, 0.002); end
  def test_intermediate_output_m229; assert_in_epsilon(474.3493458136029, worksheet.intermediate_output_m229, 0.002); end
  def test_intermediate_output_n229; assert_in_epsilon(571.4857625131569, worksheet.intermediate_output_n229, 0.002); end
  def test_intermediate_output_o229; assert_in_epsilon(621.3963439824832, worksheet.intermediate_output_o229, 0.002); end
  def test_intermediate_output_p229; assert_in_epsilon(664.8515476860441, worksheet.intermediate_output_p229, 0.002); end
  def test_intermediate_output_d230; assert_equal("Total Primary Supply", worksheet.intermediate_output_d230); end
  def test_intermediate_output_e230; assert_in_delta(0.0, (worksheet.intermediate_output_e230||0), 0.002); end
  def test_intermediate_output_f230; assert_in_delta(0.0, (worksheet.intermediate_output_f230||0), 0.002); end
  def test_intermediate_output_g230; assert_in_epsilon(4654.293535342784, worksheet.intermediate_output_g230, 0.002); end
  def test_intermediate_output_h230; assert_in_epsilon(5427.440698662573, worksheet.intermediate_output_h230, 0.002); end
  def test_intermediate_output_i230; assert_in_epsilon(6161.845520785596, worksheet.intermediate_output_i230, 0.002); end
  def test_intermediate_output_j230; assert_in_epsilon(7013.310438079915, worksheet.intermediate_output_j230, 0.002); end
  def test_intermediate_output_k230; assert_in_epsilon(8157.638028506466, worksheet.intermediate_output_k230, 0.002); end
  def test_intermediate_output_l230; assert_in_epsilon(9287.954334995642, worksheet.intermediate_output_l230, 0.002); end
  def test_intermediate_output_m230; assert_in_epsilon(10761.55462432805, worksheet.intermediate_output_m230, 0.002); end
  def test_intermediate_output_n230; assert_in_epsilon(12128.060743534174, worksheet.intermediate_output_n230, 0.002); end
  def test_intermediate_output_o230; assert_in_epsilon(13966.237172858862, worksheet.intermediate_output_o230, 0.002); end
  def test_intermediate_output_p230; assert_in_epsilon(15676.75605374273, worksheet.intermediate_output_p230, 0.002); end
  def test_intermediate_output_d231; assert_equal("Imported energy", worksheet.intermediate_output_d231); end
  def test_intermediate_output_f231; assert_in_delta(0.0, (worksheet.intermediate_output_f231||0), 0.002); end
  def test_intermediate_output_g231; assert_in_epsilon(783.9532106229318, worksheet.intermediate_output_g231, 0.002); end
  def test_intermediate_output_h231; assert_in_epsilon(956.7834245519622, worksheet.intermediate_output_h231, 0.002); end
  def test_intermediate_output_i231; assert_in_epsilon(1138.4532217498459, worksheet.intermediate_output_i231, 0.002); end
  def test_intermediate_output_j231; assert_in_epsilon(1322.701296938034, worksheet.intermediate_output_j231, 0.002); end
  def test_intermediate_output_k231; assert_in_epsilon(1521.1440904343199, worksheet.intermediate_output_k231, 0.002); end
  def test_intermediate_output_l231; assert_in_epsilon(1699.2013405888135, worksheet.intermediate_output_l231, 0.002); end
  def test_intermediate_output_m231; assert_in_epsilon(1901.417858462443, worksheet.intermediate_output_m231, 0.002); end
  def test_intermediate_output_n231; assert_in_epsilon(2174.9931951547555, worksheet.intermediate_output_n231, 0.002); end
  def test_intermediate_output_o231; assert_in_epsilon(2415.5169924075103, worksheet.intermediate_output_o231, 0.002); end
  def test_intermediate_output_p231; assert_in_epsilon(2495.558152251717, worksheet.intermediate_output_p231, 0.002); end
  def test_intermediate_output_d233; assert_equal("Primary demand", worksheet.intermediate_output_d233); end
  def test_intermediate_output_f233; assert_in_delta(0.0, (worksheet.intermediate_output_f233||0), 0.002); end
  def test_intermediate_output_g233; assert_in_epsilon(4795.7014669560385, worksheet.intermediate_output_g233, 0.002); end
  def test_intermediate_output_h233; assert_in_epsilon(5577.006016418745, worksheet.intermediate_output_h233, 0.002); end
  def test_intermediate_output_i233; assert_in_epsilon(6325.113496207861, worksheet.intermediate_output_i233, 0.002); end
  def test_intermediate_output_j233; assert_in_epsilon(7174.612233754076, worksheet.intermediate_output_j233, 0.002); end
  def test_intermediate_output_k233; assert_in_epsilon(8290.316043065612, worksheet.intermediate_output_k233, 0.002); end
  def test_intermediate_output_l233; assert_in_epsilon(9435.315265639281, worksheet.intermediate_output_l233, 0.002); end
  def test_intermediate_output_m233; assert_in_epsilon(10939.492767558588, worksheet.intermediate_output_m233, 0.002); end
  def test_intermediate_output_n233; assert_in_epsilon(12334.969792395965, worksheet.intermediate_output_n233, 0.002); end
  def test_intermediate_output_o233; assert_in_epsilon(14193.03930226203, worksheet.intermediate_output_o233, 0.002); end
  def test_intermediate_output_p233; assert_in_epsilon(15924.04824545976, worksheet.intermediate_output_p233, 0.002); end
  def test_intermediate_output_b236; assert_equal("Electricity, format for web-based interface", worksheet.intermediate_output_b236); end
  def test_intermediate_output_c238; assert_equal("Electricity use by sector", worksheet.intermediate_output_c238); end
  def test_intermediate_output_g238; assert_in_epsilon(2006.0, worksheet.intermediate_output_g238, 0.002); end
  def test_intermediate_output_h238; assert_in_epsilon(2010.0, worksheet.intermediate_output_h238, 0.002); end
  def test_intermediate_output_i238; assert_in_epsilon(2015.0, worksheet.intermediate_output_i238, 0.002); end
  def test_intermediate_output_j238; assert_in_epsilon(2020.0, worksheet.intermediate_output_j238, 0.002); end
  def test_intermediate_output_k238; assert_in_epsilon(2025.0, worksheet.intermediate_output_k238, 0.002); end
  def test_intermediate_output_l238; assert_in_epsilon(2030.0, worksheet.intermediate_output_l238, 0.002); end
  def test_intermediate_output_m238; assert_in_epsilon(2035.0, worksheet.intermediate_output_m238, 0.002); end
  def test_intermediate_output_n238; assert_in_epsilon(2040.0, worksheet.intermediate_output_n238, 0.002); end
  def test_intermediate_output_o238; assert_in_epsilon(2045.0, worksheet.intermediate_output_o238, 0.002); end
  def test_intermediate_output_p238; assert_in_epsilon(2050.0, worksheet.intermediate_output_p238, 0.002); end
  def test_intermediate_output_q238; assert_equal("PJ", worksheet.intermediate_output_q238); end
  def test_intermediate_output_c239; assert_equal("V.01", worksheet.intermediate_output_c239); end
  def test_intermediate_output_c240; assert_equal("Res", worksheet.intermediate_output_c240); end
  def test_intermediate_output_d240; assert_equal("Residential", worksheet.intermediate_output_d240); end
  def test_intermediate_output_g240; assert_in_epsilon(151.361911292313, worksheet.intermediate_output_g240, 0.002); end
  def test_intermediate_output_h240; assert_in_epsilon(168.08779508377663, worksheet.intermediate_output_h240, 0.002); end
  def test_intermediate_output_i240; assert_in_epsilon(191.64077104024435, worksheet.intermediate_output_i240, 0.002); end
  def test_intermediate_output_j240; assert_in_epsilon(215.77902794099816, worksheet.intermediate_output_j240, 0.002); end
  def test_intermediate_output_k240; assert_in_epsilon(240.1296244266293, worksheet.intermediate_output_k240, 0.002); end
  def test_intermediate_output_l240; assert_in_epsilon(263.9346129398193, worksheet.intermediate_output_l240, 0.002); end
  def test_intermediate_output_m240; assert_in_epsilon(291.9179712235335, worksheet.intermediate_output_m240, 0.002); end
  def test_intermediate_output_n240; assert_in_epsilon(319.3355462281447, worksheet.intermediate_output_n240, 0.002); end
  def test_intermediate_output_o240; assert_in_epsilon(351.7416100988938, worksheet.intermediate_output_o240, 0.002); end
  def test_intermediate_output_p240; assert_in_epsilon(382.9655471912064, worksheet.intermediate_output_p240, 0.002); end
  def test_intermediate_output_c241; assert_equal("Com", worksheet.intermediate_output_c241); end
  def test_intermediate_output_d241; assert_equal("Commercial", worksheet.intermediate_output_d241); end
  def test_intermediate_output_g241; assert_in_epsilon(107.5932660569133, worksheet.intermediate_output_g241, 0.002); end
  def test_intermediate_output_h241; assert_in_epsilon(118.70825349227917, worksheet.intermediate_output_h241, 0.002); end
  def test_intermediate_output_i241; assert_in_epsilon(133.181701095028, worksheet.intermediate_output_i241, 0.002); end
  def test_intermediate_output_j241; assert_in_epsilon(151.65826665027606, worksheet.intermediate_output_j241, 0.002); end
  def test_intermediate_output_k241; assert_in_epsilon(173.92566321718158, worksheet.intermediate_output_k241, 0.002); end
  def test_intermediate_output_l241; assert_in_epsilon(201.65612528878268, worksheet.intermediate_output_l241, 0.002); end
  def test_intermediate_output_m241; assert_in_epsilon(237.81492554923543, worksheet.intermediate_output_m241, 0.002); end
  def test_intermediate_output_n241; assert_in_epsilon(278.0466674408933, worksheet.intermediate_output_n241, 0.002); end
  def test_intermediate_output_o241; assert_in_epsilon(320.4050730085742, worksheet.intermediate_output_o241, 0.002); end
  def test_intermediate_output_p241; assert_in_epsilon(366.36400390357056, worksheet.intermediate_output_p241, 0.002); end
  def test_intermediate_output_c242; assert_equal("Ind", worksheet.intermediate_output_c242); end
  def test_intermediate_output_d242; assert_equal("Industry", worksheet.intermediate_output_d242); end
  def test_intermediate_output_g242; assert_in_epsilon(420.195789614721, worksheet.intermediate_output_g242, 0.002); end
  def test_intermediate_output_h242; assert_in_epsilon(490.24315031241656, worksheet.intermediate_output_h242, 0.002); end
  def test_intermediate_output_i242; assert_in_epsilon(596.3425470061676, worksheet.intermediate_output_i242, 0.002); end
  def test_intermediate_output_j242; assert_in_epsilon(733.829151378504, worksheet.intermediate_output_j242, 0.002); end
  def test_intermediate_output_k242; assert_in_epsilon(900.9026774158084, worksheet.intermediate_output_k242, 0.002); end
  def test_intermediate_output_l242; assert_in_epsilon(1114.8558375058033, worksheet.intermediate_output_l242, 0.002); end
  def test_intermediate_output_m242; assert_in_epsilon(1383.4784848808067, worksheet.intermediate_output_m242, 0.002); end
  def test_intermediate_output_n242; assert_in_epsilon(1685.4158194265008, worksheet.intermediate_output_n242, 0.002); end
  def test_intermediate_output_o242; assert_in_epsilon(2003.7065605365333, worksheet.intermediate_output_o242, 0.002); end
  def test_intermediate_output_p242; assert_in_epsilon(2348.810650048444, worksheet.intermediate_output_p242, 0.002); end
  def test_intermediate_output_c243; assert_equal("Tra", worksheet.intermediate_output_c243); end
  def test_intermediate_output_d243; assert_equal("Transport", worksheet.intermediate_output_d243); end
  def test_intermediate_output_g243; assert_in_epsilon(8.202697987420844, worksheet.intermediate_output_g243, 0.002); end
  def test_intermediate_output_h243; assert_in_epsilon(8.376361432920111, worksheet.intermediate_output_h243, 0.002); end
  def test_intermediate_output_i243; assert_in_epsilon(9.312838685356418, worksheet.intermediate_output_i243, 0.002); end
  def test_intermediate_output_j243; assert_in_epsilon(10.375119891669765, worksheet.intermediate_output_j243, 0.002); end
  def test_intermediate_output_k243; assert_in_epsilon(11.634856518622602, worksheet.intermediate_output_k243, 0.002); end
  def test_intermediate_output_l243; assert_in_epsilon(13.109927457596456, worksheet.intermediate_output_l243, 0.002); end
  def test_intermediate_output_m243; assert_in_epsilon(14.658549024460601, worksheet.intermediate_output_m243, 0.002); end
  def test_intermediate_output_n243; assert_in_epsilon(16.338501749748556, worksheet.intermediate_output_n243, 0.002); end
  def test_intermediate_output_o243; assert_in_epsilon(18.09113531924638, worksheet.intermediate_output_o243, 0.002); end
  def test_intermediate_output_p243; assert_in_epsilon(19.967082084678466, worksheet.intermediate_output_p243, 0.002); end
  def test_intermediate_output_c244; assert_equal("Agl", worksheet.intermediate_output_c244); end
  def test_intermediate_output_d244; assert_equal("Agriculture and Land use", worksheet.intermediate_output_d244); end
  def test_intermediate_output_g244; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_g244, 0.002); end
  def test_intermediate_output_h244; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_h244, 0.002); end
  def test_intermediate_output_i244; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_i244, 0.002); end
  def test_intermediate_output_j244; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_j244, 0.002); end
  def test_intermediate_output_k244; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_k244, 0.002); end
  def test_intermediate_output_l244; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_l244, 0.002); end
  def test_intermediate_output_m244; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_m244, 0.002); end
  def test_intermediate_output_n244; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_n244, 0.002); end
  def test_intermediate_output_o244; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_o244, 0.002); end
  def test_intermediate_output_p244; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_p244, 0.002); end
  def test_intermediate_output_c245; assert_equal("Fos", worksheet.intermediate_output_c245); end
  def test_intermediate_output_d245; assert_equal("Fossil fuel production", worksheet.intermediate_output_d245); end
  def test_intermediate_output_g245; assert_in_epsilon(26.716009598057816, worksheet.intermediate_output_g245, 0.002); end
  def test_intermediate_output_h245; assert_in_epsilon(26.247098546385345, worksheet.intermediate_output_h245, 0.002); end
  def test_intermediate_output_i245; assert_in_epsilon(26.797395083727242, worksheet.intermediate_output_i245, 0.002); end
  def test_intermediate_output_j245; assert_in_epsilon(27.211064888404856, worksheet.intermediate_output_j245, 0.002); end
  def test_intermediate_output_k245; assert_in_epsilon(31.867532139598396, worksheet.intermediate_output_k245, 0.002); end
  def test_intermediate_output_l245; assert_in_epsilon(32.07214922812916, worksheet.intermediate_output_l245, 0.002); end
  def test_intermediate_output_m245; assert_in_epsilon(35.770372127843025, worksheet.intermediate_output_m245, 0.002); end
  def test_intermediate_output_n245; assert_in_epsilon(33.90540748759248, worksheet.intermediate_output_n245, 0.002); end
  def test_intermediate_output_o245; assert_in_epsilon(34.92860086095808, worksheet.intermediate_output_o245, 0.002); end
  def test_intermediate_output_p245; assert_in_epsilon(31.55729671813578, worksheet.intermediate_output_p245, 0.002); end
  def test_intermediate_output_d246; assert_equal("Total PJ", worksheet.intermediate_output_d246); end
  def test_intermediate_output_g246; assert_in_epsilon(734.8304470494259, worksheet.intermediate_output_g246, 0.002); end
  def test_intermediate_output_h246; assert_in_epsilon(832.4234313677779, worksheet.intermediate_output_h246, 0.002); end
  def test_intermediate_output_i246; assert_in_epsilon(978.0360254105235, worksheet.intermediate_output_i246, 0.002); end
  def test_intermediate_output_j246; assert_in_epsilon(1159.613403249853, worksheet.intermediate_output_j246, 0.002); end
  def test_intermediate_output_k246; assert_in_epsilon(1379.2211262178403, worksheet.intermediate_output_k246, 0.002); end
  def test_intermediate_output_l246; assert_in_epsilon(1646.389424920131, worksheet.intermediate_output_l246, 0.002); end
  def test_intermediate_output_m246; assert_in_epsilon(1984.4010753058794, worksheet.intermediate_output_m246, 0.002); end
  def test_intermediate_output_n246; assert_in_epsilon(2353.8027148328797, worksheet.intermediate_output_n246, 0.002); end
  def test_intermediate_output_o246; assert_in_epsilon(2749.6337523242055, worksheet.intermediate_output_o246, 0.002); end
  def test_intermediate_output_p246; assert_in_epsilon(3170.425352446035, worksheet.intermediate_output_p246, 0.002); end
  def test_intermediate_output_d247; assert_equal("GWh", worksheet.intermediate_output_d247); end
  def test_intermediate_output_g247; assert_in_epsilon(204119.56862484053, worksheet.intermediate_output_g247, 0.002); end
  def test_intermediate_output_h247; assert_in_epsilon(231228.73093549386, worksheet.intermediate_output_h247, 0.002); end
  def test_intermediate_output_i247; assert_in_epsilon(271676.6737251454, worksheet.intermediate_output_i247, 0.002); end
  def test_intermediate_output_j247; assert_in_epsilon(322114.8342360703, worksheet.intermediate_output_j247, 0.002); end
  def test_intermediate_output_k247; assert_in_epsilon(383116.97950495564, worksheet.intermediate_output_k247, 0.002); end
  def test_intermediate_output_l247; assert_in_epsilon(457330.3958111475, worksheet.intermediate_output_l247, 0.002); end
  def test_intermediate_output_m247; assert_in_epsilon(551222.5209182999, worksheet.intermediate_output_m247, 0.002); end
  def test_intermediate_output_n247; assert_in_epsilon(653834.0874535777, worksheet.intermediate_output_n247, 0.002); end
  def test_intermediate_output_o247; assert_in_epsilon(763787.1534233905, worksheet.intermediate_output_o247, 0.002); end
  def test_intermediate_output_p247; assert_in_epsilon(880673.7090127876, worksheet.intermediate_output_p247, 0.002); end
  def test_intermediate_output_c297; assert_equal("Summary output tables for graphs, web interface", worksheet.intermediate_output_c297); end
  def test_intermediate_output_f299; assert_equal("list of tables for graphs:", worksheet.intermediate_output_f299); end
  def test_intermediate_output_c300; assert_equal("[add output tables for electricity supply, story]", worksheet.intermediate_output_c300); end
  def test_intermediate_output_f301; assert_equal("Page 1 of www - energy", worksheet.intermediate_output_f301); end
  def test_intermediate_output_f302; assert_equal("Final energy demand", worksheet.intermediate_output_f302); end
  def test_intermediate_output_f303; assert_equal("primary energy supply", worksheet.intermediate_output_f303); end
  def test_intermediate_output_f304; assert_equal("national greenhouse gas emissions", worksheet.intermediate_output_f304); end
  def test_intermediate_output_f306; assert_equal("page 2 - electricity", worksheet.intermediate_output_f306); end
  def test_intermediate_output_f307; assert_equal("electricity demand by sector", worksheet.intermediate_output_f307); end
  def test_intermediate_output_f308; assert_equal("electricity supply by technology", worksheet.intermediate_output_f308); end
  def test_intermediate_output_f309; assert_equal("installed capacity by technology", worksheet.intermediate_output_f309); end
  def test_intermediate_output_f310; assert_equal("emissions from electricity sector", worksheet.intermediate_output_f310); end
  def test_intermediate_output_f312; assert_equal("Page 3 - energy security", worksheet.intermediate_output_f312); end
  def test_intermediate_output_f313; assert_equal("dependence on imported energy", worksheet.intermediate_output_f313); end
  def test_intermediate_output_f314; assert_equal("diversity of energy sources", worksheet.intermediate_output_f314); end
  def test_intermediate_output_f316; assert_equal("Page 5 - scenario description", worksheet.intermediate_output_f316); end
  def test_intermediate_output_f318; assert_equal("[need cohherent table with headings etc]", worksheet.intermediate_output_f318); end
  def test_intermediate_output_c321; assert_equal("Electricity supply by technology (GWh)", worksheet.intermediate_output_c321); end
  def test_intermediate_output_c323; assert_equal("notes", worksheet.intermediate_output_c323); end
  def test_intermediate_output_g323; assert_in_epsilon(2006.0, worksheet.intermediate_output_g323, 0.002); end
  def test_intermediate_output_h323; assert_equal("2010", worksheet.intermediate_output_h323); end
  def test_intermediate_output_i323; assert_equal("2015", worksheet.intermediate_output_i323); end
  def test_intermediate_output_j323; assert_equal("2020", worksheet.intermediate_output_j323); end
  def test_intermediate_output_k323; assert_equal("2025", worksheet.intermediate_output_k323); end
  def test_intermediate_output_l323; assert_equal("2030", worksheet.intermediate_output_l323); end
  def test_intermediate_output_m323; assert_equal("2035", worksheet.intermediate_output_m323); end
  def test_intermediate_output_n323; assert_equal("2040", worksheet.intermediate_output_n323); end
  def test_intermediate_output_o323; assert_equal("2045", worksheet.intermediate_output_o323); end
  def test_intermediate_output_p323; assert_equal("2050", worksheet.intermediate_output_p323); end
  def test_intermediate_output_f324; assert_equal("Coal power", worksheet.intermediate_output_f324); end
  def test_intermediate_output_g324; assert_in_epsilon(824.7142358557012, worksheet.intermediate_output_g324, 0.002); end
  def test_intermediate_output_h324; assert_in_epsilon(979.5018717201098, worksheet.intermediate_output_h324, 0.002); end
  def test_intermediate_output_i324; assert_in_epsilon(1130.9229237977195, worksheet.intermediate_output_i324, 0.002); end
  def test_intermediate_output_j324; assert_in_epsilon(1291.2412708769657, worksheet.intermediate_output_j324, 0.002); end
  def test_intermediate_output_k324; assert_in_epsilon(1492.3670923972422, worksheet.intermediate_output_k324, 0.002); end
  def test_intermediate_output_l324; assert_in_epsilon(1746.860175302783, worksheet.intermediate_output_l324, 0.002); end
  def test_intermediate_output_m324; assert_in_epsilon(2087.19182953909, worksheet.intermediate_output_m324, 0.002); end
  def test_intermediate_output_n324; assert_in_epsilon(2442.536186727299, worksheet.intermediate_output_n324, 0.002); end
  def test_intermediate_output_o324; assert_in_epsilon(2852.022897185728, worksheet.intermediate_output_o324, 0.002); end
  def test_intermediate_output_p324; assert_in_epsilon(3344.895596308811, worksheet.intermediate_output_p324, 0.002); end
  def test_intermediate_output_f325; assert_equal("Gas power", worksheet.intermediate_output_f325); end
  def test_intermediate_output_g325; assert_in_delta(0.28061017920000003, worksheet.intermediate_output_g325, 0.002); end
  def test_intermediate_output_h325; assert_in_delta(0.177182775, worksheet.intermediate_output_h325, 0.002); end
  def test_intermediate_output_i325; assert_in_epsilon(2.7572464123150686, worksheet.intermediate_output_i325, 0.002); end
  def test_intermediate_output_j325; assert_in_epsilon(3.513446381874432, worksheet.intermediate_output_j325, 0.002); end
  def test_intermediate_output_k325; assert_in_epsilon(3.691070458929227, worksheet.intermediate_output_k325, 0.002); end
  def test_intermediate_output_l325; assert_in_epsilon(3.77535915139498, worksheet.intermediate_output_l325, 0.002); end
  def test_intermediate_output_m325; assert_in_epsilon(3.77535915139498, worksheet.intermediate_output_m325, 0.002); end
  def test_intermediate_output_n325; assert_in_epsilon(3.77535915139498, worksheet.intermediate_output_n325, 0.002); end
  def test_intermediate_output_o325; assert_in_epsilon(3.77535915139498, worksheet.intermediate_output_o325, 0.002); end
  def test_intermediate_output_p325; assert_in_epsilon(1.2703168633949797, worksheet.intermediate_output_p325, 0.002); end
  def test_intermediate_output_f326; assert_equal("Nuclear", worksheet.intermediate_output_f326); end
  def test_intermediate_output_g326; assert_in_epsilon(35.218281600000005, worksheet.intermediate_output_g326, 0.002); end
  def test_intermediate_output_h326; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_h326, 0.002); end
  def test_intermediate_output_i326; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_i326, 0.002); end
  def test_intermediate_output_j326; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_j326, 0.002); end
  def test_intermediate_output_k326; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_k326, 0.002); end
  def test_intermediate_output_l326; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_l326, 0.002); end
  def test_intermediate_output_m326; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_m326, 0.002); end
  def test_intermediate_output_n326; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_n326, 0.002); end
  def test_intermediate_output_o326; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_o326, 0.002); end
  def test_intermediate_output_p326; assert_in_delta(0.0, (worksheet.intermediate_output_p326||0), 0.002); end
  def test_intermediate_output_f327; assert_equal("Wind", worksheet.intermediate_output_f327); end
  def test_intermediate_output_g327; assert_in_delta(0.02592772416, worksheet.intermediate_output_g327, 0.002); end
  def test_intermediate_output_h327; assert_in_delta(0.06859359936, worksheet.intermediate_output_h327, 0.002); end
  def test_intermediate_output_i327; assert_in_epsilon(11.57035420224, worksheet.intermediate_output_i327, 0.002); end
  def test_intermediate_output_j327; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_j327, 0.002); end
  def test_intermediate_output_k327; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_k327, 0.002); end
  def test_intermediate_output_l327; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_l327, 0.002); end
  def test_intermediate_output_m327; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_m327, 0.002); end
  def test_intermediate_output_n327; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_n327, 0.002); end
  def test_intermediate_output_o327; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_o327, 0.002); end
  def test_intermediate_output_p327; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_p327, 0.002); end
  def test_intermediate_output_f328; assert_equal("Hydro", worksheet.intermediate_output_f328); end
  def test_intermediate_output_g328; assert_in_epsilon(31.320918000000002, worksheet.intermediate_output_g328, 0.002); end
  def test_intermediate_output_h328; assert_in_epsilon(31.320918000000002, worksheet.intermediate_output_h328, 0.002); end
  def test_intermediate_output_i328; assert_in_epsilon(37.03284360000001, worksheet.intermediate_output_i328, 0.002); end
  def test_intermediate_output_j328; assert_in_epsilon(37.111737600000005, worksheet.intermediate_output_j328, 0.002); end
  def test_intermediate_output_k328; assert_in_epsilon(36.5594796, worksheet.intermediate_output_k328, 0.002); end
  def test_intermediate_output_l328; assert_in_epsilon(36.5594796, worksheet.intermediate_output_l328, 0.002); end
  def test_intermediate_output_m328; assert_in_epsilon(36.5594796, worksheet.intermediate_output_m328, 0.002); end
  def test_intermediate_output_n328; assert_in_epsilon(36.5594796, worksheet.intermediate_output_n328, 0.002); end
  def test_intermediate_output_o328; assert_in_epsilon(36.5594796, worksheet.intermediate_output_o328, 0.002); end
  def test_intermediate_output_p328; assert_in_epsilon(36.5594796, worksheet.intermediate_output_p328, 0.002); end
  def test_intermediate_output_f329; assert_equal("Solar", worksheet.intermediate_output_f329); end
  def test_intermediate_output_g329; assert_in_delta(0.0, (worksheet.intermediate_output_g329||0), 0.002); end
  def test_intermediate_output_h329; assert_in_delta(0.08634159360000002, worksheet.intermediate_output_h329, 0.002); end
  def test_intermediate_output_i329; assert_in_epsilon(14.97932793820559, worksheet.intermediate_output_i329, 0.002); end
  def test_intermediate_output_j329; assert_in_epsilon(58.47144988677519, worksheet.intermediate_output_j329, 0.002); end
  def test_intermediate_output_k329; assert_in_epsilon(118.55487872874802, worksheet.intermediate_output_k329, 0.002); end
  def test_intermediate_output_l329; assert_in_epsilon(181.30123224814926, worksheet.intermediate_output_l329, 0.002); end
  def test_intermediate_output_m329; assert_in_epsilon(242.43605646185034, worksheet.intermediate_output_m329, 0.002); end
  def test_intermediate_output_n329; assert_in_epsilon(325.84100032677844, worksheet.intermediate_output_n329, 0.002); end
  def test_intermediate_output_o329; assert_in_epsilon(386.4945720198666, worksheet.intermediate_output_o329, 0.002); end
  def test_intermediate_output_p329; assert_in_epsilon(441.92457987412075, worksheet.intermediate_output_p329, 0.002); end
  def test_intermediate_output_c330; assert_equal("NOTE - this is a separate line, superimposed on the other stacked area graph", worksheet.intermediate_output_c330); end
  def test_intermediate_output_f330; assert_equal("Demand", worksheet.intermediate_output_f330); end
  def test_intermediate_output_g330; assert_in_epsilon(891.5599733590611, worksheet.intermediate_output_g330, 0.002); end
  def test_intermediate_output_h330; assert_in_epsilon(1057.0795468944698, worksheet.intermediate_output_h330, 0.002); end
  def test_intermediate_output_i330; assert_in_epsilon(1240.9325364602746, worksheet.intermediate_output_i330, 0.002); end
  def test_intermediate_output_j330; assert_in_epsilon(1416.4188082770797, worksheet.intermediate_output_j330, 0.002); end
  def test_intermediate_output_k330; assert_in_epsilon(1617.1699958744116, worksheet.intermediate_output_k330, 0.002); end
  def test_intermediate_output_l330; assert_in_epsilon(1871.7473674724179, worksheet.intermediate_output_l330, 0.002); end
  def test_intermediate_output_m330; assert_in_epsilon(2212.079021708725, worksheet.intermediate_output_m330, 0.002); end
  def test_intermediate_output_n330; assert_in_epsilon(2567.423378896934, worksheet.intermediate_output_n330, 0.002); end
  def test_intermediate_output_o330; assert_in_epsilon(2976.910089355364, worksheet.intermediate_output_o330, 0.002); end
  def test_intermediate_output_p330; assert_in_epsilon(3421.2667653904464, worksheet.intermediate_output_p330, 0.002); end
  def test_intermediate_output_d342; assert_equal("nar", worksheet.intermediate_output_d342); end
  def test_intermediate_output_c343; assert_equal("Story", worksheet.intermediate_output_c343); end
  def test_intermediate_output_d343; assert_equal("Koeberg retires in 2048", worksheet.intermediate_output_d343); end
  def test_intermediate_output_d344; assert_equal("No coal power with CCS technology. Only the 124MW equivalent pilot operates by 2020.", worksheet.intermediate_output_d344); end
  def test_intermediate_output_d345; assert_equal("No new CCGT capacity", worksheet.intermediate_output_d345); end
  def test_intermediate_output_d346; assert_equal("Only REIPPP wind farms operate. About 1983MW. Capacity is replaced at the end of their lifespan.", worksheet.intermediate_output_d346); end
  def test_intermediate_output_d347; assert_equal("All residential homes have a solar PV system by 2050. Commercial sector solar PV adoption rate is 10% (about 20GW by 2050)", worksheet.intermediate_output_d347); end
  def test_intermediate_output_d348; assert_equal("Only 400MW from the REIPPP program is built and operates. Capacity is assumed to be replaced at end of life. ", worksheet.intermediate_output_d348); end
  def test_intermediate_output_d349; assert_equal("Only REIPPP solar PV capcity is built. A total of 1448MW is built and operates by 2015. Capacity assumed to be replaced at end of life. ", worksheet.intermediate_output_d349); end
  def test_intermediate_output_d350; assert_equal("Only 670MW of local and 1500MW of imported Hydro capacity is utilised. ", worksheet.intermediate_output_d350); end
  def test_intermediate_output_d351; assert_equal("1.4% of cropland is used to produce biofuels", worksheet.intermediate_output_d351); end
  def test_intermediate_output_d352; assert_equal("The commercial dairy cow population grows slightly from 0,8 million in 2006 to 1.4 million by 2050. This is an annual growth of 1.7%.", worksheet.intermediate_output_d352); end
  def test_intermediate_output_d353; assert_equal("1.4% of cropland is used to produce biofuels", worksheet.intermediate_output_d353); end
  def test_intermediate_output_d354; assert_equal("10% of waste is recycled, 90% goes to land fill. Only 10% of methane gas from landfill  is captured, 75% of which is used to produce energy (the remaining is flurred)", worksheet.intermediate_output_d354); end
  def test_intermediate_output_d355; assert_equal(:value, worksheet.intermediate_output_d355); end
  def test_intermediate_output_d356; assert_equal("Continue to import from Mozambique. Some production from Mossel Bay.", worksheet.intermediate_output_d356); end
  def test_intermediate_output_d357; assert_equal("No share specified. Production  occurs ad hoc.", worksheet.intermediate_output_d357); end
  def test_intermediate_output_d358; assert_equal("Decomissioning of facilities by 2040 to a 50% reduction by 2050.", worksheet.intermediate_output_d358); end
  def test_intermediate_output_d359; assert_equal("Existing gas feedstock share of 3% in CTL process.", worksheet.intermediate_output_d359); end
  def test_intermediate_output_d360; assert_equal("No CCS", worksheet.intermediate_output_d360); end
  def test_intermediate_output_d361; assert_equal("Tripling of existing capacity by 2035 which is quadrupled by 2040 with no further expansion.", worksheet.intermediate_output_d361); end
  def test_intermediate_output_d362; assert_equal("Approximate doubling  of capacity by 2035 with no further expansion.", worksheet.intermediate_output_d362); end
  def test_intermediate_output_d363; assert_equal("demand", worksheet.intermediate_output_d363); end
  def test_intermediate_output_d364; assert_equal("Share of passenger kilometres met by public transport will be 24% by 2050", worksheet.intermediate_output_d364); end
  def test_intermediate_output_d365; assert_equal("Nothing is done to change the landscape of our cities, as such there is no energy demand reduction.  ", worksheet.intermediate_output_d365); end
  def test_intermediate_output_d366; assert_equal("There is no introduction of  hydrogen and compressed natural gas. 5% of private vehicles sold in 2050 are hybrids and a mere 1% is purely battery powered electric vehicles", worksheet.intermediate_output_d366); end
  def test_intermediate_output_d367; assert_equal("It is assumed that 0.1% of efficiency will be gained annually, resulting in overall efficiency gain of 4%  by 2050.", worksheet.intermediate_output_d367); end
  def test_intermediate_output_d368; assert_equal("No changes to vehicle occupancy", worksheet.intermediate_output_d368); end
  def test_intermediate_output_d369; assert_equal("the proportion of ton-km serviced by road vs rail transportation stays at 70% and 30% respectively by 2050. ", worksheet.intermediate_output_d369); end
  def test_intermediate_output_d370; assert_equal("No vehicle efficiency and operational efficiency are assumed until 2050.\r\n", worksheet.intermediate_output_d370); end
  def test_intermediate_output_d371; assert_equal("100% by 2050 for everyone", worksheet.intermediate_output_d371); end
  def test_intermediate_output_d372; assert_equal("As is in 2006. Lights are mainly incandescent or flourescent. Wtaer heating is coal or wood for the poor and mainly electric for mid to high income.", worksheet.intermediate_output_d372); end
  def test_intermediate_output_d373; assert_equal("As is in 2006. Most heaters are electric. Poorer households use coal or wood for heating. Cooking is mostly electric, except for low income households who use wood or coal stoves. ", worksheet.intermediate_output_d373); end
  def test_intermediate_output_d374; assert_equal("As is today", worksheet.intermediate_output_d374); end
  def test_intermediate_output_d375; assert_equal("Reduction in electricity and fuel consumption by 1%.", worksheet.intermediate_output_d375); end
  def test_intermediate_output_d376; assert_equal("Existing fuel mix comprising an approximate gas share of 10% and no waste.", worksheet.intermediate_output_d376); end
  def test_intermediate_output_d377; assert_equal("Existing facilities with no further expansion", worksheet.intermediate_output_d377); end
  def test_intermediate_output_d378; assert_equal("No change in energy usage for water treatment.", worksheet.intermediate_output_d378); end
  def test_intermediate_output_d379; assert_equal("3% energy reduction as per today's trend in heating and cooling requirements. No change to LEDs.", worksheet.intermediate_output_d379); end
  def test_intermediate_output_d380; assert_equal("Assumes no change in appliance/device  mix.", worksheet.intermediate_output_d380); end
  def test_intermediate_output_d381; assert_equal("Buildings built after 2015 are 15% more efficient than in 2006.", worksheet.intermediate_output_d381); end
  def test_intermediate_output_d387; assert_equal("Households in 2050", worksheet.intermediate_output_d387); end
  def test_intermediate_output_b451; assert_equal("h1", worksheet.intermediate_output_b451); end
  def test_intermediate_output_c451; assert_equal("Energy Supply", worksheet.intermediate_output_c451); end
  def test_intermediate_output_b452; assert_equal("h2", worksheet.intermediate_output_b452); end
  def test_intermediate_output_c452; assert_equal("Electricity generation", worksheet.intermediate_output_c452); end
  def test_intermediate_output_b453; assert_equal("h3", worksheet.intermediate_output_b453); end
  def test_intermediate_output_c453; assert_equal("Nuclear power stations", worksheet.intermediate_output_c453); end
  def test_intermediate_output_d453; assert_equal("Koeberg retires in 2048", worksheet.intermediate_output_d453); end
  def test_intermediate_output_b454; assert_equal("h3", worksheet.intermediate_output_b454); end
  def test_intermediate_output_c454; assert_equal("Coal with Carbon Capture and Storage", worksheet.intermediate_output_c454); end
  def test_intermediate_output_d454; assert_equal("No coal power with CCS technology. Only the 124MW equivalent pilot operates by 2020.", worksheet.intermediate_output_d454); end
  def test_intermediate_output_b455; assert_equal("h3", worksheet.intermediate_output_b455); end
  def test_intermediate_output_c455; assert_equal("Natural Gas Turbines", worksheet.intermediate_output_c455); end
  def test_intermediate_output_d455; assert_equal("No new CCGT capacity", worksheet.intermediate_output_d455); end
  def test_intermediate_output_b456; assert_equal("h3", worksheet.intermediate_output_b456); end
  def test_intermediate_output_c456; assert_equal("Onshore wind", worksheet.intermediate_output_c456); end
  def test_intermediate_output_d456; assert_equal("Only REIPPP wind farms operate. About 1983MW. Capacity is replaced at the end of their lifespan.", worksheet.intermediate_output_d456); end
  def test_intermediate_output_b457; assert_equal("h3", worksheet.intermediate_output_b457); end
  def test_intermediate_output_c457; assert_equal("Residential and commercial Solar PV", worksheet.intermediate_output_c457); end
  def test_intermediate_output_d457; assert_equal("All residential homes have a solar PV system by 2050. Commercial sector solar PV adoption rate is 10% (about 20GW by 2050)", worksheet.intermediate_output_d457); end
  def test_intermediate_output_b458; assert_equal("h3", worksheet.intermediate_output_b458); end
  def test_intermediate_output_c458; assert_equal("Concentrated Solar Power", worksheet.intermediate_output_c458); end
  def test_intermediate_output_d458; assert_equal("Only 400MW from the REIPPP program is built and operates. Capacity is assumed to be replaced at end of life. ", worksheet.intermediate_output_d458); end
  def test_intermediate_output_b459; assert_equal("h3", worksheet.intermediate_output_b459); end
  def test_intermediate_output_c459; assert_equal("Centralised PV", worksheet.intermediate_output_c459); end
  def test_intermediate_output_d459; assert_equal("Only REIPPP solar PV capcity is built. A total of 1448MW is built and operates by 2015. Capacity assumed to be replaced at end of life. ", worksheet.intermediate_output_d459); end
  def test_intermediate_output_b460; assert_equal("h3", worksheet.intermediate_output_b460); end
  def test_intermediate_output_c460; assert_equal("Hydroelectric power stations", worksheet.intermediate_output_c460); end
  def test_intermediate_output_d460; assert_equal("Only 670MW of local and 1500MW of imported Hydro capacity is utilised. ", worksheet.intermediate_output_d460); end
  def test_intermediate_output_b461; assert_equal("h3", worksheet.intermediate_output_b461); end
  def test_intermediate_output_c461; assert_equal("Carbon Capture and Storage", worksheet.intermediate_output_c461); end
  def test_intermediate_output_d461; assert_equal("No CCS", worksheet.intermediate_output_d461); end
  def test_intermediate_output_b462; assert_equal("h2", worksheet.intermediate_output_b462); end
  def test_intermediate_output_c462; assert_equal("Liquid Fuels supply", worksheet.intermediate_output_c462); end
  def test_intermediate_output_b463; assert_equal("h3", worksheet.intermediate_output_b463); end
  def test_intermediate_output_c463; assert_equal("Biofuels", worksheet.intermediate_output_c463); end
  def test_intermediate_output_d463; assert_equal("1.4% of cropland is used to produce biofuels", worksheet.intermediate_output_d463); end
  def test_intermediate_output_b464; assert_equal("h3", worksheet.intermediate_output_b464); end
  def test_intermediate_output_c464; assert_in_delta(0.0, (worksheet.intermediate_output_c464||0), 0.002); end
  def test_intermediate_output_d464; assert_equal(:value, worksheet.intermediate_output_d464); end
  def test_intermediate_output_b465; assert_equal("h3", worksheet.intermediate_output_b465); end
  def test_intermediate_output_c465; assert_equal("Liquid biofuel share", worksheet.intermediate_output_c465); end
  def test_intermediate_output_d465; assert_equal("No share specified. Production  occurs ad hoc.", worksheet.intermediate_output_d465); end
  def test_intermediate_output_b466; assert_equal("h3", worksheet.intermediate_output_b466); end
  def test_intermediate_output_c466; assert_equal("Coal-To-Liquids capacity", worksheet.intermediate_output_c466); end
  def test_intermediate_output_d466; assert_equal("Decomissioning of facilities by 2040 to a 50% reduction by 2050.", worksheet.intermediate_output_d466); end
  def test_intermediate_output_b467; assert_equal("h3", worksheet.intermediate_output_b467); end
  def test_intermediate_output_c467; assert_equal("Gas material share", worksheet.intermediate_output_c467); end
  def test_intermediate_output_d467; assert_equal("Existing gas feedstock share of 3% in CTL process.", worksheet.intermediate_output_d467); end
  def test_intermediate_output_b468; assert_equal("h3", worksheet.intermediate_output_b468); end
  def test_intermediate_output_c468; assert_equal("Gas-To-Liquids capacity", worksheet.intermediate_output_c468); end
  def test_intermediate_output_d468; assert_equal("Tripling of existing capacity by 2035 which is quadrupled by 2040 with no further expansion.", worksheet.intermediate_output_d468); end
  def test_intermediate_output_b469; assert_equal("h3", worksheet.intermediate_output_b469); end
  def test_intermediate_output_c469; assert_equal("Refinery capacity", worksheet.intermediate_output_c469); end
  def test_intermediate_output_d469; assert_equal("Approximate doubling  of capacity by 2035 with no further expansion.", worksheet.intermediate_output_d469); end
  def test_intermediate_output_b470; assert_equal("h2", worksheet.intermediate_output_b470); end
  def test_intermediate_output_c470; assert_equal("Natural Gas supply", worksheet.intermediate_output_c470); end
  def test_intermediate_output_b471; assert_equal("h3", worksheet.intermediate_output_b471); end
  def test_intermediate_output_c471; assert_equal("Supply of natural gas", worksheet.intermediate_output_c471); end
  def test_intermediate_output_d471; assert_equal("Continue to import from Mozambique. Some production from Mossel Bay.", worksheet.intermediate_output_d471); end
  def test_intermediate_output_b472; assert_equal("h1", worksheet.intermediate_output_b472); end
  def test_intermediate_output_c472; assert_equal("Energy Demand", worksheet.intermediate_output_c472); end
  def test_intermediate_output_b473; assert_equal("h2", worksheet.intermediate_output_b473); end
  def test_intermediate_output_c473; assert_equal("Households", worksheet.intermediate_output_c473); end
  def test_intermediate_output_b474; assert_equal("h3", worksheet.intermediate_output_b474); end
  def test_intermediate_output_c474; assert_equal("Electrification of households across South Africa", worksheet.intermediate_output_c474); end
  def test_intermediate_output_d474; assert_equal("100% by 2050 for everyone", worksheet.intermediate_output_d474); end
  def test_intermediate_output_b475; assert_equal("h3", worksheet.intermediate_output_b475); end
  def test_intermediate_output_c475; assert_equal("Lighting, Water heating, Appliances", worksheet.intermediate_output_c475); end
  def test_intermediate_output_d475; assert_equal("As is in 2006. Lights are mainly incandescent or flourescent. Wtaer heating is coal or wood for the poor and mainly electric for mid to high income.", worksheet.intermediate_output_d475); end
  def test_intermediate_output_b476; assert_equal("h3", worksheet.intermediate_output_b476); end
  def test_intermediate_output_c476; assert_equal("Space heating, Refridgeration, cooking", worksheet.intermediate_output_c476); end
  def test_intermediate_output_d476; assert_equal("As is in 2006. Most heaters are electric. Poorer households use coal or wood for heating. Cooking is mostly electric, except for low income households who use wood or coal stoves. ", worksheet.intermediate_output_d476); end
  def test_intermediate_output_b477; assert_equal("h3", worksheet.intermediate_output_b477); end
  def test_intermediate_output_c477; assert_equal("SWH scenario", worksheet.intermediate_output_c477); end
  def test_intermediate_output_d477; assert_equal("As is today", worksheet.intermediate_output_d477); end
  def test_intermediate_output_b478; assert_equal("h2", worksheet.intermediate_output_b478); end
  def test_intermediate_output_c478; assert_equal("Industry", worksheet.intermediate_output_c478); end
  def test_intermediate_output_b479; assert_equal("h3", worksheet.intermediate_output_b479); end
  def test_intermediate_output_c479; assert_equal("Energy efficiency", worksheet.intermediate_output_c479); end
  def test_intermediate_output_d479; assert_equal("Reduction in electricity and fuel consumption by 1%.", worksheet.intermediate_output_d479); end
  def test_intermediate_output_b480; assert_equal("h3", worksheet.intermediate_output_b480); end
  def test_intermediate_output_c480; assert_equal("Fuel migration to gas and waste for boilers and furnaces", worksheet.intermediate_output_c480); end
  def test_intermediate_output_d480; assert_equal("Existing fuel mix comprising an approximate gas share of 10% and no waste.", worksheet.intermediate_output_d480); end
  def test_intermediate_output_b481; assert_equal("h3", worksheet.intermediate_output_b481); end
  def test_intermediate_output_c481; assert_equal("CHP share of demand above base year", worksheet.intermediate_output_c481); end
  def test_intermediate_output_d481; assert_equal("Existing facilities with no further expansion", worksheet.intermediate_output_d481); end
  def test_intermediate_output_b482; assert_equal("h2", worksheet.intermediate_output_b482); end
  def test_intermediate_output_c482; assert_equal("Commercial", worksheet.intermediate_output_c482); end
  def test_intermediate_output_b483; assert_equal("h3", worksheet.intermediate_output_b483); end
  def test_intermediate_output_c483; assert_equal("Public Services", worksheet.intermediate_output_c483); end
  def test_intermediate_output_d483; assert_equal("No change in energy usage for water treatment.", worksheet.intermediate_output_d483); end
  def test_intermediate_output_b484; assert_equal("h3", worksheet.intermediate_output_b484); end
  def test_intermediate_output_c484; assert_equal("Building Retrofits for HVAC ", worksheet.intermediate_output_c484); end
  def test_intermediate_output_d484; assert_equal("3% energy reduction as per today's trend in heating and cooling requirements. No change to LEDs.", worksheet.intermediate_output_d484); end
  def test_intermediate_output_b485; assert_equal("h3", worksheet.intermediate_output_b485); end
  def test_intermediate_output_c485; assert_equal("Building tech shares mix", worksheet.intermediate_output_c485); end
  def test_intermediate_output_d485; assert_equal("Assumes no change in appliance/device  mix.", worksheet.intermediate_output_d485); end
  def test_intermediate_output_b486; assert_equal("h3", worksheet.intermediate_output_b486); end
  def test_intermediate_output_c486; assert_equal("New Building code Strength", worksheet.intermediate_output_c486); end
  def test_intermediate_output_d486; assert_equal("Buildings built after 2015 are 15% more efficient than in 2006.", worksheet.intermediate_output_d486); end
  def test_intermediate_output_b487; assert_equal("h2", worksheet.intermediate_output_b487); end
  def test_intermediate_output_c487; assert_equal("Transport", worksheet.intermediate_output_c487); end
  def test_intermediate_output_b488; assert_equal("h3", worksheet.intermediate_output_b488); end
  def test_intermediate_output_c488; assert_equal(" Behaviour Change(%)", worksheet.intermediate_output_c488); end
  def test_intermediate_output_d488; assert_equal("Share of passenger kilometres met by public transport will be 24% by 2050", worksheet.intermediate_output_d488); end
  def test_intermediate_output_b489; assert_equal("h3", worksheet.intermediate_output_b489); end
  def test_intermediate_output_c489; assert_equal("Reduced travel demand", worksheet.intermediate_output_c489); end
  def test_intermediate_output_d489; assert_equal("Nothing is done to change the landscape of our cities, as such there is no energy demand reduction.  ", worksheet.intermediate_output_d489); end
  def test_intermediate_output_b490; assert_equal("h3", worksheet.intermediate_output_b490); end
  def test_intermediate_output_c490; assert_equal("Shift to lower emissions technologies", worksheet.intermediate_output_c490); end
  def test_intermediate_output_d490; assert_equal("There is no introduction of  hydrogen and compressed natural gas. 5% of private vehicles sold in 2050 are hybrids and a mere 1% is purely battery powered electric vehicles", worksheet.intermediate_output_d490); end
  def test_intermediate_output_b491; assert_equal("h3", worksheet.intermediate_output_b491); end
  def test_intermediate_output_c491; assert_equal("Vehicle efficiency improvement", worksheet.intermediate_output_c491); end
  def test_intermediate_output_d491; assert_equal("It is assumed that 0.1% of efficiency will be gained annually, resulting in overall efficiency gain of 4%  by 2050.", worksheet.intermediate_output_d491); end
  def test_intermediate_output_b492; assert_equal("h3", worksheet.intermediate_output_b492); end
  def test_intermediate_output_c492; assert_equal("Vehicle occupancy", worksheet.intermediate_output_c492); end
  def test_intermediate_output_d492; assert_equal("No changes to vehicle occupancy", worksheet.intermediate_output_d492); end
  def test_intermediate_output_b493; assert_equal("h3", worksheet.intermediate_output_b493); end
  def test_intermediate_output_c493; assert_equal("Freight mode shift", worksheet.intermediate_output_c493); end
  def test_intermediate_output_d493; assert_equal("the proportion of ton-km serviced by road vs rail transportation stays at 70% and 30% respectively by 2050. ", worksheet.intermediate_output_d493); end
  def test_intermediate_output_b494; assert_equal("h3", worksheet.intermediate_output_b494); end
  def test_intermediate_output_c494; assert_equal("Freight vehicle efficiency improvement", worksheet.intermediate_output_c494); end
  def test_intermediate_output_d494; assert_equal("No vehicle efficiency and operational efficiency are assumed until 2050.\r\n", worksheet.intermediate_output_d494); end
  def test_intermediate_output_b495; assert_equal("h1", worksheet.intermediate_output_b495); end
  def test_intermediate_output_c495; assert_equal("Land use and Waste", worksheet.intermediate_output_c495); end
  def test_intermediate_output_b496; assert_equal("h3", worksheet.intermediate_output_b496); end
  def test_intermediate_output_c496; assert_equal("Livestock Management", worksheet.intermediate_output_c496); end
  def test_intermediate_output_d496; assert_equal("The commercial dairy cow population grows slightly from 0,8 million in 2006 to 1.4 million by 2050. This is an annual growth of 1.7%.", worksheet.intermediate_output_d496); end
  def test_intermediate_output_b497; assert_equal("h3", worksheet.intermediate_output_b497); end
  def test_intermediate_output_c497; assert_equal("Land Use ", worksheet.intermediate_output_c497); end
  def test_intermediate_output_d497; assert_equal("1.4% of cropland is used to produce biofuels", worksheet.intermediate_output_d497); end
  def test_intermediate_output_b498; assert_equal("h3", worksheet.intermediate_output_b498); end
  def test_intermediate_output_c498; assert_equal("Waste ", worksheet.intermediate_output_c498); end
  def test_intermediate_output_d498; assert_equal("10% of waste is recycled, 90% goes to land fill. Only 10% of methane gas from landfill  is captured, 75% of which is used to produce energy (the remaining is flurred)", worksheet.intermediate_output_d498); end
  def test_intermediate_output_d511; assert_equal("Households in 2050", worksheet.intermediate_output_d511); end
  def test_flows_b2; assert_equal("Flows through the energy system (for producing an energy flow diagram)", worksheet.flows_b2); end
  def test_flows_u2; assert_equal("Cross check of flows through the energy system (based on the idea that energy is transformed, but not destroyed)", worksheet.flows_u2); end
  def test_flows_p4; assert_equal("PJ", worksheet.flows_p4); end
  def test_flows_w4; assert_equal("Values flowing from the transformation", worksheet.flows_w4); end
  def test_flows_ah4; assert_equal("Values flowing to the transformation", worksheet.flows_ah4); end
  def test_flows_as4; assert_equal("Check that flows in equal flows out", worksheet.flows_as4); end
  def test_flows_c5; assert_equal("From", worksheet.flows_c5); end
  def test_flows_d5; assert_equal("Sheet or table", worksheet.flows_d5); end
  def test_flows_e5; assert_equal("To", worksheet.flows_e5); end
  def test_flows_f5; assert_equal("Fuel code", worksheet.flows_f5); end
  def test_flows_g5; assert_in_epsilon(2006.0, worksheet.flows_g5, 0.002); end
  def test_flows_h5; assert_in_epsilon(2010.0, worksheet.flows_h5, 0.002); end
  def test_flows_i5; assert_in_epsilon(2015.0, worksheet.flows_i5, 0.002); end
  def test_flows_j5; assert_in_epsilon(2020.0, worksheet.flows_j5, 0.002); end
  def test_flows_k5; assert_in_epsilon(2025.0, worksheet.flows_k5, 0.002); end
  def test_flows_l5; assert_in_epsilon(2030.0, worksheet.flows_l5, 0.002); end
  def test_flows_m5; assert_in_epsilon(2035.0, worksheet.flows_m5, 0.002); end
  def test_flows_n5; assert_in_epsilon(2040.0, worksheet.flows_n5, 0.002); end
  def test_flows_o5; assert_in_epsilon(2045.0, worksheet.flows_o5, 0.002); end
  def test_flows_p5; assert_in_epsilon(2050.0, worksheet.flows_p5, 0.002); end
  def test_flows_v5; assert_equal("Transformation", worksheet.flows_v5); end
  def test_flows_w5; assert_in_epsilon(2006.0, worksheet.flows_w5, 0.002); end
  def test_flows_x5; assert_in_epsilon(2010.0, worksheet.flows_x5, 0.002); end
  def test_flows_y5; assert_in_epsilon(2015.0, worksheet.flows_y5, 0.002); end
  def test_flows_z5; assert_in_epsilon(2020.0, worksheet.flows_z5, 0.002); end
  def test_flows_aa5; assert_in_epsilon(2025.0, worksheet.flows_aa5, 0.002); end
  def test_flows_ab5; assert_in_epsilon(2030.0, worksheet.flows_ab5, 0.002); end
  def test_flows_ac5; assert_in_epsilon(2035.0, worksheet.flows_ac5, 0.002); end
  def test_flows_ad5; assert_in_epsilon(2040.0, worksheet.flows_ad5, 0.002); end
  def test_flows_ae5; assert_in_epsilon(2045.0, worksheet.flows_ae5, 0.002); end
  def test_flows_af5; assert_in_epsilon(2050.0, worksheet.flows_af5, 0.002); end
  def test_flows_ah5; assert_in_epsilon(2006.0, worksheet.flows_ah5, 0.002); end
  def test_flows_ai5; assert_in_epsilon(2010.0, worksheet.flows_ai5, 0.002); end
  def test_flows_aj5; assert_in_epsilon(2015.0, worksheet.flows_aj5, 0.002); end
  def test_flows_ak5; assert_in_epsilon(2020.0, worksheet.flows_ak5, 0.002); end
  def test_flows_al5; assert_in_epsilon(2025.0, worksheet.flows_al5, 0.002); end
  def test_flows_am5; assert_in_epsilon(2030.0, worksheet.flows_am5, 0.002); end
  def test_flows_an5; assert_in_epsilon(2035.0, worksheet.flows_an5, 0.002); end
  def test_flows_ao5; assert_in_epsilon(2040.0, worksheet.flows_ao5, 0.002); end
  def test_flows_ap5; assert_in_epsilon(2045.0, worksheet.flows_ap5, 0.002); end
  def test_flows_aq5; assert_in_epsilon(2050.0, worksheet.flows_aq5, 0.002); end
  def test_flows_as5; assert_in_epsilon(2006.0, worksheet.flows_as5, 0.002); end
  def test_flows_at5; assert_in_epsilon(2010.0, worksheet.flows_at5, 0.002); end
  def test_flows_au5; assert_in_epsilon(2015.0, worksheet.flows_au5, 0.002); end
  def test_flows_av5; assert_in_epsilon(2020.0, worksheet.flows_av5, 0.002); end
  def test_flows_aw5; assert_in_epsilon(2025.0, worksheet.flows_aw5, 0.002); end
  def test_flows_ax5; assert_in_epsilon(2030.0, worksheet.flows_ax5, 0.002); end
  def test_flows_ay5; assert_in_epsilon(2035.0, worksheet.flows_ay5, 0.002); end
  def test_flows_az5; assert_in_epsilon(2040.0, worksheet.flows_az5, 0.002); end
  def test_flows_ba5; assert_in_epsilon(2045.0, worksheet.flows_ba5, 0.002); end
  def test_flows_bb5; assert_in_epsilon(2050.0, worksheet.flows_bb5, 0.002); end
  def test_flows_c6; assert_equal("Domestic coal production", worksheet.flows_c6); end
  def test_flows_d6; assert_equal("FOS.SUP", worksheet.flows_d6); end
  def test_flows_e6; assert_equal("Coal", worksheet.flows_e6); end
  def test_flows_f6; assert_equal("Q.01", worksheet.flows_f6); end
  def test_flows_g6; assert_in_epsilon(3828.1386874365517, worksheet.flows_g6, 0.002); end
  def test_flows_h6; assert_in_epsilon(4444.064277532254, worksheet.flows_h6, 0.002); end
  def test_flows_i6; assert_in_epsilon(4981.080156770106, worksheet.flows_i6, 0.002); end
  def test_flows_j6; assert_in_epsilon(5602.251042000064, worksheet.flows_j6, 0.002); end
  def test_flows_k6; assert_in_epsilon(6501.338248055366, worksheet.flows_k6, 0.002); end
  def test_flows_l6; assert_in_epsilon(7387.264788322718, worksheet.flows_l6, 0.002); end
  def test_flows_m6; assert_in_epsilon(8593.105097538122, worksheet.flows_m6, 0.002); end
  def test_flows_n6; assert_in_epsilon(9597.169358173773, worksheet.flows_n6, 0.002); end
  def test_flows_o6; assert_in_epsilon(11127.38511685538, worksheet.flows_o6, 0.002); end
  def test_flows_p6; assert_in_epsilon(12694.075383109057, worksheet.flows_p6, 0.002); end
  def test_flows_v6; assert_equal("Coal", worksheet.flows_v6); end
  def test_flows_w6; assert_in_epsilon(3105.3372561000238, worksheet.flows_w6, 0.002); end
  def test_flows_x6; assert_in_epsilon(3724.142533173162, worksheet.flows_x6, 0.002); end
  def test_flows_y6; assert_in_epsilon(4266.849493394091, worksheet.flows_y6, 0.002); end
  def test_flows_z6; assert_in_epsilon(4900.502079537416, worksheet.flows_z6, 0.002); end
  def test_flows_aa6; assert_in_epsilon(5812.955932496769, worksheet.flows_aa6, 0.002); end
  def test_flows_ab6; assert_in_epsilon(6711.74943193344, worksheet.flows_ab6, 0.002); end
  def test_flows_ac6; assert_in_epsilon(7929.984518330299, worksheet.flows_ac6, 0.002); end
  def test_flows_ad6; assert_in_epsilon(9148.791129815303, worksheet.flows_ad6, 0.002); end
  def test_flows_ae6; assert_in_epsilon(10679.00688849691, worksheet.flows_ae6, 0.002); end
  def test_flows_af6; assert_in_epsilon(12404.954810574445, worksheet.flows_af6, 0.002); end
  def test_flows_ah6; assert_in_epsilon(3828.1386874365517, worksheet.flows_ah6, 0.002); end
  def test_flows_ai6; assert_in_epsilon(4444.064277532254, worksheet.flows_ai6, 0.002); end
  def test_flows_aj6; assert_in_epsilon(4981.080156770106, worksheet.flows_aj6, 0.002); end
  def test_flows_ak6; assert_in_epsilon(5602.251042000064, worksheet.flows_ak6, 0.002); end
  def test_flows_al6; assert_in_epsilon(6501.338248055366, worksheet.flows_al6, 0.002); end
  def test_flows_am6; assert_in_epsilon(7387.264788322718, worksheet.flows_am6, 0.002); end
  def test_flows_an6; assert_in_epsilon(8593.105097538122, worksheet.flows_an6, 0.002); end
  def test_flows_ao6; assert_in_epsilon(9597.169358173773, worksheet.flows_ao6, 0.002); end
  def test_flows_ap6; assert_in_epsilon(11127.38511685538, worksheet.flows_ap6, 0.002); end
  def test_flows_aq6; assert_in_epsilon(12694.075383109057, worksheet.flows_aq6, 0.002); end
  def test_flows_as6; assert_in_epsilon(-722.8014313365279, worksheet.flows_as6, 0.002); end
  def test_flows_at6; assert_in_epsilon(-719.9217443590919, worksheet.flows_at6, 0.002); end
  def test_flows_au6; assert_in_epsilon(-714.2306633760154, worksheet.flows_au6, 0.002); end
  def test_flows_av6; assert_in_epsilon(-701.7489624626487, worksheet.flows_av6, 0.002); end
  def test_flows_aw6; assert_in_epsilon(-688.3823155585978, worksheet.flows_aw6, 0.002); end
  def test_flows_ax6; assert_in_epsilon(-675.5153563892782, worksheet.flows_ax6, 0.002); end
  def test_flows_ay6; assert_in_epsilon(-663.1205792078235, worksheet.flows_ay6, 0.002); end
  def test_flows_az6; assert_in_epsilon(-448.37822835846964, worksheet.flows_az6, 0.002); end
  def test_flows_ba6; assert_in_epsilon(-448.37822835846964, worksheet.flows_ba6, 0.002); end
  def test_flows_bb6; assert_in_epsilon(-289.1205725346117, worksheet.flows_bb6, 0.002); end
  def test_flows_c7; assert_equal("Crude oil imports", worksheet.flows_c7); end
  def test_flows_d7; assert_equal("Subtotal.Supply", worksheet.flows_d7); end
  def test_flows_e7; assert_equal("Oil", worksheet.flows_e7); end
  def test_flows_f7; assert_equal("Y.05", worksheet.flows_f7); end
  def test_flows_g7; assert_in_epsilon(533.0949844070293, worksheet.flows_g7, 0.002); end
  def test_flows_h7; assert_in_epsilon(657.8956132130626, worksheet.flows_h7, 0.002); end
  def test_flows_i7; assert_in_epsilon(790.6043497227139, worksheet.flows_i7, 0.002); end
  def test_flows_j7; assert_in_epsilon(937.2989287030503, worksheet.flows_j7, 0.002); end
  def test_flows_k7; assert_in_epsilon(1008.905988478295, worksheet.flows_k7, 0.002); end
  def test_flows_l7; assert_in_epsilon(1157.7625131265943, worksheet.flows_l7, 0.002); end
  def test_flows_m7; assert_in_epsilon(1253.650799954017, worksheet.flows_m7, 0.002); end
  def test_flows_n7; assert_in_epsilon(1426.0154200414468, worksheet.flows_n7, 0.002); end
  def test_flows_o7; assert_in_epsilon(1612.2270253012296, worksheet.flows_o7, 0.002); end
  def test_flows_p7; assert_in_epsilon(1788.4322143915965, worksheet.flows_p7, 0.002); end
  def test_flows_v7; assert_equal("Oil", worksheet.flows_v7); end
  def test_flows_w7; assert_in_epsilon(533.0949844070293, worksheet.flows_w7, 0.002); end
  def test_flows_x7; assert_in_epsilon(657.8956132130626, worksheet.flows_x7, 0.002); end
  def test_flows_y7; assert_in_epsilon(790.6043497227139, worksheet.flows_y7, 0.002); end
  def test_flows_z7; assert_in_epsilon(937.2989287030503, worksheet.flows_z7, 0.002); end
  def test_flows_aa7; assert_in_epsilon(1008.905988478295, worksheet.flows_aa7, 0.002); end
  def test_flows_ab7; assert_in_epsilon(1157.7625131265943, worksheet.flows_ab7, 0.002); end
  def test_flows_ac7; assert_in_epsilon(1253.650799954017, worksheet.flows_ac7, 0.002); end
  def test_flows_ad7; assert_in_epsilon(1426.0154200414468, worksheet.flows_ad7, 0.002); end
  def test_flows_ae7; assert_in_epsilon(1612.2270253012296, worksheet.flows_ae7, 0.002); end
  def test_flows_af7; assert_in_epsilon(1788.4322143915965, worksheet.flows_af7, 0.002); end
  def test_flows_ah7; assert_in_epsilon(533.0949844070293, worksheet.flows_ah7, 0.002); end
  def test_flows_ai7; assert_in_epsilon(657.8956132130626, worksheet.flows_ai7, 0.002); end
  def test_flows_aj7; assert_in_epsilon(790.6043497227139, worksheet.flows_aj7, 0.002); end
  def test_flows_ak7; assert_in_epsilon(937.2989287030503, worksheet.flows_ak7, 0.002); end
  def test_flows_al7; assert_in_epsilon(1008.905988478295, worksheet.flows_al7, 0.002); end
  def test_flows_am7; assert_in_epsilon(1157.7625131265943, worksheet.flows_am7, 0.002); end
  def test_flows_an7; assert_in_epsilon(1253.650799954017, worksheet.flows_an7, 0.002); end
  def test_flows_ao7; assert_in_epsilon(1426.0154200414468, worksheet.flows_ao7, 0.002); end
  def test_flows_ap7; assert_in_epsilon(1612.2270253012296, worksheet.flows_ap7, 0.002); end
  def test_flows_aq7; assert_in_epsilon(1788.4322143915965, worksheet.flows_aq7, 0.002); end
  def test_flows_as7; assert_in_delta(0.0, (worksheet.flows_as7||0), 0.002); end
  def test_flows_at7; assert_in_delta(0.0, (worksheet.flows_at7||0), 0.002); end
  def test_flows_au7; assert_in_delta(0.0, (worksheet.flows_au7||0), 0.002); end
  def test_flows_av7; assert_in_delta(0.0, (worksheet.flows_av7||0), 0.002); end
  def test_flows_aw7; assert_in_delta(0.0, (worksheet.flows_aw7||0), 0.002); end
  def test_flows_ax7; assert_in_delta(0.0, (worksheet.flows_ax7||0), 0.002); end
  def test_flows_ay7; assert_in_delta(0.0, (worksheet.flows_ay7||0), 0.002); end
  def test_flows_az7; assert_in_delta(0.0, (worksheet.flows_az7||0), 0.002); end
  def test_flows_ba7; assert_in_delta(0.0, (worksheet.flows_ba7||0), 0.002); end
  def test_flows_bb7; assert_in_delta(0.0, (worksheet.flows_bb7||0), 0.002); end
  def test_flows_c8; assert_equal("Domestic gas production", worksheet.flows_c8); end
  def test_flows_d8; assert_equal("FOS.SUP", worksheet.flows_d8); end
  def test_flows_e8; assert_equal("Gas", worksheet.flows_e8); end
  def test_flows_f8; assert_equal("Q.03", worksheet.flows_f8); end
  def test_flows_g8; assert_in_epsilon(61.214999999999996, worksheet.flows_g8, 0.002); end
  def test_flows_h8; assert_in_epsilon(44.8, worksheet.flows_h8, 0.002); end
  def test_flows_i8; assert_in_epsilon(26.453952000000008, worksheet.flows_i8, 0.002); end
  def test_flows_j8; assert_in_epsilon(15.62079411648001, worksheet.flows_j8, 0.002); end
  def test_flows_k8; assert_in_delta(0.0, (worksheet.flows_k8||0), 0.002); end
  def test_flows_l8; assert_in_delta(0.0, (worksheet.flows_l8||0), 0.002); end
  def test_flows_m8; assert_in_delta(0.0, (worksheet.flows_m8||0), 0.002); end
  def test_flows_n8; assert_in_delta(0.0, (worksheet.flows_n8||0), 0.002); end
  def test_flows_o8; assert_in_delta(0.0, (worksheet.flows_o8||0), 0.002); end
  def test_flows_p8; assert_in_delta(0.0, (worksheet.flows_p8||0), 0.002); end
  def test_flows_v8; assert_equal("Gas", worksheet.flows_v8); end
  def test_flows_w8; assert_in_epsilon(191.9899115133531, worksheet.flows_w8, 0.002); end
  def test_flows_x8; assert_in_epsilon(187.3969702247765, worksheet.flows_x8, 0.002); end
  def test_flows_y8; assert_in_epsilon(215.72440928494711, worksheet.flows_y8, 0.002); end
  def test_flows_z8; assert_in_epsilon(240.6441102497957, worksheet.flows_z8, 0.002); end
  def test_flows_aa8; assert_in_epsilon(352.20537327533344, worksheet.flows_aa8, 0.002); end
  def test_flows_ab8; assert_in_epsilon(380.6953914542576, worksheet.flows_ab8, 0.002); end
  def test_flows_ac8; assert_in_epsilon(488.21595743631633, worksheet.flows_ac8, 0.002); end
  def test_flows_ad8; assert_in_epsilon(586.6836468929392, worksheet.flows_ad8, 0.002); end
  def test_flows_ae8; assert_in_epsilon(641.2183428629952, worksheet.flows_ae8, 0.002); end
  def test_flows_af8; assert_in_epsilon(689.0744183921398, worksheet.flows_af8, 0.002); end
  def test_flows_ah8; assert_in_epsilon(188.48270730017887, worksheet.flows_ah8, 0.002); end
  def test_flows_ai8; assert_in_epsilon(183.81707430966014, worksheet.flows_ai8, 0.002); end
  def test_flows_aj8; assert_in_epsilon(205.83765940098925, worksheet.flows_aj8, 0.002); end
  def test_flows_ak8; assert_in_epsilon(226.560992294232, worksheet.flows_ak8, 0.002); end
  def test_flows_al8; assert_in_epsilon(335.53327796077247, worksheet.flows_al8, 0.002); end
  def test_flows_am8; assert_in_epsilon(360.9429578419894, worksheet.flows_am8, 0.002); end
  def test_flows_an8; assert_in_epsilon(464.9886364469817, worksheet.flows_an8, 0.002); end
  def test_flows_ao8; assert_in_epsilon(562.109948425742, worksheet.flows_ao8, 0.002); end
  def test_flows_ap8; assert_in_epsilon(612.008189616324, worksheet.flows_ap8, 0.002); end
  def test_flows_aq8; assert_in_epsilon(660.6709754069301, worksheet.flows_aq8, 0.002); end
  def test_flows_as8; assert_in_epsilon(3.5072042131742194, worksheet.flows_as8, 0.002); end
  def test_flows_at8; assert_in_epsilon(3.579895915116367, worksheet.flows_at8, 0.002); end
  def test_flows_au8; assert_in_epsilon(9.886749883957862, worksheet.flows_au8, 0.002); end
  def test_flows_av8; assert_in_epsilon(14.083117955563694, worksheet.flows_av8, 0.002); end
  def test_flows_aw8; assert_in_epsilon(16.672095314560977, worksheet.flows_aw8, 0.002); end
  def test_flows_ax8; assert_in_epsilon(19.75243361226819, worksheet.flows_ax8, 0.002); end
  def test_flows_ay8; assert_in_epsilon(23.227320989334657, worksheet.flows_ay8, 0.002); end
  def test_flows_az8; assert_in_epsilon(24.573698467197232, worksheet.flows_az8, 0.002); end
  def test_flows_ba8; assert_in_epsilon(29.21015324667121, worksheet.flows_ba8, 0.002); end
  def test_flows_bb8; assert_in_epsilon(28.403442985209722, worksheet.flows_bb8, 0.002); end
  def test_flows_c9; assert_equal("Gas imports", worksheet.flows_c9); end
  def test_flows_d9; assert_equal("FOS.SUP", worksheet.flows_d9); end
  def test_flows_e9; assert_equal("Gas", worksheet.flows_e9); end
  def test_flows_f9; assert_equal("Y.06", worksheet.flows_f9); end
  def test_flows_g9; assert_in_epsilon(127.26770730017887, worksheet.flows_g9, 0.002); end
  def test_flows_h9; assert_in_epsilon(139.01707430966013, worksheet.flows_h9, 0.002); end
  def test_flows_i9; assert_in_epsilon(179.38370740098924, worksheet.flows_i9, 0.002); end
  def test_flows_j9; assert_in_epsilon(210.940198177752, worksheet.flows_j9, 0.002); end
  def test_flows_k9; assert_in_epsilon(335.53327796077247, worksheet.flows_k9, 0.002); end
  def test_flows_l9; assert_in_epsilon(360.9429578419894, worksheet.flows_l9, 0.002); end
  def test_flows_m9; assert_in_epsilon(464.9886364469817, worksheet.flows_m9, 0.002); end
  def test_flows_n9; assert_in_epsilon(562.109948425742, worksheet.flows_n9, 0.002); end
  def test_flows_o9; assert_in_epsilon(612.008189616324, worksheet.flows_o9, 0.002); end
  def test_flows_p9; assert_in_epsilon(660.6709754069301, worksheet.flows_p9, 0.002); end
  def test_flows_v9; assert_equal("Bio-conversion", worksheet.flows_v9); end
  def test_flows_w9; assert_in_delta(0.43045660603634317, worksheet.flows_w9, 0.002); end
  def test_flows_x9; assert_in_delta(0.902145748111875, worksheet.flows_x9, 0.002); end
  def test_flows_y9; assert_in_epsilon(1.4628365784618897, worksheet.flows_y9, 0.002); end
  def test_flows_z9; assert_in_epsilon(2.108449316829098, worksheet.flows_z9, 0.002); end
  def test_flows_aa9; assert_in_epsilon(2.8490577090675857, worksheet.flows_aa9, 0.002); end
  def test_flows_ab9; assert_in_epsilon(3.69580483016226, worksheet.flows_ab9, 0.002); end
  def test_flows_ac9; assert_in_epsilon(4.66103737824248, worksheet.flows_ac9, 0.002); end
  def test_flows_ad9; assert_in_epsilon(5.758394868763988, worksheet.flows_ad9, 0.002); end
  def test_flows_ae9; assert_in_epsilon(7.002949067356905, worksheet.flows_ae9, 0.002); end
  def test_flows_af9; assert_in_epsilon(8.411346528049371, worksheet.flows_af9, 0.002); end
  def test_flows_ah9; assert_in_delta(0.4933915591403157, worksheet.flows_ah9, 0.002); end
  def test_flows_ai9; assert_in_epsilon(1.1707433853966898, worksheet.flows_ai9, 0.002); end
  def test_flows_aj9; assert_in_epsilon(3.1292667089525272, worksheet.flows_aj9, 0.002); end
  def test_flows_ak9; assert_in_epsilon(5.423645969908223, worksheet.flows_ak9, 0.002); end
  def test_flows_al9; assert_in_epsilon(8.333089428245945, worksheet.flows_al9, 0.002); end
  def test_flows_am9; assert_in_epsilon(11.919251058497995, worksheet.flows_am9, 0.002); end
  def test_flows_an9; assert_in_epsilon(16.327888170492265, worksheet.flows_an9, 0.002); end
  def test_flows_ao9; assert_in_epsilon(21.789465266048314, worksheet.flows_ao9, 0.002); end
  def test_flows_ap9; assert_in_epsilon(28.572766045609974, worksheet.flows_ap9, 0.002); end
  def test_flows_aq9; assert_in_epsilon(36.93021205966322, worksheet.flows_aq9, 0.002); end
  def test_flows_as9; assert_in_delta(-0.06293495310397251, worksheet.flows_as9, 0.002); end
  def test_flows_at9; assert_in_delta(-0.2685976372848148, worksheet.flows_at9, 0.002); end
  def test_flows_au9; assert_in_epsilon(-1.6664301304906375, worksheet.flows_au9, 0.002); end
  def test_flows_av9; assert_in_epsilon(-3.315196653079125, worksheet.flows_av9, 0.002); end
  def test_flows_aw9; assert_in_epsilon(-5.484031719178359, worksheet.flows_aw9, 0.002); end
  def test_flows_ax9; assert_in_epsilon(-8.223446228335735, worksheet.flows_ax9, 0.002); end
  def test_flows_ay9; assert_in_epsilon(-11.666850792249786, worksheet.flows_ay9, 0.002); end
  def test_flows_az9; assert_in_epsilon(-16.031070397284324, worksheet.flows_az9, 0.002); end
  def test_flows_ba9; assert_in_epsilon(-21.56981697825307, worksheet.flows_ba9, 0.002); end
  def test_flows_bb9; assert_in_epsilon(-28.518865531613848, worksheet.flows_bb9, 0.002); end
  def test_flows_c10; assert_equal("Agricultural 'waste'", worksheet.flows_c10); end
  def test_flows_d10; assert_equal("BIO.SUP", worksheet.flows_d10); end
  def test_flows_e10; assert_equal("Bio-conversion", worksheet.flows_e10); end
  def test_flows_f10; assert_equal("V.09", worksheet.flows_f10); end
  def test_flows_g10; assert_in_delta(0.4782851178181591, worksheet.flows_g10, 0.002); end
  def test_flows_h10; assert_in_epsilon(1.00238416456875, worksheet.flows_h10, 0.002); end
  def test_flows_i10; assert_in_epsilon(1.6253739760687664, worksheet.flows_i10, 0.002); end
  def test_flows_j10; assert_in_epsilon(2.342721463143442, worksheet.flows_j10, 0.002); end
  def test_flows_k10; assert_in_epsilon(3.1656196767417617, worksheet.flows_k10, 0.002); end
  def test_flows_l10; assert_in_epsilon(4.1064498112914, worksheet.flows_l10, 0.002); end
  def test_flows_m10; assert_in_epsilon(5.178930420269422, worksheet.flows_m10, 0.002); end
  def test_flows_n10; assert_in_epsilon(6.398216520848876, worksheet.flows_n10, 0.002); end
  def test_flows_o10; assert_in_epsilon(7.78105451928545, worksheet.flows_o10, 0.002); end
  def test_flows_p10; assert_in_epsilon(9.345940586721524, worksheet.flows_p10, 0.002); end
  def test_flows_v10; assert_equal("Solid", worksheet.flows_v10); end
  def test_flows_w10; assert_in_epsilon(3105.76771270606, worksheet.flows_w10, 0.002); end
  def test_flows_x10; assert_in_epsilon(3725.0446789212738, worksheet.flows_x10, 0.002); end
  def test_flows_y10; assert_in_epsilon(4268.312329972552, worksheet.flows_y10, 0.002); end
  def test_flows_z10; assert_in_epsilon(4902.610528854245, worksheet.flows_z10, 0.002); end
  def test_flows_aa10; assert_in_epsilon(5815.804990205836, worksheet.flows_aa10, 0.002); end
  def test_flows_ab10; assert_in_epsilon(6715.445236763602, worksheet.flows_ab10, 0.002); end
  def test_flows_ac10; assert_in_epsilon(7934.64555570854, worksheet.flows_ac10, 0.002); end
  def test_flows_ad10; assert_in_epsilon(9154.54952468407, worksheet.flows_ad10, 0.002); end
  def test_flows_ae10; assert_in_epsilon(10686.009837564266, worksheet.flows_ae10, 0.002); end
  def test_flows_af10; assert_in_epsilon(12413.366157102493, worksheet.flows_af10, 0.002); end
  def test_flows_ah10; assert_in_epsilon(3105.76771270606, worksheet.flows_ah10, 0.002); end
  def test_flows_ai10; assert_in_epsilon(3725.0446789212738, worksheet.flows_ai10, 0.002); end
  def test_flows_aj10; assert_in_epsilon(4268.312329972553, worksheet.flows_aj10, 0.002); end
  def test_flows_ak10; assert_in_epsilon(4902.610528854245, worksheet.flows_ak10, 0.002); end
  def test_flows_al10; assert_in_epsilon(5815.8049902058365, worksheet.flows_al10, 0.002); end
  def test_flows_am10; assert_in_epsilon(6715.445236763602, worksheet.flows_am10, 0.002); end
  def test_flows_an10; assert_in_epsilon(7934.645555708541, worksheet.flows_an10, 0.002); end
  def test_flows_ao10; assert_in_epsilon(9154.549524684067, worksheet.flows_ao10, 0.002); end
  def test_flows_ap10; assert_in_epsilon(10686.009837564266, worksheet.flows_ap10, 0.002); end
  def test_flows_aq10; assert_in_epsilon(12413.366157102495, worksheet.flows_aq10, 0.002); end
  def test_flows_as10; assert_in_delta(0.0, (worksheet.flows_as10||0), 0.002); end
  def test_flows_at10; assert_in_delta(0.0, (worksheet.flows_at10||0), 0.002); end
  def test_flows_au10; assert_in_delta(0.0, (worksheet.flows_au10||0), 0.002); end
  def test_flows_av10; assert_in_delta(0.0, (worksheet.flows_av10||0), 0.002); end
  def test_flows_aw10; assert_in_delta(0.0, (worksheet.flows_aw10||0), 0.002); end
  def test_flows_ax10; assert_in_delta(0.0, (worksheet.flows_ax10||0), 0.002); end
  def test_flows_ay10; assert_in_delta(0.0, (worksheet.flows_ay10||0), 0.002); end
  def test_flows_az10; assert_in_delta(0.0, (worksheet.flows_az10||0), 0.002); end
  def test_flows_ba10; assert_in_delta(0.0, (worksheet.flows_ba10||0), 0.002); end
  def test_flows_bb10; assert_in_delta(0.0, (worksheet.flows_bb10||0), 0.002); end
  def test_flows_c11; assert_equal("Agricultural 'waste'", worksheet.flows_c11); end
  def test_flows_d11; assert_equal("BIO.SUP", worksheet.flows_d11); end
  def test_flows_e11; assert_equal("Bio-conversion", worksheet.flows_e11); end
  def test_flows_f11; assert_equal("V.10", worksheet.flows_f11); end
  def test_flows_g11; assert_in_delta(0.0, (worksheet.flows_g11||0), 0.002); end
  def test_flows_h11; assert_in_delta(0.0, (worksheet.flows_h11||0), 0.002); end
  def test_flows_i11; assert_in_delta(0.9555992815866061, worksheet.flows_i11, 0.002); end
  def test_flows_j11; assert_in_epsilon(1.9016660232643734, worksheet.flows_j11, 0.002); end
  def test_flows_k11; assert_in_epsilon(3.0669467041793532, worksheet.flows_k11, 0.002); end
  def test_flows_l11; assert_in_epsilon(4.458882612318264, worksheet.flows_l11, 0.002); end
  def test_flows_m11; assert_in_epsilon(6.162943472258768, worksheet.flows_m11, 0.002); end
  def test_flows_n11; assert_in_epsilon(8.341343996796521, worksheet.flows_n11, 0.002); end
  def test_flows_o11; assert_in_epsilon(11.161370450278167, worksheet.flows_o11, 0.002); end
  def test_flows_p11; assert_in_epsilon(14.809980143542761, worksheet.flows_p11, 0.002); end
  def test_flows_v11; assert_equal("Liquid", worksheet.flows_v11); end
  def test_flows_w11; assert_in_epsilon(763.255996531064, worksheet.flows_w11, 0.002); end
  def test_flows_x11; assert_in_epsilon(867.5318197966101, worksheet.flows_x11, 0.002); end
  def test_flows_y11; assert_in_epsilon(994.2126322840177, worksheet.flows_y11, 0.002); end
  def test_flows_z11; assert_in_epsilon(1133.7770701547943, worksheet.flows_z11, 0.002); end
  def test_flows_aa11; assert_in_epsilon(1271.1896438335468, worksheet.flows_aa11, 0.002); end
  def test_flows_ab11; assert_in_epsilon(1412.7054678577385, worksheet.flows_ab11, 0.002); end
  def test_flows_ac11; assert_in_epsilon(1558.5806346989161, worksheet.flows_ac11, 0.002); end
  def test_flows_ad11; assert_in_epsilon(1707.56858593597, worksheet.flows_ad11, 0.002); end
  def test_flows_ae11; assert_in_epsilon(1885.0161736104624, worksheet.flows_ae11, 0.002); end
  def test_flows_af11; assert_in_epsilon(2003.2925218483629, worksheet.flows_af11, 0.002); end
  def test_flows_as11; assert_in_epsilon(763.255996531064, worksheet.flows_as11, 0.002); end
  def test_flows_at11; assert_in_epsilon(867.5318197966101, worksheet.flows_at11, 0.002); end
  def test_flows_au11; assert_in_epsilon(994.2126322840177, worksheet.flows_au11, 0.002); end
  def test_flows_av11; assert_in_epsilon(1133.7770701547943, worksheet.flows_av11, 0.002); end
  def test_flows_aw11; assert_in_epsilon(1271.1896438335468, worksheet.flows_aw11, 0.002); end
  def test_flows_ax11; assert_in_epsilon(1412.7054678577385, worksheet.flows_ax11, 0.002); end
  def test_flows_ay11; assert_in_epsilon(1558.5806346989161, worksheet.flows_ay11, 0.002); end
  def test_flows_az11; assert_in_epsilon(1707.56858593597, worksheet.flows_az11, 0.002); end
  def test_flows_ba11; assert_in_epsilon(1885.0161736104624, worksheet.flows_ba11, 0.002); end
  def test_flows_bb11; assert_in_epsilon(2003.2925218483629, worksheet.flows_bb11, 0.002); end
  def test_flows_c12; assert_equal("Agricultural 'waste'", worksheet.flows_c12); end
  def test_flows_d12; assert_equal("BIO.SUP", worksheet.flows_d12); end
  def test_flows_e12; assert_equal("Bio-conversion", worksheet.flows_e12); end
  def test_flows_f12; assert_equal("V.15", worksheet.flows_f12); end
  def test_flows_g12; assert_in_delta(0.015106441322156612, worksheet.flows_g12, 0.002); end
  def test_flows_h12; assert_in_delta(0.16835922082793983, worksheet.flows_h12, 0.002); end
  def test_flows_i12; assert_in_delta(0.5482934512971542, worksheet.flows_i12, 0.002); end
  def test_flows_j12; assert_in_epsilon(1.1792584835004076, worksheet.flows_j12, 0.002); end
  def test_flows_k12; assert_in_epsilon(2.100523047324829, worksheet.flows_k12, 0.002); end
  def test_flows_l12; assert_in_epsilon(3.353918634888331, worksheet.flows_l12, 0.002); end
  def test_flows_m12; assert_in_epsilon(4.986014277964072, worksheet.flows_m12, 0.002); end
  def test_flows_n12; assert_in_epsilon(7.049904748402915, worksheet.flows_n12, 0.002); end
  def test_flows_o12; assert_in_epsilon(9.630341076046358, worksheet.flows_o12, 0.002); end
  def test_flows_p12; assert_in_epsilon(12.774291329398935, worksheet.flows_p12, 0.002); end
  def test_flows_v12; assert_equal("Coal to Liquid", worksheet.flows_v12); end
  def test_flows_w12; assert_in_epsilon(742.4966050873053, worksheet.flows_w12, 0.002); end
  def test_flows_x12; assert_in_epsilon(739.5384512821768, worksheet.flows_x12, 0.002); end
  def test_flows_y12; assert_in_epsilon(733.6922975171001, worksheet.flows_y12, 0.002); end
  def test_flows_z12; assert_in_epsilon(720.8704903760247, worksheet.flows_z12, 0.002); end
  def test_flows_aa12; assert_in_epsilon(707.1396238926719, worksheet.flows_aa12, 0.002); end
  def test_flows_ab12; assert_in_epsilon(693.9220608292574, worksheet.flows_ab12, 0.002); end
  def test_flows_ac12; assert_in_epsilon(681.1895459516563, worksheet.flows_ac12, 0.002); end
  def test_flows_ad12; assert_in_epsilon(460.5958122352143, worksheet.flows_ad12, 0.002); end
  def test_flows_ae12; assert_in_epsilon(460.5958122352143, worksheet.flows_ae12, 0.002); end
  def test_flows_af12; assert_in_epsilon(296.9986420349222, worksheet.flows_af12, 0.002); end
  def test_flows_ah12; assert_in_epsilon(762.1917788380825, worksheet.flows_ah12, 0.002); end
  def test_flows_ai12; assert_in_epsilon(759.1551582052617, worksheet.flows_ai12, 0.002); end
  def test_flows_aj12; assert_in_epsilon(753.1539316581843, worksheet.flows_aj12, 0.002); end
  def test_flows_ak12; assert_in_epsilon(739.9920182894007, worksheet.flows_ak12, 0.002); end
  def test_flows_al12; assert_in_epsilon(725.8969322267455, worksheet.flows_al12, 0.002); end
  def test_flows_am12; assert_in_epsilon(712.3287652692361, worksheet.flows_am12, 0.002); end
  def test_flows_an12; assert_in_epsilon(699.2585126954887, worksheet.flows_an12, 0.002); end
  def test_flows_ao12; assert_in_epsilon(472.8133961119598, worksheet.flows_ao12, 0.002); end
  def test_flows_ap12; assert_in_epsilon(472.8133961119598, worksheet.flows_ap12, 0.002); end
  def test_flows_aq12; assert_in_epsilon(304.87671153523314, worksheet.flows_aq12, 0.002); end
  def test_flows_as12; assert_in_epsilon(-19.695173750777258, worksheet.flows_as12, 0.002); end
  def test_flows_at12; assert_in_epsilon(-19.616706923084962, worksheet.flows_at12, 0.002); end
  def test_flows_au12; assert_in_epsilon(-19.461634141084232, worksheet.flows_au12, 0.002); end
  def test_flows_av12; assert_in_epsilon(-19.121527913375985, worksheet.flows_av12, 0.002); end
  def test_flows_aw12; assert_in_epsilon(-18.757308334073628, worksheet.flows_aw12, 0.002); end
  def test_flows_ax12; assert_in_epsilon(-18.40670443997874, worksheet.flows_ax12, 0.002); end
  def test_flows_ay12; assert_in_epsilon(-18.068966743832334, worksheet.flows_ay12, 0.002); end
  def test_flows_az12; assert_in_epsilon(-12.217583876745493, worksheet.flows_az12, 0.002); end
  def test_flows_ba12; assert_in_epsilon(-12.217583876745493, worksheet.flows_ba12, 0.002); end
  def test_flows_bb12; assert_in_epsilon(-7.8780695003109145, worksheet.flows_bb12, 0.002); end
  def test_flows_c13; assert_equal("Bio-conversion", worksheet.flows_c13); end
  def test_flows_d13; assert_equal("BIO.SUP", worksheet.flows_d13); end
  def test_flows_e13; assert_equal("Solid", worksheet.flows_e13); end
  def test_flows_f13; assert_equal("V.03", worksheet.flows_f13); end
  def test_flows_g13; assert_in_delta(0.43045660603634317, worksheet.flows_g13, 0.002); end
  def test_flows_h13; assert_in_delta(0.902145748111875, worksheet.flows_h13, 0.002); end
  def test_flows_i13; assert_in_epsilon(1.4628365784618897, worksheet.flows_i13, 0.002); end
  def test_flows_j13; assert_in_epsilon(2.108449316829098, worksheet.flows_j13, 0.002); end
  def test_flows_k13; assert_in_epsilon(2.8490577090675857, worksheet.flows_k13, 0.002); end
  def test_flows_l13; assert_in_epsilon(3.69580483016226, worksheet.flows_l13, 0.002); end
  def test_flows_m13; assert_in_epsilon(4.66103737824248, worksheet.flows_m13, 0.002); end
  def test_flows_n13; assert_in_epsilon(5.758394868763988, worksheet.flows_n13, 0.002); end
  def test_flows_o13; assert_in_epsilon(7.002949067356905, worksheet.flows_o13, 0.002); end
  def test_flows_p13; assert_in_epsilon(8.411346528049371, worksheet.flows_p13, 0.002); end
  def test_flows_v13; assert_equal("Gas to Liquid", worksheet.flows_v13); end
  def test_flows_as13; assert_in_delta(0.0, (worksheet.flows_as13||0), 0.002); end
  def test_flows_at13; assert_in_delta(0.0, (worksheet.flows_at13||0), 0.002); end
  def test_flows_au13; assert_in_delta(0.0, (worksheet.flows_au13||0), 0.002); end
  def test_flows_av13; assert_in_delta(0.0, (worksheet.flows_av13||0), 0.002); end
  def test_flows_aw13; assert_in_delta(0.0, (worksheet.flows_aw13||0), 0.002); end
  def test_flows_ax13; assert_in_delta(0.0, (worksheet.flows_ax13||0), 0.002); end
  def test_flows_ay13; assert_in_delta(0.0, (worksheet.flows_ay13||0), 0.002); end
  def test_flows_az13; assert_in_delta(0.0, (worksheet.flows_az13||0), 0.002); end
  def test_flows_ba13; assert_in_delta(0.0, (worksheet.flows_ba13||0), 0.002); end
  def test_flows_bb13; assert_in_delta(0.0, (worksheet.flows_bb13||0), 0.002); end
  def test_flows_c14; assert_equal("Bio-conversion", worksheet.flows_c14); end
  def test_flows_d14; assert_equal("BIO.SUP", worksheet.flows_d14); end
  def test_flows_e14; assert_equal("Liquid", worksheet.flows_e14); end
  def test_flows_f14; assert_equal("V.04", worksheet.flows_f14); end
  def test_flows_g14; assert_in_delta(0.0, (worksheet.flows_g14||0), 0.002); end
  def test_flows_h14; assert_in_delta(0.0, (worksheet.flows_h14||0), 0.002); end
  def test_flows_i14; assert_in_delta(0.0, (worksheet.flows_i14||0), 0.002); end
  def test_flows_j14; assert_in_delta(0.0, (worksheet.flows_j14||0), 0.002); end
  def test_flows_k14; assert_in_delta(0.0, (worksheet.flows_k14||0), 0.002); end
  def test_flows_l14; assert_in_delta(0.0, (worksheet.flows_l14||0), 0.002); end
  def test_flows_m14; assert_in_delta(0.0, (worksheet.flows_m14||0), 0.002); end
  def test_flows_n14; assert_in_delta(0.0, (worksheet.flows_n14||0), 0.002); end
  def test_flows_o14; assert_in_delta(0.0, (worksheet.flows_o14||0), 0.002); end
  def test_flows_p14; assert_in_delta(0.0, (worksheet.flows_p14||0), 0.002); end
  def test_flows_v14; assert_equal("Electricity end use", worksheet.flows_v14); end
  def test_flows_w14; assert_in_delta(0.0, (worksheet.flows_w14||0), 0.002); end
  def test_flows_x14; assert_in_delta(0.0, (worksheet.flows_x14||0), 0.002); end
  def test_flows_y14; assert_in_delta(0.0, (worksheet.flows_y14||0), 0.002); end
  def test_flows_z14; assert_in_delta(0.0, (worksheet.flows_z14||0), 0.002); end
  def test_flows_aa14; assert_in_delta(0.0, (worksheet.flows_aa14||0), 0.002); end
  def test_flows_ab14; assert_in_delta(0.0, (worksheet.flows_ab14||0), 0.002); end
  def test_flows_ac14; assert_in_delta(0.0, (worksheet.flows_ac14||0), 0.002); end
  def test_flows_ad14; assert_in_delta(0.0, (worksheet.flows_ad14||0), 0.002); end
  def test_flows_ae14; assert_in_delta(0.0, (worksheet.flows_ae14||0), 0.002); end
  def test_flows_af14; assert_in_delta(0.0, (worksheet.flows_af14||0), 0.002); end
  def test_flows_ah14; assert_in_delta(0.0, (worksheet.flows_ah14||0), 0.002); end
  def test_flows_ai14; assert_in_delta(0.08634159360000002, worksheet.flows_ai14, 0.002); end
  def test_flows_aj14; assert_in_epsilon(2.3411402902055913, worksheet.flows_aj14, 0.002); end
  def test_flows_ak14; assert_in_epsilon(42.519714238775194, worksheet.flows_ak14, 0.002); end
  def test_flows_al14; assert_in_epsilon(102.60314308074803, worksheet.flows_al14, 0.002); end
  def test_flows_am14; assert_in_epsilon(165.34949660014925, worksheet.flows_am14, 0.002); end
  def test_flows_an14; assert_in_epsilon(226.48432081385033, worksheet.flows_an14, 0.002); end
  def test_flows_ao14; assert_in_epsilon(309.88926467877843, worksheet.flows_ao14, 0.002); end
  def test_flows_ap14; assert_in_epsilon(370.5428363718666, worksheet.flows_ap14, 0.002); end
  def test_flows_aq14; assert_in_epsilon(425.97284422612074, worksheet.flows_aq14, 0.002); end
  def test_flows_as14; assert_in_delta(0.0, (worksheet.flows_as14||0), 0.002); end
  def test_flows_at14; assert_in_delta(-0.08634159360000002, worksheet.flows_at14, 0.002); end
  def test_flows_au14; assert_in_epsilon(-2.3411402902055913, worksheet.flows_au14, 0.002); end
  def test_flows_av14; assert_in_epsilon(-42.519714238775194, worksheet.flows_av14, 0.002); end
  def test_flows_aw14; assert_in_epsilon(-102.60314308074803, worksheet.flows_aw14, 0.002); end
  def test_flows_ax14; assert_in_epsilon(-165.34949660014925, worksheet.flows_ax14, 0.002); end
  def test_flows_ay14; assert_in_epsilon(-226.48432081385033, worksheet.flows_ay14, 0.002); end
  def test_flows_az14; assert_in_epsilon(-309.88926467877843, worksheet.flows_az14, 0.002); end
  def test_flows_ba14; assert_in_epsilon(-370.5428363718666, worksheet.flows_ba14, 0.002); end
  def test_flows_bb14; assert_in_epsilon(-425.97284422612074, worksheet.flows_bb14, 0.002); end
  def test_flows_c15; assert_equal("Biofuel imports", worksheet.flows_c15); end
  def test_flows_d15; assert_equal("BIO.SUP", worksheet.flows_d15); end
  def test_flows_e15; assert_equal("Liquid", worksheet.flows_e15); end
  def test_flows_f15; assert_equal("Y.05", worksheet.flows_f15); end
  def test_flows_g15; assert_in_delta(0.0, (worksheet.flows_g15||0), 0.002); end
  def test_flows_h15; assert_in_delta(0.0, (worksheet.flows_h15||0), 0.002); end
  def test_flows_i15; assert_in_delta(0.0, (worksheet.flows_i15||0), 0.002); end
  def test_flows_j15; assert_in_delta(0.0, (worksheet.flows_j15||0), 0.002); end
  def test_flows_k15; assert_in_delta(0.0, (worksheet.flows_k15||0), 0.002); end
  def test_flows_l15; assert_in_delta(0.0, (worksheet.flows_l15||0), 0.002); end
  def test_flows_m15; assert_in_delta(0.0, (worksheet.flows_m15||0), 0.002); end
  def test_flows_n15; assert_in_delta(0.0, (worksheet.flows_n15||0), 0.002); end
  def test_flows_o15; assert_in_delta(0.0, (worksheet.flows_o15||0), 0.002); end
  def test_flows_p15; assert_in_delta(0.0, (worksheet.flows_p15||0), 0.002); end
  def test_flows_v15; assert_equal("Electricity grid", worksheet.flows_v15); end
  def test_flows_w15; assert_in_epsilon(892.0828578088833, worksheet.flows_w15, 0.002); end
  def test_flows_x15; assert_in_epsilon(1056.934838210165, worksheet.flows_x15, 0.002); end
  def test_flows_y15; assert_in_epsilon(1218.1382832611746, worksheet.flows_y15, 0.002); end
  def test_flows_z15; assert_in_epsilon(1432.656967124106, worksheet.flows_z15, 0.002); end
  def test_flows_aa15; assert_in_epsilon(1692.7338983408354, worksheet.flows_aa15, 0.002); end
  def test_flows_ab15; assert_in_epsilon(2008.889084455379, worksheet.flows_ab15, 0.002); end
  def test_flows_ac15; assert_in_epsilon(2409.490939360593, worksheet.flows_ac15, 0.002); end
  def test_flows_ad15; assert_in_epsilon(2841.441750427138, worksheet.flows_ad15, 0.002); end
  def test_flows_ae15; assert_in_epsilon(3310.5588392052878, worksheet.flows_ae15, 0.002); end
  def test_flows_af15; assert_in_epsilon(3805.037798484579, worksheet.flows_af15, 0.002); end
  def test_flows_ah15; assert_in_epsilon(890.3435333590613, worksheet.flows_ah15, 0.002); end
  def test_flows_ai15; assert_in_epsilon(1055.8631068944699, worksheet.flows_ai15, 0.002); end
  def test_flows_aj15; assert_in_epsilon(1228.3553604602744, worksheet.flows_aj15, 0.002); end
  def test_flows_ak15; assert_in_epsilon(1403.8416322770806, worksheet.flows_ak15, 0.002); end
  def test_flows_al15; assert_in_epsilon(1604.5928198744116, worksheet.flows_al15, 0.002); end
  def test_flows_am15; assert_in_epsilon(1859.1701914724183, worksheet.flows_am15, 0.002); end
  def test_flows_an15; assert_in_epsilon(2199.501845708725, worksheet.flows_an15, 0.002); end
  def test_flows_ao15; assert_in_epsilon(2554.846202896934, worksheet.flows_ao15, 0.002); end
  def test_flows_ap15; assert_in_epsilon(2964.332913355362, worksheet.flows_ap15, 0.002); end
  def test_flows_aq15; assert_in_epsilon(3408.6895893904452, worksheet.flows_aq15, 0.002); end
  def test_flows_as15; assert_in_epsilon(1.7393244498219929, worksheet.flows_as15, 0.002); end
  def test_flows_at15; assert_in_epsilon(1.0717313156951604, worksheet.flows_at15, 0.002); end
  def test_flows_au15; assert_in_epsilon(-10.217077199099776, worksheet.flows_au15, 0.002); end
  def test_flows_av15; assert_in_epsilon(28.81533484702527, worksheet.flows_av15, 0.002); end
  def test_flows_aw15; assert_in_epsilon(88.14107846642378, worksheet.flows_aw15, 0.002); end
  def test_flows_ax15; assert_in_epsilon(149.7188929829606, worksheet.flows_ax15, 0.002); end
  def test_flows_ay15; assert_in_epsilon(209.9890936518682, worksheet.flows_ay15, 0.002); end
  def test_flows_az15; assert_in_epsilon(286.59554753020393, worksheet.flows_az15, 0.002); end
  def test_flows_ba15; assert_in_epsilon(346.2259258499257, worksheet.flows_ba15, 0.002); end
  def test_flows_bb15; assert_in_epsilon(396.34820909413384, worksheet.flows_bb15, 0.002); end
  def test_flows_c16; assert_equal("Coal ", worksheet.flows_c16); end
  def test_flows_d16; assert_equal("FOS.CTL", worksheet.flows_d16); end
  def test_flows_e16; assert_equal("Coal to Liquid", worksheet.flows_e16); end
  def test_flows_f16; assert_equal("V.03", worksheet.flows_f16); end
  def test_flows_g16; assert_in_epsilon(722.801431336528, worksheet.flows_g16, 0.002); end
  def test_flows_h16; assert_in_epsilon(719.9217443590918, worksheet.flows_h16, 0.002); end
  def test_flows_i16; assert_in_epsilon(714.2306633760159, worksheet.flows_i16, 0.002); end
  def test_flows_j16; assert_in_epsilon(701.7489624626487, worksheet.flows_j16, 0.002); end
  def test_flows_k16; assert_in_epsilon(688.3823155585983, worksheet.flows_k16, 0.002); end
  def test_flows_l16; assert_in_epsilon(675.5153563892786, worksheet.flows_l16, 0.002); end
  def test_flows_m16; assert_in_epsilon(663.120579207824, worksheet.flows_m16, 0.002); end
  def test_flows_n16; assert_in_epsilon(448.3782283584688, worksheet.flows_n16, 0.002); end
  def test_flows_o16; assert_in_epsilon(448.3782283584688, worksheet.flows_o16, 0.002); end
  def test_flows_p16; assert_in_epsilon(289.1205725346113, worksheet.flows_p16, 0.002); end
  def test_flows_v16; assert_equal("Over generation / exports", worksheet.flows_v16); end
  def test_flows_w16; assert_in_delta(0.0, (worksheet.flows_w16||0), 0.002); end
  def test_flows_x16; assert_in_delta(0.0, (worksheet.flows_x16||0), 0.002); end
  def test_flows_y16; assert_in_delta(0.0, (worksheet.flows_y16||0), 0.002); end
  def test_flows_z16; assert_in_delta(0.0, (worksheet.flows_z16||0), 0.002); end
  def test_flows_aa16; assert_in_delta(0.0, (worksheet.flows_aa16||0), 0.002); end
  def test_flows_ab16; assert_in_delta(0.0, (worksheet.flows_ab16||0), 0.002); end
  def test_flows_ac16; assert_in_delta(0.0, (worksheet.flows_ac16||0), 0.002); end
  def test_flows_ad16; assert_in_delta(0.0, (worksheet.flows_ad16||0), 0.002); end
  def test_flows_ae16; assert_in_delta(0.0, (worksheet.flows_ae16||0), 0.002); end
  def test_flows_af16; assert_in_delta(0.0, (worksheet.flows_af16||0), 0.002); end
  def test_flows_ah16; assert_in_epsilon(49.63716000000022, worksheet.flows_ah16, 0.002); end
  def test_flows_ai16; assert_in_epsilon(49.637159999999994, worksheet.flows_ai16, 0.002); end
  def test_flows_aj16; assert_in_epsilon(38.27642399999999, worksheet.flows_aj16, 0.002); end
  def test_flows_ak16; assert_in_epsilon(38.2764240000009, worksheet.flows_ak16, 0.002); end
  def test_flows_al16; assert_in_epsilon(38.27642399999999, worksheet.flows_al16, 0.002); end
  def test_flows_am16; assert_in_epsilon(38.276424000000446, worksheet.flows_am16, 0.002); end
  def test_flows_an16; assert_in_epsilon(38.27642399999999, worksheet.flows_an16, 0.002); end
  def test_flows_ao16; assert_in_epsilon(38.27642399999999, worksheet.flows_ao16, 0.002); end
  def test_flows_ap16; assert_in_epsilon(38.27642399999817, worksheet.flows_ap16, 0.002); end
  def test_flows_aq16; assert_in_epsilon(38.27642399999908, worksheet.flows_aq16, 0.002); end
  def test_flows_as16; assert_in_epsilon(-49.63716000000022, worksheet.flows_as16, 0.002); end
  def test_flows_at16; assert_in_epsilon(-49.637159999999994, worksheet.flows_at16, 0.002); end
  def test_flows_au16; assert_in_epsilon(-38.27642399999999, worksheet.flows_au16, 0.002); end
  def test_flows_av16; assert_in_epsilon(-38.2764240000009, worksheet.flows_av16, 0.002); end
  def test_flows_aw16; assert_in_epsilon(-38.27642399999999, worksheet.flows_aw16, 0.002); end
  def test_flows_ax16; assert_in_epsilon(-38.276424000000446, worksheet.flows_ax16, 0.002); end
  def test_flows_ay16; assert_in_epsilon(-38.27642399999999, worksheet.flows_ay16, 0.002); end
  def test_flows_az16; assert_in_epsilon(-38.27642399999999, worksheet.flows_az16, 0.002); end
  def test_flows_ba16; assert_in_epsilon(-38.27642399999817, worksheet.flows_ba16, 0.002); end
  def test_flows_bb16; assert_in_epsilon(-38.27642399999908, worksheet.flows_bb16, 0.002); end
  def test_flows_c17; assert_equal("Electricity grid", worksheet.flows_c17); end
  def test_flows_d17; assert_equal("FOS.CTL", worksheet.flows_d17); end
  def test_flows_e17; assert_equal("Coal to Liquid", worksheet.flows_e17); end
  def test_flows_f17; assert_equal("V.01", worksheet.flows_f17); end
  def test_flows_g17; assert_in_epsilon(19.695173750777297, worksheet.flows_g17, 0.002); end
  def test_flows_h17; assert_in_epsilon(19.61670692308496, worksheet.flows_h17, 0.002); end
  def test_flows_i17; assert_in_epsilon(19.461634141084286, worksheet.flows_i17, 0.002); end
  def test_flows_j17; assert_in_epsilon(19.121527913376017, worksheet.flows_j17, 0.002); end
  def test_flows_k17; assert_in_epsilon(18.757308334073617, worksheet.flows_k17, 0.002); end
  def test_flows_l17; assert_in_epsilon(18.406704439978782, worksheet.flows_l17, 0.002); end
  def test_flows_m17; assert_in_epsilon(18.06896674383238, worksheet.flows_m17, 0.002); end
  def test_flows_n17; assert_in_epsilon(12.21758387674551, worksheet.flows_n17, 0.002); end
  def test_flows_o17; assert_in_epsilon(12.21758387674551, worksheet.flows_o17, 0.002); end
  def test_flows_p17; assert_in_epsilon(7.87806950031092, worksheet.flows_p17, 0.002); end
  def test_flows_v17; assert_equal("Thermal generation", worksheet.flows_v17); end
  def test_flows_w17; assert_in_epsilon(2544.2388031744645, worksheet.flows_w17, 0.002); end
  def test_flows_x17; assert_in_epsilon(3095.1889201695158, worksheet.flows_x17, 0.002); end
  def test_flows_y17; assert_in_epsilon(3480.3172456250386, worksheet.flows_y17, 0.002); end
  def test_flows_z17; assert_in_epsilon(3951.4277730750537, worksheet.flows_z17, 0.002); end
  def test_flows_aa17; assert_in_epsilon(4617.038613294672, worksheet.flows_aa17, 0.002); end
  def test_flows_ab17; assert_in_epsilon(5265.616276923241, worksheet.flows_ab17, 0.002); end
  def test_flows_ac17; assert_in_epsilon(6111.743481212758, worksheet.flows_ac17, 0.002); end
  def test_flows_ad17; assert_in_epsilon(6959.575606931144, worksheet.flows_ad17, 0.002); end
  def test_flows_ae17; assert_in_epsilon(8066.296446007979, worksheet.flows_ae17, 0.002); end
  def test_flows_af17; assert_in_epsilon(9219.750177969003, worksheet.flows_af17, 0.002); end
  def test_flows_ah17; assert_in_epsilon(2544.2388031744645, worksheet.flows_ah17, 0.002); end
  def test_flows_ai17; assert_in_epsilon(3095.1889201695158, worksheet.flows_ai17, 0.002); end
  def test_flows_aj17; assert_in_epsilon(3480.3172456250386, worksheet.flows_aj17, 0.002); end
  def test_flows_ak17; assert_in_epsilon(3951.4277730750537, worksheet.flows_ak17, 0.002); end
  def test_flows_al17; assert_in_epsilon(4617.038613294672, worksheet.flows_al17, 0.002); end
  def test_flows_am17; assert_in_epsilon(5265.616276923241, worksheet.flows_am17, 0.002); end
  def test_flows_an17; assert_in_epsilon(6111.743481212758, worksheet.flows_an17, 0.002); end
  def test_flows_ao17; assert_in_epsilon(6959.575606931144, worksheet.flows_ao17, 0.002); end
  def test_flows_ap17; assert_in_epsilon(8066.296446007979, worksheet.flows_ap17, 0.002); end
  def test_flows_aq17; assert_in_epsilon(9219.750177969003, worksheet.flows_aq17, 0.002); end
  def test_flows_as17; assert_in_delta(0.0, (worksheet.flows_as17||0), 0.002); end
  def test_flows_at17; assert_in_delta(0.0, (worksheet.flows_at17||0), 0.002); end
  def test_flows_au17; assert_in_delta(0.0, (worksheet.flows_au17||0), 0.002); end
  def test_flows_av17; assert_in_delta(0.0, (worksheet.flows_av17||0), 0.002); end
  def test_flows_aw17; assert_in_delta(0.0, (worksheet.flows_aw17||0), 0.002); end
  def test_flows_ax17; assert_in_delta(0.0, (worksheet.flows_ax17||0), 0.002); end
  def test_flows_ay17; assert_in_delta(0.0, (worksheet.flows_ay17||0), 0.002); end
  def test_flows_az17; assert_in_delta(0.0, (worksheet.flows_az17||0), 0.002); end
  def test_flows_ba17; assert_in_delta(0.0, (worksheet.flows_ba17||0), 0.002); end
  def test_flows_bb17; assert_in_delta(0.0, (worksheet.flows_bb17||0), 0.002); end
  def test_flows_c18; assert_equal("Coal to Liquid", worksheet.flows_c18); end
  def test_flows_d18; assert_equal("FOS.CTL", worksheet.flows_d18); end
  def test_flows_e18; assert_equal("Liquid", worksheet.flows_e18); end
  def test_flows_f18; assert_equal("C.02", worksheet.flows_f18); end
  def test_flows_g18; assert_in_epsilon(199.51181758596977, worksheet.flows_g18, 0.002); end
  def test_flows_h18; assert_in_epsilon(199.51181758596977, worksheet.flows_h18, 0.002); end
  def test_flows_i18; assert_in_epsilon(199.51181758596977, worksheet.flows_i18, 0.002); end
  def test_flows_j18; assert_in_epsilon(199.51181758596977, worksheet.flows_j18, 0.002); end
  def test_flows_k18; assert_in_epsilon(199.51181758596977, worksheet.flows_k18, 0.002); end
  def test_flows_l18; assert_in_epsilon(199.51181758596977, worksheet.flows_l18, 0.002); end
  def test_flows_m18; assert_in_epsilon(199.51181758596977, worksheet.flows_m18, 0.002); end
  def test_flows_n18; assert_in_epsilon(129.4405005796209, worksheet.flows_n18, 0.002); end
  def test_flows_o18; assert_in_epsilon(129.4405005796209, worksheet.flows_o18, 0.002); end
  def test_flows_p18; assert_in_epsilon(79.80472703438792, worksheet.flows_p18, 0.002); end
  def test_flows_v18; assert_equal("Losses", worksheet.flows_v18); end
  def test_flows_w18; assert_in_delta(0.0, (worksheet.flows_w18||0), 0.002); end
  def test_flows_x18; assert_in_delta(0.0, (worksheet.flows_x18||0), 0.002); end
  def test_flows_y18; assert_in_delta(0.0, (worksheet.flows_y18||0), 0.002); end
  def test_flows_z18; assert_in_delta(0.0, (worksheet.flows_z18||0), 0.002); end
  def test_flows_aa18; assert_in_delta(0.0, (worksheet.flows_aa18||0), 0.002); end
  def test_flows_ab18; assert_in_delta(0.0, (worksheet.flows_ab18||0), 0.002); end
  def test_flows_ac18; assert_in_delta(0.0, (worksheet.flows_ac18||0), 0.002); end
  def test_flows_ad18; assert_in_delta(0.0, (worksheet.flows_ad18||0), 0.002); end
  def test_flows_ae18; assert_in_delta(0.0, (worksheet.flows_ae18||0), 0.002); end
  def test_flows_af18; assert_in_delta(0.0, (worksheet.flows_af18||0), 0.002); end
  def test_flows_ah18; assert_in_epsilon(2355.5509383126687, worksheet.flows_ah18, 0.002); end
  def test_flows_ai18; assert_in_epsilon(2814.9129276613166, worksheet.flows_ai18, 0.002); end
  def test_flows_aj18; assert_in_epsilon(3077.412690787686, worksheet.flows_aj18, 0.002); end
  def test_flows_ak18; assert_in_epsilon(3419.0860070891604, worksheet.flows_ak18, 0.002); end
  def test_flows_al18; assert_in_epsilon(3915.952227646126, worksheet.flows_al18, 0.002); end
  def test_flows_am18; assert_in_epsilon(4357.414913131518, worksheet.flows_am18, 0.002); end
  def test_flows_an18; assert_in_epsilon(4920.712319046032, worksheet.flows_an18, 0.002); end
  def test_flows_ao18; assert_in_epsilon(5344.2119438767695, worksheet.flows_ao18, 0.002); end
  def test_flows_ap18; assert_in_epsilon(6128.920945264303, worksheet.flows_ap18, 0.002); end
  def test_flows_aq18; assert_in_epsilon(6815.509837660204, worksheet.flows_aq18, 0.002); end
  def test_flows_as18; assert_in_epsilon(-2355.5509383126687, worksheet.flows_as18, 0.002); end
  def test_flows_at18; assert_in_epsilon(-2814.9129276613166, worksheet.flows_at18, 0.002); end
  def test_flows_au18; assert_in_epsilon(-3077.412690787686, worksheet.flows_au18, 0.002); end
  def test_flows_av18; assert_in_epsilon(-3419.0860070891604, worksheet.flows_av18, 0.002); end
  def test_flows_aw18; assert_in_epsilon(-3915.952227646126, worksheet.flows_aw18, 0.002); end
  def test_flows_ax18; assert_in_epsilon(-4357.414913131518, worksheet.flows_ax18, 0.002); end
  def test_flows_ay18; assert_in_epsilon(-4920.712319046032, worksheet.flows_ay18, 0.002); end
  def test_flows_az18; assert_in_epsilon(-5344.2119438767695, worksheet.flows_az18, 0.002); end
  def test_flows_ba18; assert_in_epsilon(-6128.920945264303, worksheet.flows_ba18, 0.002); end
  def test_flows_bb18; assert_in_epsilon(-6815.509837660204, worksheet.flows_bb18, 0.002); end
  def test_flows_c19; assert_equal("Electricity grid", worksheet.flows_c19); end
  def test_flows_d19; assert_equal("FOS.CTL", worksheet.flows_d19); end
  def test_flows_e19; assert_equal("Coal to Liquid", worksheet.flows_e19); end
  def test_flows_f19; assert_equal("V.01", worksheet.flows_f19); end
  def test_flows_g19; assert_in_epsilon(19.695173750777297, worksheet.flows_g19, 0.002); end
  def test_flows_h19; assert_in_epsilon(19.61670692308496, worksheet.flows_h19, 0.002); end
  def test_flows_i19; assert_in_epsilon(19.461634141084286, worksheet.flows_i19, 0.002); end
  def test_flows_j19; assert_in_epsilon(19.121527913376017, worksheet.flows_j19, 0.002); end
  def test_flows_k19; assert_in_epsilon(18.757308334073617, worksheet.flows_k19, 0.002); end
  def test_flows_l19; assert_in_epsilon(18.406704439978782, worksheet.flows_l19, 0.002); end
  def test_flows_m19; assert_in_epsilon(18.06896674383238, worksheet.flows_m19, 0.002); end
  def test_flows_n19; assert_in_epsilon(12.21758387674551, worksheet.flows_n19, 0.002); end
  def test_flows_o19; assert_in_epsilon(12.21758387674551, worksheet.flows_o19, 0.002); end
  def test_flows_p19; assert_in_epsilon(7.87806950031092, worksheet.flows_p19, 0.002); end
  def test_flows_v19; assert_equal("H2 conversion", worksheet.flows_v19); end
  def test_flows_w19; assert_in_delta(0.0, (worksheet.flows_w19||0), 0.002); end
  def test_flows_x19; assert_in_delta(0.0, (worksheet.flows_x19||0), 0.002); end
  def test_flows_y19; assert_in_delta(0.0, (worksheet.flows_y19||0), 0.002); end
  def test_flows_z19; assert_in_delta(0.0, (worksheet.flows_z19||0), 0.002); end
  def test_flows_aa19; assert_in_delta(0.0, (worksheet.flows_aa19||0), 0.002); end
  def test_flows_ab19; assert_in_delta(0.0, (worksheet.flows_ab19||0), 0.002); end
  def test_flows_ac19; assert_in_delta(0.0, (worksheet.flows_ac19||0), 0.002); end
  def test_flows_ad19; assert_in_delta(0.0, (worksheet.flows_ad19||0), 0.002); end
  def test_flows_ae19; assert_in_delta(0.0, (worksheet.flows_ae19||0), 0.002); end
  def test_flows_af19; assert_in_delta(0.0, (worksheet.flows_af19||0), 0.002); end
  def test_flows_ah19; assert_in_delta(0.0, (worksheet.flows_ah19||0), 0.002); end
  def test_flows_ai19; assert_in_delta(0.0, (worksheet.flows_ai19||0), 0.002); end
  def test_flows_aj19; assert_in_delta(0.0, (worksheet.flows_aj19||0), 0.002); end
  def test_flows_ak19; assert_in_delta(0.0, (worksheet.flows_ak19||0), 0.002); end
  def test_flows_al19; assert_in_delta(0.0, (worksheet.flows_al19||0), 0.002); end
  def test_flows_am19; assert_in_delta(0.0, (worksheet.flows_am19||0), 0.002); end
  def test_flows_an19; assert_in_delta(0.0, (worksheet.flows_an19||0), 0.002); end
  def test_flows_ao19; assert_in_delta(0.0, (worksheet.flows_ao19||0), 0.002); end
  def test_flows_ap19; assert_in_delta(0.0, (worksheet.flows_ap19||0), 0.002); end
  def test_flows_aq19; assert_in_delta(0.0, (worksheet.flows_aq19||0), 0.002); end
  def test_flows_as19; assert_in_delta(0.0, (worksheet.flows_as19||0), 0.002); end
  def test_flows_at19; assert_in_delta(0.0, (worksheet.flows_at19||0), 0.002); end
  def test_flows_au19; assert_in_delta(0.0, (worksheet.flows_au19||0), 0.002); end
  def test_flows_av19; assert_in_delta(0.0, (worksheet.flows_av19||0), 0.002); end
  def test_flows_aw19; assert_in_delta(0.0, (worksheet.flows_aw19||0), 0.002); end
  def test_flows_ax19; assert_in_delta(0.0, (worksheet.flows_ax19||0), 0.002); end
  def test_flows_ay19; assert_in_delta(0.0, (worksheet.flows_ay19||0), 0.002); end
  def test_flows_az19; assert_in_delta(0.0, (worksheet.flows_az19||0), 0.002); end
  def test_flows_ba19; assert_in_delta(0.0, (worksheet.flows_ba19||0), 0.002); end
  def test_flows_bb19; assert_in_delta(0.0, (worksheet.flows_bb19||0), 0.002); end
  def test_flows_c20; assert_equal("Gas", worksheet.flows_c20); end
  def test_flows_d20; assert_equal("FOS.GTL", worksheet.flows_d20); end
  def test_flows_e20; assert_equal("Gas to Liquid", worksheet.flows_e20); end
  def test_flows_f20; assert_equal("V.05", worksheet.flows_f20); end
  def test_flows_g20; assert_in_epsilon(64.22834761321909, worksheet.flows_g20, 0.002); end
  def test_flows_h20; assert_in_epsilon(41.41776319655393, worksheet.flows_h20, 0.002); end
  def test_flows_i20; assert_in_epsilon(41.09035004875508, worksheet.flows_i20, 0.002); end
  def test_flows_j20; assert_in_epsilon(40.37226626149528, worksheet.flows_j20, 0.002); end
  def test_flows_k20; assert_in_epsilon(118.77620124357047, worksheet.flows_k20, 0.002); end
  def test_flows_l20; assert_in_epsilon(114.65220856140034, worksheet.flows_l20, 0.002); end
  def test_flows_m20; assert_in_epsilon(169.73641279162536, worksheet.flows_m20, 0.002); end
  def test_flows_n20; assert_in_epsilon(217.4464348959815, worksheet.flows_n20, 0.002); end
  def test_flows_o20; assert_in_epsilon(217.4464348959815, worksheet.flows_o20, 0.002); end
  def test_flows_p20; assert_in_epsilon(217.4464348959815, worksheet.flows_p20, 0.002); end
  def test_flows_v20; assert_equal("H2", worksheet.flows_v20); end
  def test_flows_w20; assert_in_delta(0.0, (worksheet.flows_w20||0), 0.002); end
  def test_flows_x20; assert_in_delta(0.0, (worksheet.flows_x20||0), 0.002); end
  def test_flows_y20; assert_in_delta(0.0, (worksheet.flows_y20||0), 0.002); end
  def test_flows_z20; assert_in_delta(0.0, (worksheet.flows_z20||0), 0.002); end
  def test_flows_aa20; assert_in_delta(0.0, (worksheet.flows_aa20||0), 0.002); end
  def test_flows_ab20; assert_in_delta(0.0, (worksheet.flows_ab20||0), 0.002); end
  def test_flows_ac20; assert_in_delta(0.0, (worksheet.flows_ac20||0), 0.002); end
  def test_flows_ad20; assert_in_delta(0.0, (worksheet.flows_ad20||0), 0.002); end
  def test_flows_ae20; assert_in_delta(0.0, (worksheet.flows_ae20||0), 0.002); end
  def test_flows_af20; assert_in_delta(0.0, (worksheet.flows_af20||0), 0.002); end
  def test_flows_ah20; assert_in_delta(0.0, (worksheet.flows_ah20||0), 0.002); end
  def test_flows_ai20; assert_in_delta(0.0, (worksheet.flows_ai20||0), 0.002); end
  def test_flows_aj20; assert_in_delta(0.0, (worksheet.flows_aj20||0), 0.002); end
  def test_flows_ak20; assert_in_delta(0.0, (worksheet.flows_ak20||0), 0.002); end
  def test_flows_al20; assert_in_delta(0.0, (worksheet.flows_al20||0), 0.002); end
  def test_flows_am20; assert_in_delta(0.0, (worksheet.flows_am20||0), 0.002); end
  def test_flows_an20; assert_in_delta(0.0, (worksheet.flows_an20||0), 0.002); end
  def test_flows_ao20; assert_in_delta(0.0, (worksheet.flows_ao20||0), 0.002); end
  def test_flows_ap20; assert_in_delta(0.0, (worksheet.flows_ap20||0), 0.002); end
  def test_flows_aq20; assert_in_delta(0.0, (worksheet.flows_aq20||0), 0.002); end
  def test_flows_as20; assert_in_delta(0.0, (worksheet.flows_as20||0), 0.002); end
  def test_flows_at20; assert_in_delta(0.0, (worksheet.flows_at20||0), 0.002); end
  def test_flows_au20; assert_in_delta(0.0, (worksheet.flows_au20||0), 0.002); end
  def test_flows_av20; assert_in_delta(0.0, (worksheet.flows_av20||0), 0.002); end
  def test_flows_aw20; assert_in_delta(0.0, (worksheet.flows_aw20||0), 0.002); end
  def test_flows_ax20; assert_in_delta(0.0, (worksheet.flows_ax20||0), 0.002); end
  def test_flows_ay20; assert_in_delta(0.0, (worksheet.flows_ay20||0), 0.002); end
  def test_flows_az20; assert_in_delta(0.0, (worksheet.flows_az20||0), 0.002); end
  def test_flows_ba20; assert_in_delta(0.0, (worksheet.flows_ba20||0), 0.002); end
  def test_flows_bb20; assert_in_delta(0.0, (worksheet.flows_bb20||0), 0.002); end
  def test_flows_c21; assert_equal("Gas to Liquid", worksheet.flows_c21); end
  def test_flows_d21; assert_equal("FOS.GTL", worksheet.flows_d21); end
  def test_flows_e21; assert_equal("Liquid", worksheet.flows_e21); end
  def test_flows_f21; assert_equal("C.02", worksheet.flows_f21); end
  def test_flows_g21; assert_in_epsilon(54.80695973516084, worksheet.flows_g21, 0.002); end
  def test_flows_h21; assert_in_epsilon(40.55283893874978, worksheet.flows_h21, 0.002); end
  def test_flows_i21; assert_in_epsilon(40.55283893874978, worksheet.flows_i21, 0.002); end
  def test_flows_j21; assert_in_epsilon(40.55283893874978, worksheet.flows_j21, 0.002); end
  def test_flows_k21; assert_in_epsilon(109.61391947032168, worksheet.flows_k21, 0.002); end
  def test_flows_l21; assert_in_epsilon(109.61391947032168, worksheet.flows_l21, 0.002); end
  def test_flows_m21; assert_in_epsilon(164.42087920548252, worksheet.flows_m21, 0.002); end
  def test_flows_n21; assert_in_epsilon(219.22783894064335, worksheet.flows_n21, 0.002); end
  def test_flows_o21; assert_in_epsilon(219.22783894064335, worksheet.flows_o21, 0.002); end
  def test_flows_p21; assert_in_epsilon(219.22783894064335, worksheet.flows_p21, 0.002); end
  def test_flows_v21; assert_equal("Road transport", worksheet.flows_v21); end
  def test_flows_w21; assert_in_delta(0.0, (worksheet.flows_w21||0), 0.002); end
  def test_flows_x21; assert_in_delta(0.0, (worksheet.flows_x21||0), 0.002); end
  def test_flows_y21; assert_in_delta(0.0, (worksheet.flows_y21||0), 0.002); end
  def test_flows_z21; assert_in_delta(0.0, (worksheet.flows_z21||0), 0.002); end
  def test_flows_aa21; assert_in_delta(0.0, (worksheet.flows_aa21||0), 0.002); end
  def test_flows_ab21; assert_in_delta(0.0, (worksheet.flows_ab21||0), 0.002); end
  def test_flows_ac21; assert_in_delta(0.0, (worksheet.flows_ac21||0), 0.002); end
  def test_flows_ad21; assert_in_delta(0.0, (worksheet.flows_ad21||0), 0.002); end
  def test_flows_ae21; assert_in_delta(0.0, (worksheet.flows_ae21||0), 0.002); end
  def test_flows_af21; assert_in_delta(0.0, (worksheet.flows_af21||0), 0.002); end
  def test_flows_ah21; assert_in_delta(0.0, (worksheet.flows_ah21||0), 0.002); end
  def test_flows_ai21; assert_in_delta(0.0, (worksheet.flows_ai21||0), 0.002); end
  def test_flows_aj21; assert_in_delta(0.0, (worksheet.flows_aj21||0), 0.002); end
  def test_flows_ak21; assert_in_delta(0.0, (worksheet.flows_ak21||0), 0.002); end
  def test_flows_al21; assert_in_delta(0.0, (worksheet.flows_al21||0), 0.002); end
  def test_flows_am21; assert_in_delta(0.0, (worksheet.flows_am21||0), 0.002); end
  def test_flows_an21; assert_in_delta(0.0, (worksheet.flows_an21||0), 0.002); end
  def test_flows_ao21; assert_in_delta(0.0, (worksheet.flows_ao21||0), 0.002); end
  def test_flows_ap21; assert_in_delta(0.0, (worksheet.flows_ap21||0), 0.002); end
  def test_flows_aq21; assert_in_delta(0.0, (worksheet.flows_aq21||0), 0.002); end
  def test_flows_as21; assert_in_delta(0.0, (worksheet.flows_as21||0), 0.002); end
  def test_flows_at21; assert_in_delta(0.0, (worksheet.flows_at21||0), 0.002); end
  def test_flows_au21; assert_in_delta(0.0, (worksheet.flows_au21||0), 0.002); end
  def test_flows_av21; assert_in_delta(0.0, (worksheet.flows_av21||0), 0.002); end
  def test_flows_aw21; assert_in_delta(0.0, (worksheet.flows_aw21||0), 0.002); end
  def test_flows_ax21; assert_in_delta(0.0, (worksheet.flows_ax21||0), 0.002); end
  def test_flows_ay21; assert_in_delta(0.0, (worksheet.flows_ay21||0), 0.002); end
  def test_flows_az21; assert_in_delta(0.0, (worksheet.flows_az21||0), 0.002); end
  def test_flows_ba21; assert_in_delta(0.0, (worksheet.flows_ba21||0), 0.002); end
  def test_flows_bb21; assert_in_delta(0.0, (worksheet.flows_bb21||0), 0.002); end
  def test_flows_c22; assert_equal("Electricity grid", worksheet.flows_c22); end
  def test_flows_d22; assert_equal("FOS.GTL", worksheet.flows_d22); end
  def test_flows_e22; assert_equal("Gas to Liquid", worksheet.flows_e22); end
  def test_flows_f22; assert_equal("V.01", worksheet.flows_f22); end
  def test_flows_g22; assert_in_epsilon(4.091591697009967, worksheet.flows_g22, 0.002); end
  def test_flows_h22; assert_in_epsilon(3.0153944223107563, worksheet.flows_h22, 0.002); end
  def test_flows_i22; assert_in_epsilon(2.9915573122529637, worksheet.flows_i22, 0.002); end
  def test_flows_j22; assert_in_epsilon(2.939277669902912, worksheet.flows_j22, 0.002); end
  def test_flows_k22; assert_in_epsilon(7.566498857126999, worksheet.flows_k22, 0.002); end
  def test_flows_l22; assert_in_epsilon(7.303784730982731, worksheet.flows_l22, 0.002); end
  def test_flows_m22; assert_in_epsilon(10.812859478196112, worksheet.flows_m22, 0.002); end
  def test_flows_n22; assert_in_epsilon(13.85217058552668, worksheet.flows_n22, 0.002); end
  def test_flows_o22; assert_in_epsilon(13.85217058552668, worksheet.flows_o22, 0.002); end
  def test_flows_p22; assert_in_epsilon(13.85217058552668, worksheet.flows_p22, 0.002); end
  def test_flows_v22; assert_equal("Heating - homes", worksheet.flows_v22); end
  def test_flows_w22; assert_in_delta(0.0, (worksheet.flows_w22||0), 0.002); end
  def test_flows_x22; assert_in_delta(0.0, (worksheet.flows_x22||0), 0.002); end
  def test_flows_y22; assert_in_delta(0.0, (worksheet.flows_y22||0), 0.002); end
  def test_flows_z22; assert_in_delta(0.0, (worksheet.flows_z22||0), 0.002); end
  def test_flows_aa22; assert_in_delta(0.0, (worksheet.flows_aa22||0), 0.002); end
  def test_flows_ab22; assert_in_delta(0.0, (worksheet.flows_ab22||0), 0.002); end
  def test_flows_ac22; assert_in_delta(0.0, (worksheet.flows_ac22||0), 0.002); end
  def test_flows_ad22; assert_in_delta(0.0, (worksheet.flows_ad22||0), 0.002); end
  def test_flows_ae22; assert_in_delta(0.0, (worksheet.flows_ae22||0), 0.002); end
  def test_flows_af22; assert_in_delta(0.0, (worksheet.flows_af22||0), 0.002); end
  def test_flows_ah22; assert_in_epsilon(61.21839726246105, worksheet.flows_ah22, 0.002); end
  def test_flows_ai22; assert_in_epsilon(63.55144876100812, worksheet.flows_ai22, 0.002); end
  def test_flows_aj22; assert_in_epsilon(66.81049805746633, worksheet.flows_aj22, 0.002); end
  def test_flows_ak22; assert_in_epsilon(69.8803081701253, worksheet.flows_ak22, 0.002); end
  def test_flows_al22; assert_in_epsilon(72.7178969469285, worksheet.flows_al22, 0.002); end
  def test_flows_am22; assert_in_epsilon(75.18078496893654, worksheet.flows_am22, 0.002); end
  def test_flows_an22; assert_in_epsilon(74.51323650138308, worksheet.flows_an22, 0.002); end
  def test_flows_ao22; assert_in_epsilon(73.83547185430172, worksheet.flows_ao22, 0.002); end
  def test_flows_ap22; assert_in_epsilon(72.72835906447071, worksheet.flows_ap22, 0.002); end
  def test_flows_aq22; assert_in_epsilon(71.75348076818592, worksheet.flows_aq22, 0.002); end
  def test_flows_as22; assert_in_epsilon(-61.21839726246105, worksheet.flows_as22, 0.002); end
  def test_flows_at22; assert_in_epsilon(-63.55144876100812, worksheet.flows_at22, 0.002); end
  def test_flows_au22; assert_in_epsilon(-66.81049805746633, worksheet.flows_au22, 0.002); end
  def test_flows_av22; assert_in_epsilon(-69.8803081701253, worksheet.flows_av22, 0.002); end
  def test_flows_aw22; assert_in_epsilon(-72.7178969469285, worksheet.flows_aw22, 0.002); end
  def test_flows_ax22; assert_in_epsilon(-75.18078496893654, worksheet.flows_ax22, 0.002); end
  def test_flows_ay22; assert_in_epsilon(-74.51323650138308, worksheet.flows_ay22, 0.002); end
  def test_flows_az22; assert_in_epsilon(-73.83547185430172, worksheet.flows_az22, 0.002); end
  def test_flows_ba22; assert_in_epsilon(-72.72835906447071, worksheet.flows_ba22, 0.002); end
  def test_flows_bb22; assert_in_epsilon(-71.75348076818592, worksheet.flows_bb22, 0.002); end
  def test_flows_c23; assert_equal("Coal", worksheet.flows_c23); end
  def test_flows_e23; assert_equal("Solid", worksheet.flows_e23); end
  def test_flows_g23; assert_in_epsilon(3105.3372561000238, worksheet.flows_g23, 0.002); end
  def test_flows_h23; assert_in_epsilon(3724.142533173162, worksheet.flows_h23, 0.002); end
  def test_flows_i23; assert_in_epsilon(4266.849493394091, worksheet.flows_i23, 0.002); end
  def test_flows_j23; assert_in_epsilon(4900.502079537416, worksheet.flows_j23, 0.002); end
  def test_flows_k23; assert_in_epsilon(5812.955932496769, worksheet.flows_k23, 0.002); end
  def test_flows_l23; assert_in_epsilon(6711.74943193344, worksheet.flows_l23, 0.002); end
  def test_flows_m23; assert_in_epsilon(7929.984518330299, worksheet.flows_m23, 0.002); end
  def test_flows_n23; assert_in_epsilon(9148.791129815303, worksheet.flows_n23, 0.002); end
  def test_flows_o23; assert_in_epsilon(10679.00688849691, worksheet.flows_o23, 0.002); end
  def test_flows_p23; assert_in_epsilon(12404.954810574445, worksheet.flows_p23, 0.002); end
  def test_flows_as23; assert_in_delta(0.0, (worksheet.flows_as23||0), 0.002); end
  def test_flows_at23; assert_in_delta(0.0, (worksheet.flows_at23||0), 0.002); end
  def test_flows_au23; assert_in_delta(0.0, (worksheet.flows_au23||0), 0.002); end
  def test_flows_av23; assert_in_delta(0.0, (worksheet.flows_av23||0), 0.002); end
  def test_flows_aw23; assert_in_delta(0.0, (worksheet.flows_aw23||0), 0.002); end
  def test_flows_ax23; assert_in_delta(0.0, (worksheet.flows_ax23||0), 0.002); end
  def test_flows_ay23; assert_in_delta(0.0, (worksheet.flows_ay23||0), 0.002); end
  def test_flows_az23; assert_in_delta(0.0, (worksheet.flows_az23||0), 0.002); end
  def test_flows_ba23; assert_in_delta(0.0, (worksheet.flows_ba23||0), 0.002); end
  def test_flows_bb23; assert_in_delta(0.0, (worksheet.flows_bb23||0), 0.002); end
  def test_flows_c24; assert_equal("Solar", worksheet.flows_c24); end
  def test_flows_d24; assert_equal("Re.d", worksheet.flows_d24); end
  def test_flows_e24; assert_equal("Electricity end use", worksheet.flows_e24); end
  def test_flows_f24; assert_equal("R.01", worksheet.flows_f24); end
  def test_flows_g24; assert_in_delta(0.0, (worksheet.flows_g24||0), 0.002); end
  def test_flows_h24; assert_in_delta(0.08634159360000002, worksheet.flows_h24, 0.002); end
  def test_flows_i24; assert_in_epsilon(2.3411402902055913, worksheet.flows_i24, 0.002); end
  def test_flows_j24; assert_in_epsilon(42.519714238775194, worksheet.flows_j24, 0.002); end
  def test_flows_k24; assert_in_epsilon(102.60314308074803, worksheet.flows_k24, 0.002); end
  def test_flows_l24; assert_in_epsilon(165.34949660014925, worksheet.flows_l24, 0.002); end
  def test_flows_m24; assert_in_epsilon(226.48432081385033, worksheet.flows_m24, 0.002); end
  def test_flows_n24; assert_in_epsilon(309.88926467877843, worksheet.flows_n24, 0.002); end
  def test_flows_o24; assert_in_epsilon(370.5428363718666, worksheet.flows_o24, 0.002); end
  def test_flows_p24; assert_in_epsilon(425.97284422612074, worksheet.flows_p24, 0.002); end
  def test_flows_as24; assert_in_delta(0.0, (worksheet.flows_as24||0), 0.002); end
  def test_flows_at24; assert_in_delta(0.0, (worksheet.flows_at24||0), 0.002); end
  def test_flows_au24; assert_in_delta(0.0, (worksheet.flows_au24||0), 0.002); end
  def test_flows_av24; assert_in_delta(0.0, (worksheet.flows_av24||0), 0.002); end
  def test_flows_aw24; assert_in_delta(0.0, (worksheet.flows_aw24||0), 0.002); end
  def test_flows_ax24; assert_in_delta(0.0, (worksheet.flows_ax24||0), 0.002); end
  def test_flows_ay24; assert_in_delta(0.0, (worksheet.flows_ay24||0), 0.002); end
  def test_flows_az24; assert_in_delta(0.0, (worksheet.flows_az24||0), 0.002); end
  def test_flows_ba24; assert_in_delta(0.0, (worksheet.flows_ba24||0), 0.002); end
  def test_flows_bb24; assert_in_delta(0.0, (worksheet.flows_bb24||0), 0.002); end
  def test_flows_c25; assert_equal("Solar", worksheet.flows_c25); end
  def test_flows_d25; assert_equal("Re.e", worksheet.flows_d25); end
  def test_flows_e25; assert_equal("Electricity grid", worksheet.flows_e25); end
  def test_flows_f25; assert_equal("R.01", worksheet.flows_f25); end
  def test_flows_g25; assert_in_delta(0.0, (worksheet.flows_g25||0), 0.002); end
  def test_flows_h25; assert_in_delta(0.0, (worksheet.flows_h25||0), 0.002); end
  def test_flows_i25; assert_in_epsilon(10.650058847999999, worksheet.flows_i25, 0.002); end
  def test_flows_j25; assert_in_epsilon(10.650058847999999, worksheet.flows_j25, 0.002); end
  def test_flows_k25; assert_in_epsilon(10.650058847999999, worksheet.flows_k25, 0.002); end
  def test_flows_l25; assert_in_epsilon(10.650058847999999, worksheet.flows_l25, 0.002); end
  def test_flows_m25; assert_in_epsilon(10.650058847999999, worksheet.flows_m25, 0.002); end
  def test_flows_n25; assert_in_epsilon(10.650058847999999, worksheet.flows_n25, 0.002); end
  def test_flows_o25; assert_in_epsilon(10.650058847999999, worksheet.flows_o25, 0.002); end
  def test_flows_p25; assert_in_epsilon(10.650058847999999, worksheet.flows_p25, 0.002); end
  def test_flows_as25; assert_in_delta(0.0, (worksheet.flows_as25||0), 0.002); end
  def test_flows_at25; assert_in_delta(0.0, (worksheet.flows_at25||0), 0.002); end
  def test_flows_au25; assert_in_delta(0.0, (worksheet.flows_au25||0), 0.002); end
  def test_flows_av25; assert_in_delta(0.0, (worksheet.flows_av25||0), 0.002); end
  def test_flows_aw25; assert_in_delta(0.0, (worksheet.flows_aw25||0), 0.002); end
  def test_flows_ax25; assert_in_delta(0.0, (worksheet.flows_ax25||0), 0.002); end
  def test_flows_ay25; assert_in_delta(0.0, (worksheet.flows_ay25||0), 0.002); end
  def test_flows_az25; assert_in_delta(0.0, (worksheet.flows_az25||0), 0.002); end
  def test_flows_ba25; assert_in_delta(0.0, (worksheet.flows_ba25||0), 0.002); end
  def test_flows_bb25; assert_in_delta(0.0, (worksheet.flows_bb25||0), 0.002); end
  def test_flows_c26; assert_equal("Solar", worksheet.flows_c26); end
  def test_flows_d26; assert_equal("Re.c", worksheet.flows_d26); end
  def test_flows_e26; assert_equal("Electricity grid", worksheet.flows_e26); end
  def test_flows_f26; assert_equal("R.01", worksheet.flows_f26); end
  def test_flows_g26; assert_in_delta(0.0, (worksheet.flows_g26||0), 0.002); end
  def test_flows_h26; assert_in_delta(0.0, (worksheet.flows_h26||0), 0.002); end
  def test_flows_i26; assert_in_epsilon(1.9881288, worksheet.flows_i26, 0.002); end
  def test_flows_j26; assert_in_epsilon(5.301676800000001, worksheet.flows_j26, 0.002); end
  def test_flows_k26; assert_in_epsilon(5.301676800000001, worksheet.flows_k26, 0.002); end
  def test_flows_l26; assert_in_epsilon(5.301676800000001, worksheet.flows_l26, 0.002); end
  def test_flows_m26; assert_in_epsilon(5.301676800000001, worksheet.flows_m26, 0.002); end
  def test_flows_n26; assert_in_epsilon(5.301676800000001, worksheet.flows_n26, 0.002); end
  def test_flows_o26; assert_in_epsilon(5.301676800000001, worksheet.flows_o26, 0.002); end
  def test_flows_p26; assert_in_epsilon(5.301676800000001, worksheet.flows_p26, 0.002); end
  def test_flows_as26; assert_in_delta(0.0, (worksheet.flows_as26||0), 0.002); end
  def test_flows_at26; assert_in_delta(0.0, (worksheet.flows_at26||0), 0.002); end
  def test_flows_au26; assert_in_delta(0.0, (worksheet.flows_au26||0), 0.002); end
  def test_flows_av26; assert_in_delta(0.0, (worksheet.flows_av26||0), 0.002); end
  def test_flows_aw26; assert_in_delta(0.0, (worksheet.flows_aw26||0), 0.002); end
  def test_flows_ax26; assert_in_delta(0.0, (worksheet.flows_ax26||0), 0.002); end
  def test_flows_ay26; assert_in_delta(0.0, (worksheet.flows_ay26||0), 0.002); end
  def test_flows_az26; assert_in_delta(0.0, (worksheet.flows_az26||0), 0.002); end
  def test_flows_ba26; assert_in_delta(0.0, (worksheet.flows_ba26||0), 0.002); end
  def test_flows_bb26; assert_in_delta(0.0, (worksheet.flows_bb26||0), 0.002); end
  def test_flows_c27; assert_equal("Solid", worksheet.flows_c27); end
  def test_flows_e27; assert_equal("Over generation / exports", worksheet.flows_e27); end
  def test_flows_g27; assert_in_delta(0.0, (worksheet.flows_g27||0), 0.002); end
  def test_flows_h27; assert_in_delta(0.0, (worksheet.flows_h27||0), 0.002); end
  def test_flows_i27; assert_in_delta(0.0, (worksheet.flows_i27||0), 0.002); end
  def test_flows_j27; assert_in_delta(0.0, (worksheet.flows_j27||0), 0.002); end
  def test_flows_k27; assert_in_delta(0.0, (worksheet.flows_k27||0), 0.002); end
  def test_flows_l27; assert_in_delta(0.0, (worksheet.flows_l27||0), 0.002); end
  def test_flows_m27; assert_in_delta(0.0, (worksheet.flows_m27||0), 0.002); end
  def test_flows_n27; assert_in_delta(0.0, (worksheet.flows_n27||0), 0.002); end
  def test_flows_o27; assert_in_delta(0.0, (worksheet.flows_o27||0), 0.002); end
  def test_flows_p27; assert_in_delta(0.0, (worksheet.flows_p27||0), 0.002); end
  def test_flows_as27; assert_in_delta(0.0, (worksheet.flows_as27||0), 0.002); end
  def test_flows_at27; assert_in_delta(0.0, (worksheet.flows_at27||0), 0.002); end
  def test_flows_au27; assert_in_delta(0.0, (worksheet.flows_au27||0), 0.002); end
  def test_flows_av27; assert_in_delta(0.0, (worksheet.flows_av27||0), 0.002); end
  def test_flows_aw27; assert_in_delta(0.0, (worksheet.flows_aw27||0), 0.002); end
  def test_flows_ax27; assert_in_delta(0.0, (worksheet.flows_ax27||0), 0.002); end
  def test_flows_ay27; assert_in_delta(0.0, (worksheet.flows_ay27||0), 0.002); end
  def test_flows_az27; assert_in_delta(0.0, (worksheet.flows_az27||0), 0.002); end
  def test_flows_ba27; assert_in_delta(0.0, (worksheet.flows_ba27||0), 0.002); end
  def test_flows_bb27; assert_in_delta(0.0, (worksheet.flows_bb27||0), 0.002); end
  def test_flows_c28; assert_equal("Liquid", worksheet.flows_c28); end
  def test_flows_e28; assert_equal("Over generation / exports", worksheet.flows_e28); end
  def test_flows_g28; assert_in_delta(0.0, (worksheet.flows_g28||0), 0.002); end
  def test_flows_h28; assert_in_delta(0.0, (worksheet.flows_h28||0), 0.002); end
  def test_flows_i28; assert_in_delta(0.0, (worksheet.flows_i28||0), 0.002); end
  def test_flows_j28; assert_in_delta(0.0, (worksheet.flows_j28||0), 0.002); end
  def test_flows_k28; assert_in_delta(0.0, (worksheet.flows_k28||0), 0.002); end
  def test_flows_l28; assert_in_delta(0.0, (worksheet.flows_l28||0), 0.002); end
  def test_flows_m28; assert_in_delta(0.0, (worksheet.flows_m28||0), 0.002); end
  def test_flows_n28; assert_in_delta(0.0, (worksheet.flows_n28||0), 0.002); end
  def test_flows_o28; assert_in_delta(0.0, (worksheet.flows_o28||0), 0.002); end
  def test_flows_p28; assert_in_delta(0.0, (worksheet.flows_p28||0), 0.002); end
  def test_flows_as28; assert_in_delta(0.0, (worksheet.flows_as28||0), 0.002); end
  def test_flows_at28; assert_in_delta(0.0, (worksheet.flows_at28||0), 0.002); end
  def test_flows_au28; assert_in_delta(0.0, (worksheet.flows_au28||0), 0.002); end
  def test_flows_av28; assert_in_delta(0.0, (worksheet.flows_av28||0), 0.002); end
  def test_flows_aw28; assert_in_delta(0.0, (worksheet.flows_aw28||0), 0.002); end
  def test_flows_ax28; assert_in_delta(0.0, (worksheet.flows_ax28||0), 0.002); end
  def test_flows_ay28; assert_in_delta(0.0, (worksheet.flows_ay28||0), 0.002); end
  def test_flows_az28; assert_in_delta(0.0, (worksheet.flows_az28||0), 0.002); end
  def test_flows_ba28; assert_in_delta(0.0, (worksheet.flows_ba28||0), 0.002); end
  def test_flows_bb28; assert_in_delta(0.0, (worksheet.flows_bb28||0), 0.002); end
  def test_flows_c29; assert_equal("Gas", worksheet.flows_c29); end
  def test_flows_e29; assert_equal("Over generation / exports", worksheet.flows_e29); end
  def test_flows_g29; assert_in_delta(0.0, (worksheet.flows_g29||0), 0.002); end
  def test_flows_h29; assert_in_delta(0.0, (worksheet.flows_h29||0), 0.002); end
  def test_flows_i29; assert_in_delta(0.0, (worksheet.flows_i29||0), 0.002); end
  def test_flows_j29; assert_in_delta(0.0, (worksheet.flows_j29||0), 0.002); end
  def test_flows_k29; assert_in_delta(0.0, (worksheet.flows_k29||0), 0.002); end
  def test_flows_l29; assert_in_delta(0.0, (worksheet.flows_l29||0), 0.002); end
  def test_flows_m29; assert_in_delta(0.0, (worksheet.flows_m29||0), 0.002); end
  def test_flows_n29; assert_in_delta(0.0, (worksheet.flows_n29||0), 0.002); end
  def test_flows_o29; assert_in_delta(0.0, (worksheet.flows_o29||0), 0.002); end
  def test_flows_p29; assert_in_delta(0.0, (worksheet.flows_p29||0), 0.002); end
  def test_flows_as29; assert_in_delta(0.0, (worksheet.flows_as29||0), 0.002); end
  def test_flows_at29; assert_in_delta(0.0, (worksheet.flows_at29||0), 0.002); end
  def test_flows_au29; assert_in_delta(0.0, (worksheet.flows_au29||0), 0.002); end
  def test_flows_av29; assert_in_delta(0.0, (worksheet.flows_av29||0), 0.002); end
  def test_flows_aw29; assert_in_delta(0.0, (worksheet.flows_aw29||0), 0.002); end
  def test_flows_ax29; assert_in_delta(0.0, (worksheet.flows_ax29||0), 0.002); end
  def test_flows_ay29; assert_in_delta(0.0, (worksheet.flows_ay29||0), 0.002); end
  def test_flows_az29; assert_in_delta(0.0, (worksheet.flows_az29||0), 0.002); end
  def test_flows_ba29; assert_in_delta(0.0, (worksheet.flows_ba29||0), 0.002); end
  def test_flows_bb29; assert_in_delta(0.0, (worksheet.flows_bb29||0), 0.002); end
  def test_flows_c30; assert_equal("Solid", worksheet.flows_c30); end
  def test_flows_d30; assert_equal("Therm.a", worksheet.flows_d30); end
  def test_flows_e30; assert_equal("Thermal generation", worksheet.flows_e30); end
  def test_flows_f30; assert_equal("V.03", worksheet.flows_f30); end
  def test_flows_g30; assert_in_epsilon(2433.249413442903, worksheet.flows_g30, 0.002); end
  def test_flows_h30; assert_in_epsilon(2950.869309776767, worksheet.flows_h30, 0.002); end
  def test_flows_i30; assert_in_epsilon(3330.56080700289, worksheet.flows_i30, 0.002); end
  def test_flows_j30; assert_in_epsilon(3799.1590421952333, worksheet.flows_j30, 0.002); end
  def test_flows_k30; assert_in_epsilon(4464.239353241335, worksheet.flows_k30, 0.002); end
  def test_flows_l30; assert_in_epsilon(5112.565262653402, worksheet.flows_l30, 0.002); end
  def test_flows_m30; assert_in_epsilon(5958.692466942919, worksheet.flows_m30, 0.002); end
  def test_flows_n30; assert_in_epsilon(6806.524592661305, worksheet.flows_n30, 0.002); end
  def test_flows_o30; assert_in_epsilon(7913.245431738141, worksheet.flows_o30, 0.002); end
  def test_flows_p30; assert_in_epsilon(9215.702316799165, worksheet.flows_p30, 0.002); end
  def test_flows_c31; assert_equal("Gas", worksheet.flows_c31); end
  def test_flows_d31; assert_equal("Therm.b", worksheet.flows_d31); end
  def test_flows_e31; assert_equal("Thermal generation", worksheet.flows_e31); end
  def test_flows_f31; assert_equal("C.03", worksheet.flows_f31); end
  def test_flows_g31; assert_in_delta(0.0, (worksheet.flows_g31||0), 0.002); end
  def test_flows_h31; assert_in_delta(0.0, (worksheet.flows_h31||0), 0.002); end
  def test_flows_i31; assert_in_epsilon(5.218838100000001, worksheet.flows_i31, 0.002); end
  def test_flows_j31; assert_in_epsilon(7.957116014316824, worksheet.flows_j31, 0.002); end
  def test_flows_k31; assert_in_epsilon(8.3730377055048, worksheet.flows_k31, 0.002); end
  def test_flows_l31; assert_in_epsilon(8.959585487405127, worksheet.flows_l31, 0.002); end
  def test_flows_m31; assert_in_epsilon(9.26669926983833, worksheet.flows_m31, 0.002); end
  def test_flows_n31; assert_in_epsilon(9.26669926983833, worksheet.flows_n31, 0.002); end
  def test_flows_o31; assert_in_epsilon(9.26669926983833, worksheet.flows_o31, 0.002); end
  def test_flows_p31; assert_in_epsilon(4.04786116983833, worksheet.flows_p31, 0.002); end
  def test_flows_c32; assert_equal("Liquid", worksheet.flows_c32); end
  def test_flows_d32; assert_equal("Therm.b", worksheet.flows_d32); end
  def test_flows_e32; assert_equal("Thermal generation", worksheet.flows_e32); end
  def test_flows_f32; assert_equal("C.02", worksheet.flows_f32); end
  def test_flows_g32; assert_in_delta(0.9322597315614619, worksheet.flows_g32, 0.002); end
  def test_flows_h32; assert_in_delta(0.5352953927492446, worksheet.flows_h32, 0.002); end
  def test_flows_i32; assert_in_delta(0.7532855221483983, worksheet.flows_i32, 0.002); end
  def test_flows_j32; assert_in_delta(0.5272998655038788, worksheet.flows_j32, 0.002); end
  def test_flows_k32; assert_in_delta(0.6419073478324935, worksheet.flows_k32, 0.002); end
  def test_flows_l32; assert_in_delta(0.3071137824332053, worksheet.flows_l32, 0.002); end
  def test_flows_m32; assert_in_delta(0.0, (worksheet.flows_m32||0), 0.002); end
  def test_flows_n32; assert_in_delta(0.0, (worksheet.flows_n32||0), 0.002); end
  def test_flows_o32; assert_in_delta(0.0, (worksheet.flows_o32||0), 0.002); end
  def test_flows_p32; assert_in_delta(0.0, (worksheet.flows_p32||0), 0.002); end
  def test_flows_c33; assert_equal("Nuclear", worksheet.flows_c33); end
  def test_flows_d33; assert_equal("Nuke", worksheet.flows_d33); end
  def test_flows_e33; assert_equal("Thermal generation", worksheet.flows_e33); end
  def test_flows_f33; assert_equal("N.01", worksheet.flows_f33); end
  def test_flows_g33; assert_in_epsilon(110.05713000000002, worksheet.flows_g33, 0.002); end
  def test_flows_h33; assert_in_epsilon(143.78431500000002, worksheet.flows_h33, 0.002); end
  def test_flows_i33; assert_in_epsilon(143.78431500000002, worksheet.flows_i33, 0.002); end
  def test_flows_j33; assert_in_epsilon(143.78431500000002, worksheet.flows_j33, 0.002); end
  def test_flows_k33; assert_in_epsilon(143.78431500000002, worksheet.flows_k33, 0.002); end
  def test_flows_l33; assert_in_epsilon(143.78431500000002, worksheet.flows_l33, 0.002); end
  def test_flows_m33; assert_in_epsilon(143.78431500000002, worksheet.flows_m33, 0.002); end
  def test_flows_n33; assert_in_epsilon(143.78431500000002, worksheet.flows_n33, 0.002); end
  def test_flows_o33; assert_in_epsilon(143.78431500000002, worksheet.flows_o33, 0.002); end
  def test_flows_p33; assert_in_delta(0.0, (worksheet.flows_p33||0), 0.002); end
  def test_flows_c34; assert_equal("Thermal generation", worksheet.flows_c34); end
  def test_flows_d34; assert_equal("Therm.a", worksheet.flows_d34); end
  def test_flows_e34; assert_equal("Electricity grid", worksheet.flows_e34); end
  def test_flows_f34; assert_equal("V.02", worksheet.flows_f34); end
  def test_flows_g34; assert_in_epsilon(824.7142358557012, worksheet.flows_g34, 0.002); end
  def test_flows_h34; assert_in_epsilon(979.5018717201098, worksheet.flows_h34, 0.002); end
  def test_flows_i34; assert_in_epsilon(1130.9229237977195, worksheet.flows_i34, 0.002); end
  def test_flows_j34; assert_in_epsilon(1291.2412708769657, worksheet.flows_j34, 0.002); end
  def test_flows_k34; assert_in_epsilon(1492.3670923972422, worksheet.flows_k34, 0.002); end
  def test_flows_l34; assert_in_epsilon(1746.860175302783, worksheet.flows_l34, 0.002); end
  def test_flows_m34; assert_in_epsilon(2087.19182953909, worksheet.flows_m34, 0.002); end
  def test_flows_n34; assert_in_epsilon(2442.536186727299, worksheet.flows_n34, 0.002); end
  def test_flows_o34; assert_in_epsilon(2852.022897185728, worksheet.flows_o34, 0.002); end
  def test_flows_p34; assert_in_epsilon(3344.895596308811, worksheet.flows_p34, 0.002); end
  def test_flows_c35; assert_equal("Thermal generation", worksheet.flows_c35); end
  def test_flows_d35; assert_equal("Therm.b", worksheet.flows_d35); end
  def test_flows_e35; assert_equal("Electricity grid", worksheet.flows_e35); end
  def test_flows_f35; assert_equal("V.02", worksheet.flows_f35); end
  def test_flows_g35; assert_in_epsilon(35.49889177920001, worksheet.flows_g35, 0.002); end
  def test_flows_h35; assert_in_epsilon(46.188163575000004, worksheet.flows_h35, 0.002); end
  def test_flows_i35; assert_in_epsilon(48.768227212315075, worksheet.flows_i35, 0.002); end
  def test_flows_j35; assert_in_epsilon(49.52442718187444, worksheet.flows_j35, 0.002); end
  def test_flows_k35; assert_in_epsilon(49.70205125892923, worksheet.flows_k35, 0.002); end
  def test_flows_l35; assert_in_epsilon(49.786339951394986, worksheet.flows_l35, 0.002); end
  def test_flows_m35; assert_in_epsilon(49.786339951394986, worksheet.flows_m35, 0.002); end
  def test_flows_n35; assert_in_epsilon(49.786339951394986, worksheet.flows_n35, 0.002); end
  def test_flows_o35; assert_in_epsilon(49.786339951394986, worksheet.flows_o35, 0.002); end
  def test_flows_p35; assert_in_epsilon(1.2703168633949797, worksheet.flows_p35, 0.002); end
  def test_flows_c36; assert_equal("Thermal generation", worksheet.flows_c36); end
  def test_flows_e36; assert_equal("Losses", worksheet.flows_e36); end
  def test_flows_g36; assert_in_epsilon(1684.0256755395633, worksheet.flows_g36, 0.002); end
  def test_flows_h36; assert_in_epsilon(2069.498884874406, worksheet.flows_h36, 0.002); end
  def test_flows_i36; assert_in_epsilon(2300.626094615004, worksheet.flows_i36, 0.002); end
  def test_flows_j36; assert_in_epsilon(2610.6620750162137, worksheet.flows_j36, 0.002); end
  def test_flows_k36; assert_in_epsilon(3074.969469638501, worksheet.flows_k36, 0.002); end
  def test_flows_l36; assert_in_epsilon(3468.969761669063, worksheet.flows_l36, 0.002); end
  def test_flows_m36; assert_in_epsilon(3974.7653117222726, worksheet.flows_m36, 0.002); end
  def test_flows_n36; assert_in_epsilon(4467.25308025245, worksheet.flows_n36, 0.002); end
  def test_flows_o36; assert_in_epsilon(5164.487208870856, worksheet.flows_o36, 0.002); end
  def test_flows_p36; assert_in_epsilon(5873.584264796797, worksheet.flows_p36, 0.002); end
  def test_flows_c37; assert_equal("Electricity imports", worksheet.flows_c37); end
  def test_flows_d37; assert_equal("ElcDSB.i", worksheet.flows_d37); end
  def test_flows_e37; assert_equal("Electricity grid", worksheet.flows_e37); end
  def test_flows_f37; assert_equal("Y.02", worksheet.flows_f37); end
  def test_flows_g37; assert_in_epsilon(24.81858000000011, worksheet.flows_g37, 0.002); end
  def test_flows_h37; assert_in_epsilon(24.818579999999997, worksheet.flows_h37, 0.002); end
  def test_flows_i37; assert_in_epsilon(19.138211999999996, worksheet.flows_i37, 0.002); end
  def test_flows_j37; assert_in_epsilon(19.13821200000045, worksheet.flows_j37, 0.002); end
  def test_flows_k37; assert_in_epsilon(19.138211999999996, worksheet.flows_k37, 0.002); end
  def test_flows_l37; assert_in_epsilon(19.138212000000223, worksheet.flows_l37, 0.002); end
  def test_flows_m37; assert_in_epsilon(19.138211999999996, worksheet.flows_m37, 0.002); end
  def test_flows_n37; assert_in_epsilon(19.138211999999996, worksheet.flows_n37, 0.002); end
  def test_flows_o37; assert_in_epsilon(19.138211999999086, worksheet.flows_o37, 0.002); end
  def test_flows_p37; assert_in_epsilon(19.13821199999954, worksheet.flows_p37, 0.002); end
  def test_flows_c38; assert_equal("Wind", worksheet.flows_c38); end
  def test_flows_d38; assert_equal("Re.a", worksheet.flows_d38); end
  def test_flows_e38; assert_equal("Electricity grid", worksheet.flows_e38); end
  def test_flows_f38; assert_equal("V.02", worksheet.flows_f38); end
  def test_flows_g38; assert_in_delta(0.02592772416, worksheet.flows_g38, 0.002); end
  def test_flows_h38; assert_in_delta(0.06859359936, worksheet.flows_h38, 0.002); end
  def test_flows_i38; assert_in_epsilon(11.57035420224, worksheet.flows_i38, 0.002); end
  def test_flows_j38; assert_in_epsilon(22.589636970240004, worksheet.flows_j38, 0.002); end
  def test_flows_k38; assert_in_epsilon(22.589636970240004, worksheet.flows_k38, 0.002); end
  def test_flows_l38; assert_in_epsilon(22.589636970240004, worksheet.flows_l38, 0.002); end
  def test_flows_m38; assert_in_epsilon(22.589636970240004, worksheet.flows_m38, 0.002); end
  def test_flows_n38; assert_in_epsilon(22.589636970240004, worksheet.flows_n38, 0.002); end
  def test_flows_o38; assert_in_epsilon(22.589636970240004, worksheet.flows_o38, 0.002); end
  def test_flows_p38; assert_in_epsilon(22.589636970240004, worksheet.flows_p38, 0.002); end
  def test_flows_c39; assert_equal("Hydro", worksheet.flows_c39); end
  def test_flows_d39; assert_equal("Re.b", worksheet.flows_d39); end
  def test_flows_e39; assert_equal("Electricity grid", worksheet.flows_e39); end
  def test_flows_f39; assert_equal("R.06", worksheet.flows_f39); end
  def test_flows_g39; assert_in_epsilon(5.285898, worksheet.flows_g39, 0.002); end
  def test_flows_h39; assert_in_epsilon(5.285898, worksheet.flows_h39, 0.002); end
  def test_flows_i39; assert_in_epsilon(5.317455600000001, worksheet.flows_i39, 0.002); end
  def test_flows_j39; assert_in_epsilon(5.396349600000001, worksheet.flows_j39, 0.002); end
  def test_flows_k39; assert_in_epsilon(4.8440916, worksheet.flows_k39, 0.002); end
  def test_flows_l39; assert_in_epsilon(4.8440916, worksheet.flows_l39, 0.002); end
  def test_flows_m39; assert_in_epsilon(4.8440916, worksheet.flows_m39, 0.002); end
  def test_flows_n39; assert_in_epsilon(4.8440916, worksheet.flows_n39, 0.002); end
  def test_flows_o39; assert_in_epsilon(4.8440916, worksheet.flows_o39, 0.002); end
  def test_flows_p39; assert_in_epsilon(4.8440916, worksheet.flows_p39, 0.002); end
  def test_flows_c40; assert_equal("Electricity grid", worksheet.flows_c40); end
  def test_flows_e40; assert_equal("Over generation / exports", worksheet.flows_e40); end
  def test_flows_g40; assert_in_epsilon(49.63716000000022, worksheet.flows_g40, 0.002); end
  def test_flows_h40; assert_in_epsilon(49.637159999999994, worksheet.flows_h40, 0.002); end
  def test_flows_i40; assert_in_epsilon(38.27642399999999, worksheet.flows_i40, 0.002); end
  def test_flows_j40; assert_in_epsilon(38.2764240000009, worksheet.flows_j40, 0.002); end
  def test_flows_k40; assert_in_epsilon(38.27642399999999, worksheet.flows_k40, 0.002); end
  def test_flows_l40; assert_in_epsilon(38.276424000000446, worksheet.flows_l40, 0.002); end
  def test_flows_m40; assert_in_epsilon(38.27642399999999, worksheet.flows_m40, 0.002); end
  def test_flows_n40; assert_in_epsilon(38.27642399999999, worksheet.flows_n40, 0.002); end
  def test_flows_o40; assert_in_epsilon(38.27642399999817, worksheet.flows_o40, 0.002); end
  def test_flows_p40; assert_in_epsilon(38.27642399999908, worksheet.flows_p40, 0.002); end
  def test_flows_c41; assert_equal("Electricity grid", worksheet.flows_c41); end
  def test_flows_d41; assert_equal("ElcDSB.d", worksheet.flows_d41); end
  def test_flows_e41; assert_equal("Losses", worksheet.flows_e41); end
  def test_flows_f41; assert_equal("X.02", worksheet.flows_f41); end
  def test_flows_g41; assert_in_epsilon(90.84932115895033, worksheet.flows_g41, 0.002); end
  def test_flows_h41; assert_in_epsilon(158.872537120292, worksheet.flows_h41, 0.002); end
  def test_flows_i41; assert_in_epsilon(186.70840333995676, worksheet.flows_i41, 0.002); end
  def test_flows_j41; assert_in_epsilon(220.79587126600217, worksheet.flows_j41, 0.002); end
  def test_flows_k41; assert_in_epsilon(262.02276473731916, worksheet.flows_k41, 0.002); end
  def test_flows_l41; assert_in_epsilon(312.1781911524362, worksheet.flows_l41, 0.002); end
  def test_flows_m41; assert_in_epsilon(375.63301921669614, worksheet.flows_m41, 0.002); end
  def test_flows_n41; assert_in_epsilon(444.9806807428328, worksheet.flows_n41, 0.002); end
  def test_flows_o41; assert_in_epsilon(519.2899254030244, worksheet.flows_o41, 0.002); end
  def test_flows_p41; assert_in_epsilon(598.2850091705317, worksheet.flows_p41, 0.002); end
  def test_flows_w41; assert_in_epsilon(11878.69458393422, worksheet.flows_w41, 0.002); end
  def test_flows_x41; assert_in_epsilon(14054.575970738855, worksheet.flows_x41, 0.002); end
  def test_flows_y41; assert_in_epsilon(15969.313877640096, worksheet.flows_y41, 0.002); end
  def test_flows_z41; assert_in_epsilon(18221.896397391316, worksheet.flows_z41, 0.002); end
  def test_flows_aa41; assert_in_epsilon(21280.823121527028, worksheet.flows_aa41, 0.002); end
  def test_flows_ab41; assert_in_epsilon(24350.48126817367, worksheet.flows_ab41, 0.002); end
  def test_flows_ac41; assert_in_epsilon(28372.162470031337, worksheet.flows_ac41, 0.002); end
  def test_flows_ad41; assert_in_epsilon(32290.979871831987, worksheet.flows_ad41, 0.002); end
  def test_flows_ae41; assert_in_epsilon(37347.9323143517, worksheet.flows_ae41, 0.002); end
  def test_flows_af41; assert_in_epsilon(42629.31808732559, worksheet.flows_af41, 0.002); end
  def test_flows_ah41; assert_in_epsilon(14319.158094355698, worksheet.flows_ah41, 0.002); end
  def test_flows_ai41; assert_in_epsilon(16850.38745064682, worksheet.flows_ai41, 0.002); end
  def test_flows_aj41; assert_in_epsilon(18895.631053454174, worksheet.flows_aj41, 0.002); end
  def test_flows_ak41; assert_in_epsilon(21339.1690149611, worksheet.flows_ak41, 0.002); end
  def test_flows_al41; assert_in_epsilon(24746.993651198147, worksheet.flows_al41, 0.002); end
  def test_flows_am41; assert_in_epsilon(28106.671599478897, worksheet.flows_am41, 0.002); end
  def test_flows_an41; assert_in_epsilon(32533.20811779639, worksheet.flows_an41, 0.002); end
  def test_flows_ao41; assert_in_epsilon(36515.08202694097, worksheet.flows_ao41, 0.002); end
  def test_flows_ap41; assert_in_epsilon(42180.11425555876, worksheet.flows_ap41, 0.002); end
  def test_flows_aq41; assert_in_epsilon(47878.304007618935, worksheet.flows_aq41, 0.002); end
  def test_flows_c42; assert_equal("Gas", worksheet.flows_c42); end
  def test_flows_d42; assert_equal("H2prod", worksheet.flows_d42); end
  def test_flows_e42; assert_equal("H2 conversion", worksheet.flows_e42); end
  def test_flows_f42; assert_equal("V.05", worksheet.flows_f42); end
  def test_flows_g42; assert_in_delta(0.0, (worksheet.flows_g42||0), 0.002); end
  def test_flows_h42; assert_in_delta(0.0, (worksheet.flows_h42||0), 0.002); end
  def test_flows_i42; assert_in_delta(0.0, (worksheet.flows_i42||0), 0.002); end
  def test_flows_j42; assert_in_delta(0.0, (worksheet.flows_j42||0), 0.002); end
  def test_flows_k42; assert_in_delta(0.0, (worksheet.flows_k42||0), 0.002); end
  def test_flows_l42; assert_in_delta(0.0, (worksheet.flows_l42||0), 0.002); end
  def test_flows_m42; assert_in_delta(0.0, (worksheet.flows_m42||0), 0.002); end
  def test_flows_n42; assert_in_delta(0.0, (worksheet.flows_n42||0), 0.002); end
  def test_flows_o42; assert_in_delta(0.0, (worksheet.flows_o42||0), 0.002); end
  def test_flows_p42; assert_in_delta(0.0, (worksheet.flows_p42||0), 0.002); end
  def test_flows_c43; assert_equal("Electricity grid", worksheet.flows_c43); end
  def test_flows_d43; assert_equal("H2prod", worksheet.flows_d43); end
  def test_flows_e43; assert_equal("H2 conversion", worksheet.flows_e43); end
  def test_flows_f43; assert_equal("V.01", worksheet.flows_f43); end
  def test_flows_g43; assert_in_delta(0.0, (worksheet.flows_g43||0), 0.002); end
  def test_flows_h43; assert_in_delta(0.0, (worksheet.flows_h43||0), 0.002); end
  def test_flows_i43; assert_in_delta(0.0, (worksheet.flows_i43||0), 0.002); end
  def test_flows_j43; assert_in_delta(0.0, (worksheet.flows_j43||0), 0.002); end
  def test_flows_k43; assert_in_delta(0.0, (worksheet.flows_k43||0), 0.002); end
  def test_flows_l43; assert_in_delta(0.0, (worksheet.flows_l43||0), 0.002); end
  def test_flows_m43; assert_in_delta(0.0, (worksheet.flows_m43||0), 0.002); end
  def test_flows_n43; assert_in_delta(0.0, (worksheet.flows_n43||0), 0.002); end
  def test_flows_o43; assert_in_delta(0.0, (worksheet.flows_o43||0), 0.002); end
  def test_flows_p43; assert_in_delta(0.0, (worksheet.flows_p43||0), 0.002); end
  def test_flows_w43; assert_in_epsilon(-2440.4635104214776, worksheet.flows_w43, 0.002); end
  def test_flows_x43; assert_in_epsilon(-2795.811479907965, worksheet.flows_x43, 0.002); end
  def test_flows_y43; assert_in_epsilon(-2926.317175814078, worksheet.flows_y43, 0.002); end
  def test_flows_z43; assert_in_epsilon(-3117.2726175697826, worksheet.flows_z43, 0.002); end
  def test_flows_aa43; assert_in_epsilon(-3466.170529671119, worksheet.flows_aa43, 0.002); end
  def test_flows_ab43; assert_in_epsilon(-3756.190331305228, worksheet.flows_ab43, 0.002); end
  def test_flows_ac43; assert_in_epsilon(-4161.045647765051, worksheet.flows_ac43, 0.002); end
  def test_flows_ad43; assert_in_epsilon(-4224.10215510898, worksheet.flows_ad43, 0.002); end
  def test_flows_ae43; assert_in_epsilon(-4832.1819412070545, worksheet.flows_ae43, 0.002); end
  def test_flows_af43; assert_in_epsilon(-5248.985920293344, worksheet.flows_af43, 0.002); end
  def test_flows_c44; assert_equal("H2 conversion", worksheet.flows_c44); end
  def test_flows_d44; assert_equal("H2prod", worksheet.flows_d44); end
  def test_flows_e44; assert_equal("H2", worksheet.flows_e44); end
  def test_flows_f44; assert_equal("V.12", worksheet.flows_f44); end
  def test_flows_g44; assert_in_delta(0.0, (worksheet.flows_g44||0), 0.002); end
  def test_flows_h44; assert_in_delta(0.0, (worksheet.flows_h44||0), 0.002); end
  def test_flows_i44; assert_in_delta(0.0, (worksheet.flows_i44||0), 0.002); end
  def test_flows_j44; assert_in_delta(0.0, (worksheet.flows_j44||0), 0.002); end
  def test_flows_k44; assert_in_delta(0.0, (worksheet.flows_k44||0), 0.002); end
  def test_flows_l44; assert_in_delta(0.0, (worksheet.flows_l44||0), 0.002); end
  def test_flows_m44; assert_in_delta(0.0, (worksheet.flows_m44||0), 0.002); end
  def test_flows_n44; assert_in_delta(0.0, (worksheet.flows_n44||0), 0.002); end
  def test_flows_o44; assert_in_delta(0.0, (worksheet.flows_o44||0), 0.002); end
  def test_flows_p44; assert_in_delta(0.0, (worksheet.flows_p44||0), 0.002); end
  def test_flows_c45; assert_equal("H2 conversion", worksheet.flows_c45); end
  def test_flows_d45; assert_equal("H2prod", worksheet.flows_d45); end
  def test_flows_e45; assert_equal("Losses", worksheet.flows_e45); end
  def test_flows_f45; assert_equal("X.01", worksheet.flows_f45); end
  def test_flows_g45; assert_in_delta(0.0, (worksheet.flows_g45||0), 0.002); end
  def test_flows_h45; assert_in_delta(0.0, (worksheet.flows_h45||0), 0.002); end
  def test_flows_i45; assert_in_delta(0.0, (worksheet.flows_i45||0), 0.002); end
  def test_flows_j45; assert_in_delta(0.0, (worksheet.flows_j45||0), 0.002); end
  def test_flows_k45; assert_in_delta(0.0, (worksheet.flows_k45||0), 0.002); end
  def test_flows_l45; assert_in_delta(0.0, (worksheet.flows_l45||0), 0.002); end
  def test_flows_m45; assert_in_delta(0.0, (worksheet.flows_m45||0), 0.002); end
  def test_flows_n45; assert_in_delta(0.0, (worksheet.flows_n45||0), 0.002); end
  def test_flows_o45; assert_in_delta(0.0, (worksheet.flows_o45||0), 0.002); end
  def test_flows_p45; assert_in_delta(0.0, (worksheet.flows_p45||0), 0.002); end
  def test_flows_c46; assert_equal("H2", worksheet.flows_c46); end
  def test_flows_d46; assert_equal("TRA.a", worksheet.flows_d46); end
  def test_flows_e46; assert_equal("Road transport", worksheet.flows_e46); end
  def test_flows_f46; assert_equal("V.12", worksheet.flows_f46); end
  def test_flows_g46; assert_in_delta(0.0, (worksheet.flows_g46||0), 0.002); end
  def test_flows_h46; assert_in_delta(0.0, (worksheet.flows_h46||0), 0.002); end
  def test_flows_i46; assert_in_delta(0.0, (worksheet.flows_i46||0), 0.002); end
  def test_flows_j46; assert_in_delta(0.0, (worksheet.flows_j46||0), 0.002); end
  def test_flows_k46; assert_in_delta(0.0, (worksheet.flows_k46||0), 0.002); end
  def test_flows_l46; assert_in_delta(0.0, (worksheet.flows_l46||0), 0.002); end
  def test_flows_m46; assert_in_delta(0.0, (worksheet.flows_m46||0), 0.002); end
  def test_flows_n46; assert_in_delta(0.0, (worksheet.flows_n46||0), 0.002); end
  def test_flows_o46; assert_in_delta(0.0, (worksheet.flows_o46||0), 0.002); end
  def test_flows_p46; assert_in_delta(0.0, (worksheet.flows_p46||0), 0.002); end
  def test_flows_c47; assert_equal("Electricity grid", worksheet.flows_c47); end
  def test_flows_e47; assert_equal("Heating - homes", worksheet.flows_e47); end
  def test_flows_f47; assert_equal("V.01", worksheet.flows_f47); end
  def test_flows_g47; assert_in_epsilon(18.278014600654977, worksheet.flows_g47, 0.002); end
  def test_flows_h47; assert_in_epsilon(20.443606211346424, worksheet.flows_h47, 0.002); end
  def test_flows_i47; assert_in_epsilon(23.17406759376472, worksheet.flows_i47, 0.002); end
  def test_flows_j47; assert_in_epsilon(25.964592711263727, worksheet.flows_j47, 0.002); end
  def test_flows_k47; assert_in_epsilon(28.772210690549997, worksheet.flows_k47, 0.002); end
  def test_flows_l47; assert_in_epsilon(31.508300263582537, worksheet.flows_l47, 0.002); end
  def test_flows_m47; assert_in_epsilon(34.59353444729231, worksheet.flows_m47, 0.002); end
  def test_flows_n47; assert_in_epsilon(37.64426158470966, worksheet.flows_n47, 0.002); end
  def test_flows_o47; assert_in_epsilon(41.225484013215876, worksheet.flows_o47, 0.002); end
  def test_flows_p47; assert_in_epsilon(44.72029362447997, worksheet.flows_p47, 0.002); end
  def test_flows_c48; assert_equal("Solid", worksheet.flows_c48); end
  def test_flows_e48; assert_equal("Heating - homes", worksheet.flows_e48); end
  def test_flows_f48; assert_equal("V.03", worksheet.flows_f48); end
  def test_flows_g48; assert_in_epsilon(21.32467675301719, worksheet.flows_g48, 0.002); end
  def test_flows_h48; assert_in_epsilon(22.145699101366496, worksheet.flows_h48, 0.002); end
  def test_flows_i48; assert_in_epsilon(23.299658471439724, worksheet.flows_i48, 0.002); end
  def test_flows_j48; assert_in_epsilon(24.37399126921341, worksheet.flows_j48, 0.002); end
  def test_flows_k48; assert_in_epsilon(25.351911192696033, worksheet.flows_k48, 0.002); end
  def test_flows_l48; assert_in_epsilon(26.182475259720988, worksheet.flows_l48, 0.002); end
  def test_flows_m48; assert_in_epsilon(24.440349856320147, worksheet.flows_m48, 0.002); end
  def test_flows_n48; assert_in_epsilon(22.62257453811536, worksheet.flows_n48, 0.002); end
  def test_flows_o48; assert_in_epsilon(20.073036727201576, worksheet.flows_o48, 0.002); end
  def test_flows_p48; assert_in_epsilon(17.514287536624373, worksheet.flows_p48, 0.002); end
  def test_flows_s48; assert_equal("For referencing", worksheet.flows_s48); end
  def test_flows_v48; assert_equal("FROM", worksheet.flows_v48); end
  def test_flows_y48; assert_equal("TO", worksheet.flows_y48); end
  def test_flows_c49; assert_equal("Liquid", worksheet.flows_c49); end
  def test_flows_e49; assert_equal("Heating - homes", worksheet.flows_e49); end
  def test_flows_f49; assert_equal("V.04", worksheet.flows_f49); end
  def test_flows_g49; assert_in_epsilon(5.3342914487858675, worksheet.flows_g49, 0.002); end
  def test_flows_h49; assert_in_epsilon(5.358170678566345, worksheet.flows_h49, 0.002); end
  def test_flows_i49; assert_in_epsilon(5.428703537355805, worksheet.flows_i49, 0.002); end
  def test_flows_j49; assert_in_epsilon(5.4606820467496275, worksheet.flows_j49, 0.002); end
  def test_flows_k49; assert_in_epsilon(5.453295885140176, worksheet.flows_k49, 0.002); end
  def test_flows_l49; assert_in_epsilon(5.399359158334526, worksheet.flows_l49, 0.002); end
  def test_flows_m49; assert_in_epsilon(5.004554464813791, worksheet.flows_m49, 0.002); end
  def test_flows_n49; assert_in_epsilon(4.627484595515089, worksheet.flows_n49, 0.002); end
  def test_flows_o49; assert_in_epsilon(4.195337238597847, worksheet.flows_o49, 0.002); end
  def test_flows_p49; assert_in_epsilon(3.809312551429139, worksheet.flows_p49, 0.002); end
  def test_flows_s49; assert_equal("RES.L", worksheet.flows_s49); end
  def test_flows_t49; assert_equal("RES.W", worksheet.flows_t49); end
  def test_flows_c50; assert_equal("Gas", worksheet.flows_c50); end
  def test_flows_e50; assert_equal("Heating - homes", worksheet.flows_e50); end
  def test_flows_f50; assert_equal("V.05", worksheet.flows_f50); end
  def test_flows_g50; assert_in_delta(0.015068956280176871, worksheet.flows_g50, 0.002); end
  def test_flows_h50; assert_in_delta(0.014386689741063219, worksheet.flows_h50, 0.002); end
  def test_flows_i50; assert_in_delta(0.013127949088388866, worksheet.flows_i50, 0.002); end
  def test_flows_j50; assert_in_delta(0.01147314941568747, worksheet.flows_j50, 0.002); end
  def test_flows_k50; assert_in_delta(0.009427891121885067, worksheet.flows_k50, 0.002); end
  def test_flows_l50; assert_in_delta(0.007000887302485457, worksheet.flows_l50, 0.002); end
  def test_flows_m50; assert_in_delta(0.005891673284144599, worksheet.flows_m50, 0.002); end
  def test_flows_n50; assert_in_delta(0.004638897568401214, worksheet.flows_n50, 0.002); end
  def test_flows_o50; assert_in_delta(0.002896073900201351, worksheet.flows_o50, 0.002); end
  def test_flows_p50; assert_in_delta(0.0010107417237876924, worksheet.flows_p50, 0.002); end
  def test_flows_s50; assert_equal("RES.R", worksheet.flows_s50); end
  def test_flows_t50; assert_equal("RES.H", worksheet.flows_t50); end
  def test_flows_v50; assert_equal("Domestic coal production", worksheet.flows_v50); end
  def test_flows_w50; assert_in_epsilon(12694.075383109057, worksheet.flows_w50, 0.002); end
  def test_flows_y50; assert_equal("Coal", worksheet.flows_y50); end
  def test_flows_aa50; assert_in_epsilon(12694.075383109057, worksheet.flows_aa50, 0.002); end
  def test_flows_c51; assert_equal("Biomass", worksheet.flows_c51); end
  def test_flows_e51; assert_equal("Heating - homes", worksheet.flows_e51); end
  def test_flows_f51; assert_equal("V.09", worksheet.flows_f51); end
  def test_flows_g51; assert_in_epsilon(16.266345503722842, worksheet.flows_g51, 0.002); end
  def test_flows_h51; assert_in_epsilon(15.58958607998778, worksheet.flows_h51, 0.002); end
  def test_flows_i51; assert_in_epsilon(14.894940505817708, worksheet.flows_i51, 0.002); end
  def test_flows_j51; assert_in_epsilon(14.06956899348285, worksheet.flows_j51, 0.002); end
  def test_flows_k51; assert_in_epsilon(13.131051287420403, worksheet.flows_k51, 0.002); end
  def test_flows_l51; assert_in_epsilon(12.083649399995991, worksheet.flows_l51, 0.002); end
  def test_flows_m51; assert_in_epsilon(10.468906059672689, worksheet.flows_m51, 0.002); end
  def test_flows_n51; assert_in_epsilon(8.936512238393204, worksheet.flows_n51, 0.002); end
  def test_flows_o51; assert_in_epsilon(7.231605011555197, worksheet.flows_o51, 0.002); end
  def test_flows_p51; assert_in_epsilon(5.708576313928643, worksheet.flows_p51, 0.002); end
  def test_flows_s51; assert_equal("RES.N", worksheet.flows_s51); end
  def test_flows_t51; assert_equal("RES.K", worksheet.flows_t51); end
  def test_flows_v51; assert_equal("Crude oil imports", worksheet.flows_v51); end
  def test_flows_w51; assert_in_epsilon(1788.4322143915965, worksheet.flows_w51, 0.002); end
  def test_flows_y51; assert_equal("Oil", worksheet.flows_y51); end
  def test_flows_aa51; assert_in_epsilon(1788.4322143915965, worksheet.flows_aa51, 0.002); end
  def test_flows_c52; assert_equal("Electricity grid", worksheet.flows_c52); end
  def test_flows_e52; assert_equal("Cooking and appliances - homes", worksheet.flows_e52); end
  def test_flows_f52; assert_equal("V.01", worksheet.flows_f52); end
  def test_flows_g52; assert_in_epsilon(79.26102235893828, worksheet.flows_g52, 0.002); end
  def test_flows_h52; assert_in_epsilon(89.16183296764322, worksheet.flows_h52, 0.002); end
  def test_flows_i52; assert_in_epsilon(101.82336579955468, worksheet.flows_i52, 0.002); end
  def test_flows_j52; assert_in_epsilon(114.83023537819896, worksheet.flows_j52, 0.002); end
  def test_flows_k52; assert_in_epsilon(127.98401319022592, worksheet.flows_k52, 0.002); end
  def test_flows_l52; assert_in_epsilon(140.8796783052747, worksheet.flows_l52, 0.002); end
  def test_flows_m52; assert_in_epsilon(154.44751851667368, worksheet.flows_m52, 0.002); end
  def test_flows_n52; assert_in_epsilon(167.72542419446054, worksheet.flows_n52, 0.002); end
  def test_flows_o52; assert_in_epsilon(183.15376441971847, worksheet.flows_o52, 0.002); end
  def test_flows_p52; assert_in_epsilon(198.00795846995516, worksheet.flows_p52, 0.002); end
  def test_flows_s52; assert_equal("RES.O", worksheet.flows_s52); end
  def test_flows_v52; assert_equal("Domestic gas production", worksheet.flows_v52); end
  def test_flows_w52; assert_in_delta(0.0, (worksheet.flows_w52||0), 0.002); end
  def test_flows_y52; assert_equal("Gas", worksheet.flows_y52); end
  def test_flows_aa52; assert_in_epsilon(660.6709754069301, worksheet.flows_aa52, 0.002); end
  def test_flows_c53; assert_equal("Solid", worksheet.flows_c53); end
  def test_flows_e53; assert_equal("Cooking and appliances - homes", worksheet.flows_e53); end
  def test_flows_f53; assert_equal("V.03", worksheet.flows_f53); end
  def test_flows_g53; assert_in_epsilon(15.100491858366102, worksheet.flows_g53, 0.002); end
  def test_flows_h53; assert_in_epsilon(13.052335372611548, worksheet.flows_h53, 0.002); end
  def test_flows_i53; assert_in_epsilon(10.88372808003203, worksheet.flows_i53, 0.002); end
  def test_flows_j53; assert_in_epsilon(8.720652454072175, worksheet.flows_j53, 0.002); end
  def test_flows_k53; assert_in_epsilon(6.626708937591596, worksheet.flows_k53, 0.002); end
  def test_flows_l53; assert_in_epsilon(4.65693925995718, worksheet.flows_l53, 0.002); end
  def test_flows_m53; assert_in_epsilon(3.174382263600136, worksheet.flows_m53, 0.002); end
  def test_flows_n53; assert_in_epsilon(1.9011172762556503, worksheet.flows_n53, 0.002); end
  def test_flows_o53; assert_in_delta(0.7863965403610562, worksheet.flows_o53, 0.002); end
  def test_flows_p53; assert_in_delta(0.0, (worksheet.flows_p53||0), 0.002); end
  def test_flows_v53; assert_equal("Gas imports", worksheet.flows_v53); end
  def test_flows_w53; assert_in_epsilon(660.6709754069301, worksheet.flows_w53, 0.002); end
  def test_flows_y53; assert_equal("Bio-conversion", worksheet.flows_y53); end
  def test_flows_aa53; assert_in_epsilon(36.93021205966322, worksheet.flows_aa53, 0.002); end
  def test_flows_c54; assert_equal("Liquid", worksheet.flows_c54); end
  def test_flows_e54; assert_equal("Cooking and appliances - homes", worksheet.flows_e54); end
  def test_flows_f54; assert_equal("V.04", worksheet.flows_f54); end
  def test_flows_g54; assert_in_epsilon(3.4511677094739746, worksheet.flows_g54, 0.002); end
  def test_flows_h54; assert_in_epsilon(3.4798161996520305, worksheet.flows_h54, 0.002); end
  def test_flows_i54; assert_in_epsilon(3.521730295180215, worksheet.flows_i54, 0.002); end
  def test_flows_j54; assert_in_epsilon(3.548776171765986, worksheet.flows_j54, 0.002); end
  def test_flows_k54; assert_in_epsilon(3.561452632411384, worksheet.flows_k54, 0.002); end
  def test_flows_l54; assert_in_epsilon(3.5556785954963654, worksheet.flows_l54, 0.002); end
  def test_flows_m54; assert_in_epsilon(3.3173770930263062, worksheet.flows_m54, 0.002); end
  def test_flows_n54; assert_in_epsilon(3.056749307015346, worksheet.flows_n54, 0.002); end
  def test_flows_o54; assert_in_epsilon(2.666014727721953, worksheet.flows_o54, 0.002); end
  def test_flows_p54; assert_in_epsilon(2.256719705100393, worksheet.flows_p54, 0.002); end
  def test_flows_v54; assert_equal("Agricultural 'waste'", worksheet.flows_v54); end
  def test_flows_w54; assert_in_epsilon(36.93021205966322, worksheet.flows_w54, 0.002); end
  def test_flows_y54; assert_equal("Solid", worksheet.flows_y54); end
  def test_flows_aa54; assert_in_epsilon(12422.712097689217, worksheet.flows_aa54, 0.002); end
  def test_flows_c55; assert_equal("Gas", worksheet.flows_c55); end
  def test_flows_e55; assert_equal("Cooking and appliances - homes", worksheet.flows_e55); end
  def test_flows_f55; assert_equal("V.05", worksheet.flows_f55); end
  def test_flows_g55; assert_in_epsilon(2.4633649553347055, worksheet.flows_g55, 0.002); end
  def test_flows_h55; assert_in_epsilon(2.5137752989703186, worksheet.flows_h55, 0.002); end
  def test_flows_i55; assert_in_epsilon(2.5974927341070035, worksheet.flows_i55, 0.002); end
  def test_flows_j55; assert_in_epsilon(2.6758840620915763, worksheet.flows_j55, 0.002); end
  def test_flows_k55; assert_in_epsilon(2.748522930975043, worksheet.flows_k55, 0.002); end
  def test_flows_l55; assert_in_epsilon(2.8111697221347667, worksheet.flows_l55, 0.002); end
  def test_flows_m55; assert_in_epsilon(2.8447971148211133, worksheet.flows_m55, 0.002); end
  def test_flows_n55; assert_in_epsilon(2.8779691876578735, worksheet.flows_n55, 0.002); end
  def test_flows_o55; assert_in_epsilon(2.9180932601088565, worksheet.flows_o55, 0.002); end
  def test_flows_p55; assert_in_epsilon(2.960900363107184, worksheet.flows_p55, 0.002); end
  def test_flows_v55; assert_equal("Bio-conversion", worksheet.flows_v55); end
  def test_flows_w55; assert_in_epsilon(8.411346528049371, worksheet.flows_w55, 0.002); end
  def test_flows_y55; assert_equal("Liquid", worksheet.flows_y55); end
  def test_flows_aa55; assert_in_epsilon(2003.2925218483629, worksheet.flows_aa55, 0.002); end
  def test_flows_c56; assert_equal("Biomass", worksheet.flows_c56); end
  def test_flows_e56; assert_equal("Cooking and appliances - homes", worksheet.flows_e56); end
  def test_flows_f56; assert_equal("V.09", worksheet.flows_f56); end
  def test_flows_g56; assert_in_epsilon(47.457671511457704, worksheet.flows_g56, 0.002); end
  def test_flows_h56; assert_in_epsilon(50.0527522376054, worksheet.flows_h56, 0.002); end
  def test_flows_i56; assert_in_epsilon(52.897024468055974, worksheet.flows_i56, 0.002); end
  def test_flows_j56; assert_in_epsilon(54.664715353633504, worksheet.flows_j56, 0.002); end
  def test_flows_k56; assert_in_epsilon(55.2291122942373, worksheet.flows_k56, 0.002); end
  def test_flows_l56; assert_in_epsilon(54.425451988779976, worksheet.flows_l56, 0.002); end
  def test_flows_m56; assert_in_epsilon(47.371637838405945, worksheet.flows_m56, 0.002); end
  def test_flows_n56; assert_in_epsilon(40.28965286496314, worksheet.flows_n56, 0.002); end
  def test_flows_o56; assert_in_epsilon(31.716023401114626, worksheet.flows_o56, 0.002); end
  def test_flows_p56; assert_in_epsilon(23.465518541594438, worksheet.flows_p56, 0.002); end
  def test_flows_v56; assert_equal("Biofuel imports", worksheet.flows_v56); end
  def test_flows_w56; assert_in_delta(0.0, (worksheet.flows_w56||0), 0.002); end
  def test_flows_y56; assert_equal("Coal to Liquid", worksheet.flows_y56); end
  def test_flows_aa56; assert_in_epsilon(304.87671153523314, worksheet.flows_aa56, 0.002); end
  def test_flows_c57; assert_equal("Electricity grid", worksheet.flows_c57); end
  def test_flows_e57; assert_equal("Water Heating - homes", worksheet.flows_e57); end
  def test_flows_f57; assert_equal("V.01", worksheet.flows_f57); end
  def test_flows_g57; assert_in_epsilon(53.82287433271977, worksheet.flows_g57, 0.002); end
  def test_flows_h57; assert_in_epsilon(58.482355904786985, worksheet.flows_h57, 0.002); end
  def test_flows_i57; assert_in_epsilon(66.64333764692498, worksheet.flows_i57, 0.002); end
  def test_flows_j57; assert_in_epsilon(74.98419985153545, worksheet.flows_j57, 0.002); end
  def test_flows_k57; assert_in_epsilon(83.37340054585337, worksheet.flows_k57, 0.002); end
  def test_flows_l57; assert_in_epsilon(91.54663437096207, worksheet.flows_l57, 0.002); end
  def test_flows_m57; assert_in_epsilon(102.87691825956753, worksheet.flows_m57, 0.002); end
  def test_flows_n57; assert_in_epsilon(113.96586044897447, worksheet.flows_n57, 0.002); end
  def test_flows_o57; assert_in_epsilon(127.36236166595938, worksheet.flows_o57, 0.002); end
  def test_flows_p57; assert_in_epsilon(140.23729509677128, worksheet.flows_p57, 0.002); end
  def test_flows_v57; assert_equal("Coal ", worksheet.flows_v57); end
  def test_flows_w57; assert_in_epsilon(289.1205725346113, worksheet.flows_w57, 0.002); end
  def test_flows_y57; assert_equal("Gas to Liquid", worksheet.flows_y57); end
  def test_flows_aa57; assert_in_epsilon(231.2986054815082, worksheet.flows_aa57, 0.002); end
  def test_flows_c58; assert_equal("Solid", worksheet.flows_c58); end
  def test_flows_e58; assert_equal("Water Heating - homes", worksheet.flows_e58); end
  def test_flows_f58; assert_equal("V.03", worksheet.flows_f58); end
  def test_flows_g58; assert_in_delta(0.0, (worksheet.flows_g58||0), 0.002); end
  def test_flows_h58; assert_in_delta(0.0, (worksheet.flows_h58||0), 0.002); end
  def test_flows_i58; assert_in_delta(0.0, (worksheet.flows_i58||0), 0.002); end
  def test_flows_j58; assert_in_delta(0.0, (worksheet.flows_j58||0), 0.002); end
  def test_flows_k58; assert_in_delta(0.0, (worksheet.flows_k58||0), 0.002); end
  def test_flows_l58; assert_in_delta(0.0, (worksheet.flows_l58||0), 0.002); end
  def test_flows_m58; assert_in_delta(0.0, (worksheet.flows_m58||0), 0.002); end
  def test_flows_n58; assert_in_delta(0.0, (worksheet.flows_n58||0), 0.002); end
  def test_flows_o58; assert_in_delta(0.0, (worksheet.flows_o58||0), 0.002); end
  def test_flows_p58; assert_in_delta(0.0, (worksheet.flows_p58||0), 0.002); end
  def test_flows_v58; assert_equal("Electricity grid", worksheet.flows_v58); end
  def test_flows_w58; assert_in_epsilon(3805.037798484579, worksheet.flows_w58, 0.002); end
  def test_flows_y58; assert_equal("Electricity end use", worksheet.flows_y58); end
  def test_flows_aa58; assert_in_epsilon(425.97284422612074, worksheet.flows_aa58, 0.002); end
  def test_flows_c59; assert_equal("Liquid", worksheet.flows_c59); end
  def test_flows_e59; assert_equal("Water Heating - homes", worksheet.flows_e59); end
  def test_flows_f59; assert_equal("V.04", worksheet.flows_f59); end
  def test_flows_g59; assert_in_epsilon(5.644927673044796, worksheet.flows_g59, 0.002); end
  def test_flows_h59; assert_in_epsilon(4.929798226715382, worksheet.flows_h59, 0.002); end
  def test_flows_i59; assert_in_epsilon(4.636912281430522, worksheet.flows_i59, 0.002); end
  def test_flows_j59; assert_in_epsilon(4.300666103926695, worksheet.flows_j59, 0.002); end
  def test_flows_k59; assert_in_epsilon(3.9281921175097665, worksheet.flows_k59, 0.002); end
  def test_flows_l59; assert_in_epsilon(3.5228599374014946, worksheet.flows_l59, 0.002); end
  def test_flows_m59; assert_in_epsilon(2.9269535797251782, worksheet.flows_m59, 0.002); end
  def test_flows_n59; assert_in_epsilon(2.371564865839861, worksheet.flows_n59, 0.002); end
  def test_flows_o59; assert_in_epsilon(1.78287817925808, worksheet.flows_o59, 0.002); end
  def test_flows_p59; assert_in_epsilon(1.2737664576625272, worksheet.flows_p59, 0.002); end
  def test_flows_v59; assert_equal("Coal to Liquid", worksheet.flows_v59); end
  def test_flows_w59; assert_in_epsilon(296.9986420349222, worksheet.flows_w59, 0.002); end
  def test_flows_y59; assert_equal("Electricity grid", worksheet.flows_y59); end
  def test_flows_aa59; assert_in_epsilon(3408.6895893904452, worksheet.flows_aa59, 0.002); end
  def test_flows_c60; assert_equal("Gas", worksheet.flows_c60); end
  def test_flows_e60; assert_equal("Water Heating - homes", worksheet.flows_e60); end
  def test_flows_f60; assert_equal("V.05", worksheet.flows_f60); end
  def test_flows_g60; assert_in_delta(0.6349425066792579, worksheet.flows_g60, 0.002); end
  def test_flows_h60; assert_in_delta(0.6507114506982068, worksheet.flows_h60, 0.002); end
  def test_flows_i60; assert_in_delta(0.6721165687913535, worksheet.flows_i60, 0.002); end
  def test_flows_j60; assert_in_delta(0.6892764109593555, worksheet.flows_j60, 0.002); end
  def test_flows_k60; assert_in_delta(0.7018216426120365, worksheet.flows_k60, 0.002); end
  def test_flows_l60; assert_in_delta(0.7085260153714574, worksheet.flows_l60, 0.002); end
  def test_flows_m60; assert_in_delta(0.7105691737703769, worksheet.flows_m60, 0.002); end
  def test_flows_n60; assert_in_delta(0.7127420622845735, worksheet.flows_n60, 0.002); end
  def test_flows_o60; assert_in_delta(0.717455285275314, worksheet.flows_o60, 0.002); end
  def test_flows_p60; assert_in_delta(0.7235615077015787, worksheet.flows_p60, 0.002); end
  def test_flows_v60; assert_equal("Gas", worksheet.flows_v60); end
  def test_flows_w60; assert_in_epsilon(689.0744183921398, worksheet.flows_w60, 0.002); end
  def test_flows_y60; assert_equal("Over generation / exports", worksheet.flows_y60); end
  def test_flows_aa60; assert_in_epsilon(38.27642399999908, worksheet.flows_aa60, 0.002); end
  def test_flows_c61; assert_equal("Biomass", worksheet.flows_c61); end
  def test_flows_e61; assert_equal("Water Heating - homes", worksheet.flows_e61); end
  def test_flows_f61; assert_equal("V.09", worksheet.flows_f61); end
  def test_flows_g61; assert_in_epsilon(22.876873050465257, worksheet.flows_g61, 0.002); end
  def test_flows_h61; assert_in_epsilon(18.03286473348595, worksheet.flows_h61, 0.002); end
  def test_flows_i61; assert_in_epsilon(17.544490627103755, worksheet.flows_i61, 0.002); end
  def test_flows_j61; assert_in_epsilon(16.990304040416728, worksheet.flows_j61, 0.002); end
  def test_flows_k61; assert_in_epsilon(16.39093519490917, worksheet.flows_k61, 0.002); end
  def test_flows_l61; assert_in_epsilon(15.74622663044358, worksheet.flows_l61, 0.002); end
  def test_flows_m61; assert_in_epsilon(13.743640602363831, worksheet.flows_m61, 0.002); end
  def test_flows_n61; assert_in_epsilon(11.878072407390926, worksheet.flows_n61, 0.002); end
  def test_flows_o61; assert_in_epsilon(9.844298615891867, worksheet.flows_o61, 0.002); end
  def test_flows_p61; assert_in_epsilon(8.082138116236152, worksheet.flows_p61, 0.002); end
  def test_flows_v61; assert_equal("Gas to Liquid", worksheet.flows_v61); end
  def test_flows_w61; assert_in_epsilon(231.2986054815082, worksheet.flows_w61, 0.002); end
  def test_flows_y61; assert_equal("Thermal generation", worksheet.flows_y61); end
  def test_flows_aa61; assert_in_epsilon(9219.750177969003, worksheet.flows_aa61, 0.002); end
  def test_flows_c62; assert_equal("Electricity grid", worksheet.flows_c62); end
  def test_flows_d62; assert_equal("COM.A.Info.Coolingandheating", worksheet.flows_d62); end
  def test_flows_e62; assert_equal("Commercial cooling and heating", worksheet.flows_e62); end
  def test_flows_f62; assert_equal("V.01", worksheet.flows_f62); end
  def test_flows_g62; assert_in_epsilon(41.27443955742615, worksheet.flows_g62, 0.002); end
  def test_flows_h62; assert_in_epsilon(45.43290967520784, worksheet.flows_h62, 0.002); end
  def test_flows_i62; assert_in_epsilon(49.978002641728025, worksheet.flows_i62, 0.002); end
  def test_flows_j62; assert_in_epsilon(55.26431160016005, worksheet.flows_j62, 0.002); end
  def test_flows_k62; assert_in_epsilon(61.12683930986797, worksheet.flows_k62, 0.002); end
  def test_flows_l62; assert_in_epsilon(68.00378577423787, worksheet.flows_l62, 0.002); end
  def test_flows_m62; assert_in_epsilon(76.64265421484629, worksheet.flows_m62, 0.002); end
  def test_flows_n62; assert_in_epsilon(85.60666730178392, worksheet.flows_n62, 0.002); end
  def test_flows_o62; assert_in_epsilon(94.32660016561849, worksheet.flows_o62, 0.002); end
  def test_flows_p62; assert_in_epsilon(103.50680730946596, worksheet.flows_p62, 0.002); end
  def test_flows_v62; assert_equal("Coal", worksheet.flows_v62); end
  def test_flows_w62; assert_in_epsilon(12404.954810574445, worksheet.flows_w62, 0.002); end
  def test_flows_y62; assert_equal("Losses", worksheet.flows_y62); end
  def test_flows_aa62; assert_in_epsilon(6827.580604201068, worksheet.flows_aa62, 0.002); end
  def test_flows_c63; assert_equal("Solid", worksheet.flows_c63); end
  def test_flows_d63; assert_equal("COM.A.Info.Coolingandheating", worksheet.flows_d63); end
  def test_flows_e63; assert_equal("Commercial cooling and heating", worksheet.flows_e63); end
  def test_flows_f63; assert_equal("V.03", worksheet.flows_f63); end
  def test_flows_g63; assert_in_epsilon(37.609830101872745, worksheet.flows_g63, 0.002); end
  def test_flows_h63; assert_in_epsilon(41.39908457244845, worksheet.flows_h63, 0.002); end
  def test_flows_i63; assert_in_epsilon(44.07553867316541, worksheet.flows_i63, 0.002); end
  def test_flows_j63; assert_in_epsilon(45.712934084948586, worksheet.flows_j63, 0.002); end
  def test_flows_k63; assert_in_epsilon(45.9769541447841, worksheet.flows_k63, 0.002); end
  def test_flows_l63; assert_in_epsilon(44.88316256293798, worksheet.flows_l63, 0.002); end
  def test_flows_m63; assert_in_epsilon(42.3539077459825, worksheet.flows_m63, 0.002); end
  def test_flows_n63; assert_in_epsilon(37.483076609622394, worksheet.flows_n63, 0.002); end
  def test_flows_o63; assert_in_epsilon(30.114988457597356, worksheet.flows_o63, 0.002); end
  def test_flows_p63; assert_in_epsilon(20.429659711337262, worksheet.flows_p63, 0.002); end
  def test_flows_v63; assert_equal("Solar", worksheet.flows_v63); end
  def test_flows_w63; assert_in_epsilon(441.92457987412075, worksheet.flows_w63, 0.002); end
  def test_flows_y63; assert_equal("H2 conversion", worksheet.flows_y63); end
  def test_flows_aa63; assert_in_delta(0.0, (worksheet.flows_aa63||0), 0.002); end
  def test_flows_c64; assert_equal("Electricity grid", worksheet.flows_c64); end
  def test_flows_d64; assert_equal("COM.A.Info.Lightingandappliances", worksheet.flows_d64); end
  def test_flows_e64; assert_equal("Commercial Lighting and appliances", worksheet.flows_e64); end
  def test_flows_f64; assert_equal("V.01", worksheet.flows_f64); end
  def test_flows_g64; assert_in_epsilon(66.31882649948713, worksheet.flows_g64, 0.002); end
  def test_flows_h64; assert_in_epsilon(73.27534381707133, worksheet.flows_h64, 0.002); end
  def test_flows_i64; assert_in_epsilon(83.2036984532999, worksheet.flows_i64, 0.002); end
  def test_flows_j64; assert_in_epsilon(96.39395505011602, worksheet.flows_j64, 0.002); end
  def test_flows_k64; assert_in_epsilon(112.79882390731356, worksheet.flows_k64, 0.002); end
  def test_flows_l64; assert_in_epsilon(133.65233951454482, worksheet.flows_l64, 0.002); end
  def test_flows_m64; assert_in_epsilon(161.17227133438914, worksheet.flows_m64, 0.002); end
  def test_flows_n64; assert_in_epsilon(192.4400001391094, worksheet.flows_n64, 0.002); end
  def test_flows_o64; assert_in_epsilon(226.0784728429558, worksheet.flows_o64, 0.002); end
  def test_flows_p64; assert_in_epsilon(262.85719659410455, worksheet.flows_p64, 0.002); end
  def test_flows_v64; assert_equal("Solid", worksheet.flows_v64); end
  def test_flows_w64; assert_in_epsilon(12413.366157102493, worksheet.flows_w64, 0.002); end
  def test_flows_y64; assert_equal("H2", worksheet.flows_y64); end
  def test_flows_aa64; assert_in_delta(0.0, (worksheet.flows_aa64||0), 0.002); end
  def test_flows_c65; assert_equal("Solid", worksheet.flows_c65); end
  def test_flows_d65; assert_equal("COM.A.Info.Lightingandappliances", worksheet.flows_d65); end
  def test_flows_e65; assert_equal("Commercial Lighting and appliances", worksheet.flows_e65); end
  def test_flows_f65; assert_equal("V.03", worksheet.flows_f65); end
  def test_flows_g65; assert_in_epsilon(34.802490336309795, worksheet.flows_g65, 0.002); end
  def test_flows_h65; assert_in_epsilon(38.45309966549429, worksheet.flows_h65, 0.002); end
  def test_flows_i65; assert_in_epsilon(41.97809629430984, worksheet.flows_i65, 0.002); end
  def test_flows_j65; assert_in_epsilon(44.382611814727994, worksheet.flows_j65, 0.002); end
  def test_flows_k65; assert_in_epsilon(45.28435108763733, worksheet.flows_k65, 0.002); end
  def test_flows_l65; assert_in_epsilon(44.68335209374451, worksheet.flows_l65, 0.002); end
  def test_flows_m65; assert_in_epsilon(42.47583830843146, worksheet.flows_m65, 0.002); end
  def test_flows_n65; assert_in_epsilon(37.63021304922874, worksheet.flows_n65, 0.002); end
  def test_flows_o65; assert_in_epsilon(29.941155464617122, worksheet.flows_o65, 0.002); end
  def test_flows_p65; assert_in_epsilon(19.48939458833347, worksheet.flows_p65, 0.002); end
  def test_flows_v65; assert_equal("Liquid", worksheet.flows_v65); end
  def test_flows_w65; assert_in_epsilon(2003.2925218483629, worksheet.flows_w65, 0.002); end
  def test_flows_y65; assert_equal("Road transport", worksheet.flows_y65); end
  def test_flows_aa65; assert_in_delta(0.0, (worksheet.flows_aa65||0), 0.002); end
  def test_flows_c66; assert_equal("Liquid", worksheet.flows_c66); end
  def test_flows_d66; assert_equal("COM.A.Info.Lightingandappliances", worksheet.flows_d66); end
  def test_flows_e66; assert_equal("Commercial Lighting and appliances", worksheet.flows_e66); end
  def test_flows_f66; assert_equal("V.04", worksheet.flows_f66); end
  def test_flows_g66; assert_in_epsilon(3.3138531529945108, worksheet.flows_g66, 0.002); end
  def test_flows_h66; assert_in_epsilon(3.6614599799475727, worksheet.flows_h66, 0.002); end
  def test_flows_i66; assert_in_epsilon(3.9971061098599545, worksheet.flows_i66, 0.002); end
  def test_flows_j66; assert_in_epsilon(4.2260613157018945, worksheet.flows_j66, 0.002); end
  def test_flows_k66; assert_in_epsilon(4.311923893460932, worksheet.flows_k66, 0.002); end
  def test_flows_l66; assert_in_epsilon(4.254697459616329, worksheet.flows_l66, 0.002); end
  def test_flows_m66; assert_in_epsilon(4.044500532699686, worksheet.flows_m66, 0.002); end
  def test_flows_n66; assert_in_epsilon(3.5831056615779024, worksheet.flows_n66, 0.002); end
  def test_flows_o66; assert_in_epsilon(2.8509624306167076, worksheet.flows_o66, 0.002); end
  def test_flows_p66; assert_in_epsilon(1.8557577656769244, worksheet.flows_p66, 0.002); end
  def test_flows_v66; assert_equal("Nuclear", worksheet.flows_v66); end
  def test_flows_w66; assert_in_delta(0.0, (worksheet.flows_w66||0), 0.002); end
  def test_flows_y66; assert_equal("Heating - homes", worksheet.flows_y66); end
  def test_flows_aa66; assert_in_epsilon(71.75348076818592, worksheet.flows_aa66, 0.002); end
  def test_flows_c67; assert_equal("Gas", worksheet.flows_c67); end
  def test_flows_d67; assert_equal("COM.A.Info.Lightingandappliances", worksheet.flows_d67); end
  def test_flows_e67; assert_equal("Commercial Lighting and appliances", worksheet.flows_e67); end
  def test_flows_f67; assert_equal("V.05", worksheet.flows_f67); end
  def test_flows_g67; assert_in_epsilon(21.953965566336375, worksheet.flows_g67, 0.002); end
  def test_flows_h67; assert_in_epsilon(24.25682811251016, worksheet.flows_h67, 0.002); end
  def test_flows_i67; assert_in_epsilon(26.624967685685714, worksheet.flows_i67, 0.002); end
  def test_flows_j67; assert_in_epsilon(28.47004650770762, worksheet.flows_j67, 0.002); end
  def test_flows_k67; assert_in_epsilon(29.572671346902556, worksheet.flows_k67, 0.002); end
  def test_flows_l67; assert_in_epsilon(29.97639915928453, worksheet.flows_l67, 0.002); end
  def test_flows_m67; assert_in_epsilon(29.700367460172835, worksheet.flows_m67, 0.002); end
  def test_flows_n67; assert_in_epsilon(28.054095280107823, worksheet.flows_n67, 0.002); end
  def test_flows_o67; assert_in_epsilon(24.87206733469234, worksheet.flows_o67, 0.002); end
  def test_flows_p67; assert_in_epsilon(20.227407792680506, worksheet.flows_p67, 0.002); end
  def test_flows_v67; assert_equal("Thermal generation", worksheet.flows_v67); end
  def test_flows_w67; assert_in_epsilon(9219.750177969003, worksheet.flows_w67, 0.002); end
  def test_flows_y67; assert_equal("Cooking and appliances - homes", worksheet.flows_y67); end
  def test_flows_aa67; assert_in_epsilon(226.69109707975716, worksheet.flows_aa67, 0.002); end
  def test_flows_c68; assert_equal("Electricity grid", worksheet.flows_c68); end
  def test_flows_d68; assert_equal("IND.a", worksheet.flows_d68); end
  def test_flows_e68; assert_equal("Industry", worksheet.flows_e68); end
  def test_flows_f68; assert_equal("V.01", worksheet.flows_f68); end
  def test_flows_g68; assert_in_epsilon(420.195789614721, worksheet.flows_g68, 0.002); end
  def test_flows_h68; assert_in_epsilon(490.24315031241656, worksheet.flows_h68, 0.002); end
  def test_flows_i68; assert_in_epsilon(596.3425470061676, worksheet.flows_i68, 0.002); end
  def test_flows_j68; assert_in_epsilon(733.829151378504, worksheet.flows_j68, 0.002); end
  def test_flows_k68; assert_in_epsilon(900.9026774158084, worksheet.flows_k68, 0.002); end
  def test_flows_l68; assert_in_epsilon(1114.8558375058033, worksheet.flows_l68, 0.002); end
  def test_flows_m68; assert_in_epsilon(1383.4784848808067, worksheet.flows_m68, 0.002); end
  def test_flows_n68; assert_in_epsilon(1685.4158194265008, worksheet.flows_n68, 0.002); end
  def test_flows_o68; assert_in_epsilon(2003.7065605365333, worksheet.flows_o68, 0.002); end
  def test_flows_p68; assert_in_epsilon(2348.810650048444, worksheet.flows_p68, 0.002); end
  def test_flows_v68; assert_equal("Electricity imports", worksheet.flows_v68); end
  def test_flows_w68; assert_in_epsilon(19.13821199999954, worksheet.flows_w68, 0.002); end
  def test_flows_y68; assert_equal("Water Heating - homes", worksheet.flows_y68); end
  def test_flows_aa68; assert_in_epsilon(150.31676117837156, worksheet.flows_aa68, 0.002); end
  def test_flows_c69; assert_equal("Solid", worksheet.flows_c69); end
  def test_flows_d69; assert_equal("IND.a", worksheet.flows_d69); end
  def test_flows_e69; assert_equal("Industry", worksheet.flows_e69); end
  def test_flows_f69; assert_equal("V.03", worksheet.flows_f69); end
  def test_flows_g69; assert_in_epsilon(563.1529939635911, worksheet.flows_g69, 0.002); end
  def test_flows_h69; assert_in_epsilon(658.5973341825863, worksheet.flows_h69, 0.002); end
  def test_flows_i69; assert_in_epsilon(816.9866852007149, worksheet.flows_i69, 0.002); end
  def test_flows_j69; assert_in_epsilon(979.7334807860495, worksheet.flows_j69, 0.002); end
  def test_flows_k69; assert_in_epsilon(1227.7978953517913, worksheet.flows_k69, 0.002); end
  def test_flows_l69; assert_in_epsilon(1481.9462286838393, worksheet.flows_l69, 0.002); end
  def test_flows_m69; assert_in_epsilon(1862.980794341287, worksheet.flows_m69, 0.002); end
  def test_flows_n69; assert_in_epsilon(2247.8601342995416, worksheet.flows_n69, 0.002); end
  def test_flows_o69; assert_in_epsilon(2691.3210123863496, worksheet.flows_o69, 0.002); end
  def test_flows_p69; assert_in_epsilon(3139.7026822170346, worksheet.flows_p69, 0.002); end
  def test_flows_v69; assert_equal("Wind", worksheet.flows_v69); end
  def test_flows_w69; assert_in_epsilon(22.589636970240004, worksheet.flows_w69, 0.002); end
  def test_flows_y69; assert_equal("Commercial cooling and heating", worksheet.flows_y69); end
  def test_flows_aa69; assert_in_epsilon(123.93646702080322, worksheet.flows_aa69, 0.002); end
  def test_flows_c70; assert_equal("Liquid", worksheet.flows_c70); end
  def test_flows_d70; assert_equal("IND.a", worksheet.flows_d70); end
  def test_flows_e70; assert_equal("Industry", worksheet.flows_e70); end
  def test_flows_f70; assert_equal("V.04", worksheet.flows_f70); end
  def test_flows_g70; assert_in_epsilon(40.045856161100005, worksheet.flows_g70, 0.002); end
  def test_flows_h70; assert_in_epsilon(46.941163250667834, worksheet.flows_h70, 0.002); end
  def test_flows_i70; assert_in_epsilon(57.559459584101035, worksheet.flows_i70, 0.002); end
  def test_flows_j70; assert_in_epsilon(70.9694629407787, worksheet.flows_j70, 0.002); end
  def test_flows_k70; assert_in_epsilon(88.64215735762144, worksheet.flows_k70, 0.002); end
  def test_flows_l70; assert_in_epsilon(111.03921669809255, worksheet.flows_l70, 0.002); end
  def test_flows_m70; assert_in_epsilon(140.04263246009776, worksheet.flows_m70, 0.002); end
  def test_flows_n70; assert_in_epsilon(172.83134911723067, worksheet.flows_n70, 0.002); end
  def test_flows_o70; assert_in_epsilon(208.13531091969085, worksheet.flows_o70, 0.002); end
  def test_flows_p70; assert_in_epsilon(246.6614811881929, worksheet.flows_p70, 0.002); end
  def test_flows_v70; assert_equal("Hydro", worksheet.flows_v70); end
  def test_flows_w70; assert_in_epsilon(4.8440916, worksheet.flows_w70, 0.002); end
  def test_flows_y70; assert_equal("Commercial Lighting and appliances", worksheet.flows_y70); end
  def test_flows_aa70; assert_in_epsilon(304.4297567407954, worksheet.flows_aa70, 0.002); end
  def test_flows_c71; assert_equal("Gas", worksheet.flows_c71); end
  def test_flows_d71; assert_equal("IND.a", worksheet.flows_d71); end
  def test_flows_e71; assert_equal("Industry", worksheet.flows_e71); end
  def test_flows_f71; assert_equal("V.05", worksheet.flows_f71); end
  def test_flows_g71; assert_in_epsilon(102.69422191550348, worksheet.flows_g71, 0.002); end
  def test_flows_h71; assert_in_epsilon(118.54350547630284, worksheet.flows_h71, 0.002); end
  def test_flows_i71; assert_in_epsilon(139.48684361055598, worksheet.flows_i71, 0.002); end
  def test_flows_j71; assert_in_epsilon(160.4301817448091, worksheet.flows_j71, 0.002); end
  def test_flows_k71; assert_in_epsilon(191.9663244874638, worksheet.flows_k71, 0.002); end
  def test_flows_l71; assert_in_epsilon(223.50246723011853, worksheet.flows_l71, 0.002); end
  def test_flows_m71; assert_in_epsilon(275.8572098560213, worksheet.flows_m71, 0.002); end
  def test_flows_n71; assert_in_epsilon(328.2119524819242, worksheet.flows_n71, 0.002); end
  def test_flows_o71; assert_in_epsilon(385.8732416468778, worksheet.flows_o71, 0.002); end
  def test_flows_p71; assert_in_epsilon(443.5345308118313, worksheet.flows_p71, 0.002); end
  def test_flows_v71; assert_equal("H2 conversion", worksheet.flows_v71); end
  def test_flows_w71; assert_in_delta(0.0, (worksheet.flows_w71||0), 0.002); end
  def test_flows_y71; assert_equal("Industry", worksheet.flows_y71); end
  def test_flows_aa71; assert_in_epsilon(6450.620075910476, worksheet.flows_aa71, 0.002); end
  def test_flows_c72; assert_equal("Biomass", worksheet.flows_c72); end
  def test_flows_d72; assert_equal("IND.a", worksheet.flows_d72); end
  def test_flows_e72; assert_equal("Industry", worksheet.flows_e72); end
  def test_flows_f72; assert_equal("V.09", worksheet.flows_f72); end
  def test_flows_g72; assert_in_epsilon(76.61901057888659, worksheet.flows_g72, 0.002); end
  def test_flows_h72; assert_in_epsilon(84.84855815595202, worksheet.flows_h72, 0.002); end
  def test_flows_i72; assert_in_epsilon(97.4281555422585, worksheet.flows_i72, 0.002); end
  def test_flows_j72; assert_in_epsilon(110.00775292856498, worksheet.flows_j72, 0.002); end
  def test_flows_k72; assert_in_epsilon(128.69409181497122, worksheet.flows_k72, 0.002); end
  def test_flows_l72; assert_in_epsilon(147.3804307013774, worksheet.flows_l72, 0.002); end
  def test_flows_m72; assert_in_epsilon(176.59613133527193, worksheet.flows_m72, 0.002); end
  def test_flows_n72; assert_in_epsilon(205.81183196916646, worksheet.flows_n72, 0.002); end
  def test_flows_o72; assert_in_epsilon(238.86128180707001, worksheet.flows_o72, 0.002); end
  def test_flows_p72; assert_in_epsilon(271.9107316449735, worksheet.flows_p72, 0.002); end
  def test_flows_v72; assert_equal("H2", worksheet.flows_v72); end
  def test_flows_w72; assert_in_delta(0.0, (worksheet.flows_w72||0), 0.002); end
  def test_flows_y72; assert_equal("Agriculture", worksheet.flows_y72); end
  def test_flows_aa72; assert_in_epsilon(70.3755, worksheet.flows_aa72, 0.002); end
  def test_flows_c73; assert_equal("Electricity grid", worksheet.flows_c73); end
  def test_flows_d73; assert_equal("AGL", worksheet.flows_d73); end
  def test_flows_e73; assert_equal("Agriculture", worksheet.flows_e73); end
  def test_flows_f73; assert_equal("V.01", worksheet.flows_f73); end
  def test_flows_g73; assert_in_epsilon(20.760772499999998, worksheet.flows_g73, 0.002); end
  def test_flows_h73; assert_in_epsilon(20.760772499999998, worksheet.flows_h73, 0.002); end
  def test_flows_i73; assert_in_epsilon(20.760772499999998, worksheet.flows_i73, 0.002); end
  def test_flows_j73; assert_in_epsilon(20.760772499999998, worksheet.flows_j73, 0.002); end
  def test_flows_k73; assert_in_epsilon(20.760772499999998, worksheet.flows_k73, 0.002); end
  def test_flows_l73; assert_in_epsilon(20.760772499999998, worksheet.flows_l73, 0.002); end
  def test_flows_m73; assert_in_epsilon(20.760772499999998, worksheet.flows_m73, 0.002); end
  def test_flows_n73; assert_in_epsilon(20.760772499999998, worksheet.flows_n73, 0.002); end
  def test_flows_o73; assert_in_epsilon(20.760772499999998, worksheet.flows_o73, 0.002); end
  def test_flows_p73; assert_in_epsilon(20.760772499999998, worksheet.flows_p73, 0.002); end
  def test_flows_v73; assert_equal("Biomass", worksheet.flows_v73); end
  def test_flows_w73; assert_in_epsilon(318.51290520345424, worksheet.flows_w73, 0.002); end
  def test_flows_y73; assert_equal("Passenger transport", worksheet.flows_y73); end
  def test_flows_aa73; assert_in_epsilon(1244.4687929079419, worksheet.flows_aa73, 0.002); end
  def test_flows_c74; assert_equal("Solid", worksheet.flows_c74); end
  def test_flows_d74; assert_equal("AGL", worksheet.flows_d74); end
  def test_flows_e74; assert_equal("Agriculture", worksheet.flows_e74); end
  def test_flows_f74; assert_equal("V.03", worksheet.flows_f74); end
  def test_flows_g74; assert_in_delta(0.52781625, worksheet.flows_g74, 0.002); end
  def test_flows_h74; assert_in_delta(0.52781625, worksheet.flows_h74, 0.002); end
  def test_flows_i74; assert_in_delta(0.52781625, worksheet.flows_i74, 0.002); end
  def test_flows_j74; assert_in_delta(0.52781625, worksheet.flows_j74, 0.002); end
  def test_flows_k74; assert_in_delta(0.52781625, worksheet.flows_k74, 0.002); end
  def test_flows_l74; assert_in_delta(0.52781625, worksheet.flows_l74, 0.002); end
  def test_flows_m74; assert_in_delta(0.52781625, worksheet.flows_m74, 0.002); end
  def test_flows_n74; assert_in_delta(0.52781625, worksheet.flows_n74, 0.002); end
  def test_flows_o74; assert_in_delta(0.52781625, worksheet.flows_o74, 0.002); end
  def test_flows_p74; assert_in_delta(0.52781625, worksheet.flows_p74, 0.002); end
  def test_flows_v74; assert_equal("Liquid fuels import", worksheet.flows_v74); end
  def test_flows_w74; assert_in_epsilon(42.274390174076416, worksheet.flows_w74, 0.002); end
  def test_flows_y74; assert_equal("Freight transport", worksheet.flows_y74); end
  def test_flows_aa74; assert_in_epsilon(473.9795732163133, worksheet.flows_aa74, 0.002); end
  def test_flows_c75; assert_equal("Liquid", worksheet.flows_c75); end
  def test_flows_d75; assert_equal("AGL", worksheet.flows_d75); end
  def test_flows_e75; assert_equal("Agriculture", worksheet.flows_e75); end
  def test_flows_f75; assert_equal("V.04", worksheet.flows_f75); end
  def test_flows_g75; assert_in_epsilon(49.08691125, worksheet.flows_g75, 0.002); end
  def test_flows_h75; assert_in_epsilon(49.08691125, worksheet.flows_h75, 0.002); end
  def test_flows_i75; assert_in_epsilon(49.08691125, worksheet.flows_i75, 0.002); end
  def test_flows_j75; assert_in_epsilon(49.08691125, worksheet.flows_j75, 0.002); end
  def test_flows_k75; assert_in_epsilon(49.08691125, worksheet.flows_k75, 0.002); end
  def test_flows_l75; assert_in_epsilon(49.08691125, worksheet.flows_l75, 0.002); end
  def test_flows_m75; assert_in_epsilon(49.08691125, worksheet.flows_m75, 0.002); end
  def test_flows_n75; assert_in_epsilon(49.08691125, worksheet.flows_n75, 0.002); end
  def test_flows_o75; assert_in_epsilon(49.08691125, worksheet.flows_o75, 0.002); end
  def test_flows_p75; assert_in_epsilon(49.08691125, worksheet.flows_p75, 0.002); end
  def test_flows_c76; assert_equal("Gas", worksheet.flows_c76); end
  def test_flows_d76; assert_equal("AGL", worksheet.flows_d76); end
  def test_flows_e76; assert_equal("Agriculture", worksheet.flows_e76); end
  def test_flows_f76; assert_equal("V.05", worksheet.flows_f76); end
  def test_flows_g76; assert_in_delta(0.0, (worksheet.flows_g76||0), 0.002); end
  def test_flows_h76; assert_in_delta(0.0, (worksheet.flows_h76||0), 0.002); end
  def test_flows_i76; assert_in_delta(0.0, (worksheet.flows_i76||0), 0.002); end
  def test_flows_j76; assert_in_delta(0.0, (worksheet.flows_j76||0), 0.002); end
  def test_flows_k76; assert_in_delta(0.0, (worksheet.flows_k76||0), 0.002); end
  def test_flows_l76; assert_in_delta(0.0, (worksheet.flows_l76||0), 0.002); end
  def test_flows_m76; assert_in_delta(0.0, (worksheet.flows_m76||0), 0.002); end
  def test_flows_n76; assert_in_delta(0.0, (worksheet.flows_n76||0), 0.002); end
  def test_flows_o76; assert_in_delta(0.0, (worksheet.flows_o76||0), 0.002); end
  def test_flows_p76; assert_in_delta(0.0, (worksheet.flows_p76||0), 0.002); end
  def test_flows_c77; assert_equal("Electricity grid", worksheet.flows_c77); end
  def test_flows_d77; assert_equal("TRA.a", worksheet.flows_d77); end
  def test_flows_e77; assert_equal("Passenger transport", worksheet.flows_e77); end
  def test_flows_f77; assert_equal("V.01", worksheet.flows_f77); end
  def test_flows_g77; assert_in_epsilon(2.3417856574208473, worksheet.flows_g77, 0.002); end
  def test_flows_h77; assert_in_epsilon(2.309235036045927, worksheet.flows_h77, 0.002); end
  def test_flows_i77; assert_in_epsilon(3.008460150263123, worksheet.flows_i77, 0.002); end
  def test_flows_j77; assert_in_epsilon(3.822113674865788, worksheet.flows_j77, 0.002); end
  def test_flows_k77; assert_in_epsilon(4.828534261780303, worksheet.flows_k77, 0.002); end
  def test_flows_l77; assert_in_epsilon(6.029949818960565, worksheet.flows_l77, 0.002); end
  def test_flows_m77; assert_in_epsilon(7.291898691571232, worksheet.flows_m77, 0.002); end
  def test_flows_n77; assert_in_epsilon(8.698946108732788, worksheet.flows_n77, 0.002); end
  def test_flows_o77; assert_in_epsilon(10.202785569984467, worksheet.flows_o77, 0.002); end
  def test_flows_p77; assert_in_epsilon(11.844405652291988, worksheet.flows_p77, 0.002); end
  def test_flows_w77; assert_in_epsilon(57390.697651739254, worksheet.flows_w77, 0.002); end
  def test_flows_aa77; assert_in_epsilon(59179.12986613084, worksheet.flows_aa77, 0.002); end
  def test_flows_c78; assert_equal("Liquid", worksheet.flows_c78); end
  def test_flows_d78; assert_equal("TRA.a", worksheet.flows_d78); end
  def test_flows_e78; assert_equal("Passenger transport", worksheet.flows_e78); end
  def test_flows_f78; assert_equal("V.04", worksheet.flows_f78); end
  def test_flows_g78; assert_in_epsilon(354.3107275713987, worksheet.flows_g78, 0.002); end
  def test_flows_h78; assert_in_epsilon(438.1217706689856, worksheet.flows_h78, 0.002); end
  def test_flows_i78; assert_in_epsilon(537.5547759995982, worksheet.flows_i78, 0.002); end
  def test_flows_j78; assert_in_epsilon(646.7427607485126, worksheet.flows_j78, 0.002); end
  def test_flows_k78; assert_in_epsilon(748.7499455726851, worksheet.flows_k78, 0.002); end
  def test_flows_l78; assert_in_epsilon(849.2908244747937, worksheet.flows_l78, 0.002); end
  def test_flows_m78; assert_in_epsilon(947.2869817414837, worksheet.flows_m78, 0.002); end
  def test_flows_n78; assert_in_epsilon(1044.7864857309294, worksheet.flows_n78, 0.002); end
  def test_flows_o78; assert_in_epsilon(1169.5846498048115, worksheet.flows_o78, 0.002); end
  def test_flows_p78; assert_in_epsilon(1232.4916761463742, worksheet.flows_p78, 0.002); end
  def test_flows_c79; assert_equal("Gas", worksheet.flows_c79); end
  def test_flows_d79; assert_equal("TRA.a", worksheet.flows_d79); end
  def test_flows_e79; assert_equal("Passenger transport", worksheet.flows_e79); end
  def test_flows_f79; assert_equal("C.03", worksheet.flows_f79); end
  def test_flows_g79; assert_in_delta(0.0, (worksheet.flows_g79||0), 0.002); end
  def test_flows_h79; assert_in_delta(0.0, (worksheet.flows_h79||0), 0.002); end
  def test_flows_i79; assert_in_delta(0.020672587963588326, worksheet.flows_i79, 0.002); end
  def test_flows_j79; assert_in_delta(0.037866099000257496, worksheet.flows_j79, 0.002); end
  def test_flows_k79; assert_in_delta(0.057366027182857396, worksheet.flows_k79, 0.002); end
  def test_flows_l79; assert_in_delta(0.07803439124032918, worksheet.flows_l79, 0.002); end
  def test_flows_m79; assert_in_delta(0.09401009678289096, worksheet.flows_m79, 0.002); end
  def test_flows_n79; assert_in_delta(0.10911481757657973, worksheet.flows_n79, 0.002); end
  def test_flows_o79; assert_in_delta(0.12145509632086254, worksheet.flows_o79, 0.002); end
  def test_flows_p79; assert_in_delta(0.13271110927564744, worksheet.flows_p79, 0.002); end
  def test_flows_y79; assert_in_epsilon(-1788.4322143915851, worksheet.flows_y79, 0.002); end
  def test_flows_c80; assert_equal("H2", worksheet.flows_c80); end
  def test_flows_d80; assert_equal("TRA.a", worksheet.flows_d80); end
  def test_flows_e80; assert_equal("Passenger transport", worksheet.flows_e80); end
  def test_flows_f80; assert_equal("V.12", worksheet.flows_f80); end
  def test_flows_g80; assert_in_delta(0.0, (worksheet.flows_g80||0), 0.002); end
  def test_flows_h80; assert_in_delta(0.0, (worksheet.flows_h80||0), 0.002); end
  def test_flows_i80; assert_in_delta(0.0, (worksheet.flows_i80||0), 0.002); end
  def test_flows_j80; assert_in_delta(0.0, (worksheet.flows_j80||0), 0.002); end
  def test_flows_k80; assert_in_delta(0.0, (worksheet.flows_k80||0), 0.002); end
  def test_flows_l80; assert_in_delta(0.0, (worksheet.flows_l80||0), 0.002); end
  def test_flows_m80; assert_in_delta(0.0, (worksheet.flows_m80||0), 0.002); end
  def test_flows_n80; assert_in_delta(0.0, (worksheet.flows_n80||0), 0.002); end
  def test_flows_o80; assert_in_delta(0.0, (worksheet.flows_o80||0), 0.002); end
  def test_flows_p80; assert_in_delta(0.0, (worksheet.flows_p80||0), 0.002); end
  def test_flows_c81; assert_equal("Electricity grid", worksheet.flows_c81); end
  def test_flows_d81; assert_equal("TRA.b", worksheet.flows_d81); end
  def test_flows_e81; assert_equal("Freight transport", worksheet.flows_e81); end
  def test_flows_f81; assert_equal("V.01", worksheet.flows_f81); end
  def test_flows_g81; assert_in_epsilon(5.860912329999998, worksheet.flows_g81, 0.002); end
  def test_flows_h81; assert_in_epsilon(6.067126396874185, worksheet.flows_h81, 0.002); end
  def test_flows_i81; assert_in_epsilon(6.304378535093296, worksheet.flows_i81, 0.002); end
  def test_flows_j81; assert_in_epsilon(6.553006216803978, worksheet.flows_j81, 0.002); end
  def test_flows_k81; assert_in_epsilon(6.806322256842299, worksheet.flows_k81, 0.002); end
  def test_flows_l81; assert_in_epsilon(7.079977638635891, worksheet.flows_l81, 0.002); end
  def test_flows_m81; assert_in_epsilon(7.36665033288937, worksheet.flows_m81, 0.002); end
  def test_flows_n81; assert_in_epsilon(7.639555641015767, worksheet.flows_n81, 0.002); end
  def test_flows_o81; assert_in_epsilon(7.888349749261912, worksheet.flows_o81, 0.002); end
  def test_flows_p81; assert_in_epsilon(8.122676432386477, worksheet.flows_p81, 0.002); end
  def test_flows_v81; assert_equal("Liquids production", worksheet.flows_v81); end
  def test_flows_w81; assert_in_epsilon(2359.0038520821035, worksheet.flows_w81, 0.002); end
  def test_flows_c82; assert_equal("Liquid", worksheet.flows_c82); end
  def test_flows_d82; assert_equal("TRA.b", worksheet.flows_d82); end
  def test_flows_e82; assert_equal("Freight transport", worksheet.flows_e82); end
  def test_flows_f82; assert_equal("V.04", worksheet.flows_f82); end
  def test_flows_g82; assert_in_epsilon(301.1360018327048, worksheet.flows_g82, 0.002); end
  def test_flows_h82; assert_in_epsilon(315.41743414932597, worksheet.flows_h82, 0.002); end
  def test_flows_i82; assert_in_epsilon(331.6737477043435, worksheet.flows_i82, 0.002); end
  def test_flows_j82; assert_in_epsilon(348.9144497118548, worksheet.flows_j82, 0.002); end
  def test_flows_k82; assert_in_epsilon(366.8138577768855, worksheet.flows_k82, 0.002); end
  def test_flows_l82; assert_in_epsilon(386.24880650157047, worksheet.flows_l82, 0.002); end
  def test_flows_m82; assert_in_epsilon(406.8707235770696, worksheet.flows_m82, 0.002); end
  def test_flows_n82; assert_in_epsilon(427.2249354078618, worksheet.flows_n82, 0.002); end
  def test_flows_o82; assert_in_epsilon(446.71410905976546, worksheet.flows_o82, 0.002); end
  def test_flows_p82; assert_in_epsilon(465.85689678392686, worksheet.flows_p82, 0.002); end
  def test_flows_v82; assert_equal("Losses", worksheet.flows_v82); end
  def test_flows_c83; assert_equal("Gas", worksheet.flows_c83); end
  def test_flows_d83; assert_equal("TRA.b", worksheet.flows_d83); end
  def test_flows_e83; assert_equal("Freight transport", worksheet.flows_e83); end
  def test_flows_f83; assert_equal("V.05", worksheet.flows_f83); end
  def test_flows_g83; assert_in_delta(0.0, (worksheet.flows_g83||0), 0.002); end
  def test_flows_h83; assert_in_delta(0.0, (worksheet.flows_h83||0), 0.002); end
  def test_flows_i83; assert_in_delta(0.0, (worksheet.flows_i83||0), 0.002); end
  def test_flows_j83; assert_in_delta(0.0, (worksheet.flows_j83||0), 0.002); end
  def test_flows_k83; assert_in_delta(0.0, (worksheet.flows_k83||0), 0.002); end
  def test_flows_l83; assert_in_delta(0.0, (worksheet.flows_l83||0), 0.002); end
  def test_flows_m83; assert_in_delta(0.0, (worksheet.flows_m83||0), 0.002); end
  def test_flows_n83; assert_in_delta(0.0, (worksheet.flows_n83||0), 0.002); end
  def test_flows_o83; assert_in_delta(0.0, (worksheet.flows_o83||0), 0.002); end
  def test_flows_p83; assert_in_delta(0.0, (worksheet.flows_p83||0), 0.002); end
  def test_flows_c84; assert_equal("Electricity grid", worksheet.flows_c84); end
  def test_flows_e84; assert_equal("Losses in End use RES + COM", worksheet.flows_e84); end
  def test_flows_c85; assert_equal("Solid", worksheet.flows_c85); end
  def test_flows_e85; assert_equal("Losses in End use RES + COM", worksheet.flows_e85); end
  def test_flows_c86; assert_equal("Liquid", worksheet.flows_c86); end
  def test_flows_e86; assert_equal("Losses in End use RES + COM", worksheet.flows_e86); end
  def test_flows_c87; assert_equal("Gas", worksheet.flows_c87); end
  def test_flows_e87; assert_equal("Losses in End use RES + COM", worksheet.flows_e87); end
  def test_flows_c88; assert_equal("Liquid", worksheet.flows_c88); end
  def test_flows_e88; assert_equal("Thermal generation", worksheet.flows_e88); end
  def test_flows_c89; assert_equal("Oil", worksheet.flows_c89); end
  def test_flows_e89; assert_equal("Liquid", worksheet.flows_e89); end
  def test_flows_g89; assert_in_epsilon(495.40383029420974, worksheet.flows_g89, 0.002); end
  def test_flows_h89; assert_in_epsilon(611.3807412426511, worksheet.flows_h89, 0.002); end
  def test_flows_i89; assert_in_epsilon(734.7066368211191, worksheet.flows_i89, 0.002); end
  def test_flows_j89; assert_in_epsilon(871.0295406861603, worksheet.flows_j89, 0.002); end
  def test_flows_k89; assert_in_epsilon(937.5738015146906, worksheet.flows_k89, 0.002); end
  def test_flows_l89; assert_in_epsilon(1075.905796059863, worksheet.flows_l89, 0.002); end
  def test_flows_m89; assert_in_epsilon(1165.0145402126407, worksheet.flows_m89, 0.002); end
  def test_flows_n89; assert_in_epsilon(1325.192548815554, worksheet.flows_n89, 0.002); end
  def test_flows_o89; assert_in_epsilon(1498.2385259664006, worksheet.flows_o89, 0.002); end
  def test_flows_p89; assert_in_epsilon(1661.9855656992552, worksheet.flows_p89, 0.002); end
  def test_flows_c90; assert_equal("Oil", worksheet.flows_c90); end
  def test_flows_e90; assert_equal("Losses", worksheet.flows_e90); end
  def test_flows_g90; assert_in_epsilon(37.69115411281955, worksheet.flows_g90, 0.002); end
  def test_flows_h90; assert_in_epsilon(46.51487197041146, worksheet.flows_h90, 0.002); end
  def test_flows_i90; assert_in_epsilon(55.897712901594815, worksheet.flows_i90, 0.002); end
  def test_flows_j90; assert_in_epsilon(66.26938801688996, worksheet.flows_j90, 0.002); end
  def test_flows_k90; assert_in_epsilon(71.33218696360434, worksheet.flows_k90, 0.002); end
  def test_flows_l90; assert_in_epsilon(81.85671706673129, worksheet.flows_l90, 0.002); end
  def test_flows_m90; assert_in_epsilon(88.63625974137625, worksheet.flows_m90, 0.002); end
  def test_flows_n90; assert_in_epsilon(100.82287122589287, worksheet.flows_n90, 0.002); end
  def test_flows_o90; assert_in_epsilon(113.98849933482887, worksheet.flows_o90, 0.002); end
  def test_flows_p90; assert_in_epsilon(126.4466486923413, worksheet.flows_p90, 0.002); end
  def test_flows_s90; assert_equal("From sheet itself", worksheet.flows_s90); end
  def test_flows_c91; assert_equal("Coal to Liquid", worksheet.flows_c91); end
  def test_flows_e91; assert_equal("Losses", worksheet.flows_e91); end
  def test_flows_g91; assert_in_epsilon(542.9847875013355, worksheet.flows_g91, 0.002); end
  def test_flows_h91; assert_in_epsilon(540.026633696207, worksheet.flows_h91, 0.002); end
  def test_flows_i91; assert_in_epsilon(534.1804799311303, worksheet.flows_i91, 0.002); end
  def test_flows_j91; assert_in_epsilon(521.3586727900549, worksheet.flows_j91, 0.002); end
  def test_flows_k91; assert_in_epsilon(507.62780630670215, worksheet.flows_k91, 0.002); end
  def test_flows_l91; assert_in_epsilon(494.4102432432876, worksheet.flows_l91, 0.002); end
  def test_flows_m91; assert_in_epsilon(481.67772836568656, worksheet.flows_m91, 0.002); end
  def test_flows_n91; assert_in_epsilon(331.1553116555934, worksheet.flows_n91, 0.002); end
  def test_flows_o91; assert_in_epsilon(331.1553116555934, worksheet.flows_o91, 0.002); end
  def test_flows_p91; assert_in_epsilon(217.1939150005343, worksheet.flows_p91, 0.002); end
  def test_flows_c92; assert_equal("Biomass", worksheet.flows_c92); end
  def test_flows_d92; assert_equal("BIO.SUP", worksheet.flows_d92); end
  def test_flows_e92; assert_equal("Solid", worksheet.flows_e92); end
  def test_flows_f92; assert_equal("Y.01", worksheet.flows_f92); end
  def test_flows_g92; assert_in_delta(0.4782851178181591, worksheet.flows_g92, 0.002); end
  def test_flows_h92; assert_in_epsilon(1.00238416456875, worksheet.flows_h92, 0.002); end
  def test_flows_i92; assert_in_epsilon(1.6253739760687664, worksheet.flows_i92, 0.002); end
  def test_flows_j92; assert_in_epsilon(2.342721463143442, worksheet.flows_j92, 0.002); end
  def test_flows_k92; assert_in_epsilon(3.1656196767417617, worksheet.flows_k92, 0.002); end
  def test_flows_l92; assert_in_epsilon(4.1064498112914, worksheet.flows_l92, 0.002); end
  def test_flows_m92; assert_in_epsilon(5.178930420269422, worksheet.flows_m92, 0.002); end
  def test_flows_n92; assert_in_epsilon(6.398216520848876, worksheet.flows_n92, 0.002); end
  def test_flows_o92; assert_in_epsilon(7.78105451928545, worksheet.flows_o92, 0.002); end
  def test_flows_p92; assert_in_epsilon(9.345940586721524, worksheet.flows_p92, 0.002); end
  def test_flows_c93; assert_equal("Liquid fuels import", worksheet.flows_c93); end
  def test_flows_e93; assert_equal("Liquid", worksheet.flows_e93); end
  def test_flows_g93; assert_in_epsilon(13.533388915723663, worksheet.flows_g93, 0.002); end
  def test_flows_h93; assert_in_epsilon(16.08642202923943, worksheet.flows_h93, 0.002); end
  def test_flows_i93; assert_in_epsilon(19.441338938179, worksheet.flows_i93, 0.002); end
  def test_flows_j93; assert_in_epsilon(22.68287294391439, worksheet.flows_j93, 0.002); end
  def test_flows_k93; assert_in_epsilon(24.49010526256484, worksheet.flows_k93, 0.002); end
  def test_flows_l93; assert_in_epsilon(27.673934741584162, worksheet.flows_l93, 0.002); end
  def test_flows_m93; assert_in_epsilon(29.63339769482309, worksheet.flows_m93, 0.002); end
  def test_flows_n93; assert_in_epsilon(33.70769760015196, worksheet.flows_n93, 0.002); end
  def test_flows_o93; assert_in_epsilon(38.10930812379752, worksheet.flows_o93, 0.002); end
  def test_flows_p93; assert_in_epsilon(42.274390174076416, worksheet.flows_p93, 0.002); end
  def test_flows_q93; assert_in_epsilon(1619.7111755251788, worksheet.flows_q93, 0.002); end
  def test_flows_c94; assert_equal("Gas to Liquid", worksheet.flows_c94); end
  def test_flows_e94; assert_equal("Losses", worksheet.flows_e94); end
  def test_flows_g94; assert_in_epsilon(13.512979575068215, worksheet.flows_g94, 0.002); end
  def test_flows_h94; assert_in_epsilon(3.8803186801149043, worksheet.flows_h94, 0.002); end
  def test_flows_i94; assert_in_epsilon(3.5290684222582613, worksheet.flows_i94, 0.002); end
  def test_flows_j94; assert_in_epsilon(2.758704992648409, worksheet.flows_j94, 0.002); end
  def test_flows_k94; assert_in_epsilon(16.72878063037579, worksheet.flows_k94, 0.002); end
  def test_flows_l94; assert_in_epsilon(12.342073822061398, worksheet.flows_l94, 0.002); end
  def test_flows_m94; assert_in_epsilon(16.128393064338944, worksheet.flows_m94, 0.002); end
  def test_flows_n94; assert_in_epsilon(12.070766540864826, worksheet.flows_n94, 0.002); end
  def test_flows_o94; assert_in_epsilon(12.070766540864826, worksheet.flows_o94, 0.002); end
  def test_flows_p94; assert_in_epsilon(12.070766540864826, worksheet.flows_p94, 0.002); end
  def test_flows_g97; assert_in_epsilon(-13.533388915723663, worksheet.flows_g97, 0.002); end
  def test_flows_h97; assert_in_epsilon(-16.08642202923943, worksheet.flows_h97, 0.002); end
  def test_flows_i97; assert_in_epsilon(-19.441338938179, worksheet.flows_i97, 0.002); end
  def test_flows_j97; assert_in_epsilon(-22.68287294391439, worksheet.flows_j97, 0.002); end
  def test_flows_k97; assert_in_epsilon(-24.49010526256484, worksheet.flows_k97, 0.002); end
  def test_flows_l97; assert_in_epsilon(-27.673934741584162, worksheet.flows_l97, 0.002); end
  def test_flows_m97; assert_in_epsilon(-29.63339769482309, worksheet.flows_m97, 0.002); end
  def test_flows_n97; assert_in_epsilon(-33.70769760015196, worksheet.flows_n97, 0.002); end
  def test_flows_o97; assert_in_epsilon(-38.10930812379752, worksheet.flows_o97, 0.002); end
  def test_flows_p97; assert_in_epsilon(-42.274390174076416, worksheet.flows_p97, 0.002); end
  def test_flows_g99; assert_in_epsilon(749.7226076153404, worksheet.flows_g99, 0.002); end
  def test_flows_g100; assert_in_epsilon(495.40383029420974, worksheet.flows_g100, 0.002); end
  def test_flows_o100; assert_equal("RC", worksheet.flows_o100); end
  def test_flows_p100; assert_in_epsilon(9.195556479868984, worksheet.flows_p100, 0.002); end
  def test_flows_g101; assert_in_epsilon(41.29398016009262, worksheet.flows_g101, 0.002); end
  def test_flows_o101; assert_equal("AGR", worksheet.flows_o101); end
  def test_flows_p101; assert_in_epsilon(49.08691125, worksheet.flows_p101, 0.002); end
  def test_flows_g102; assert_in_epsilon(-343.47296991536575, worksheet.flows_g102, 0.002); end
  def test_flows_o102; assert_equal("IND", worksheet.flows_o102); end
  def test_flows_p102; assert_in_epsilon(246.6614811881929, worksheet.flows_p102, 0.002); end
  def test_flows_o103; assert_equal("TRA", worksheet.flows_o103); end
  def test_flows_p103; assert_in_epsilon(1698.348572930301, worksheet.flows_p103, 0.002); end
  def test_flows_g104; assert_in_epsilon(787.4137617281599, worksheet.flows_g104, 0.002); end
  def test_flows_p105; assert_in_epsilon(2003.2925218483629, worksheet.flows_p105, 0.002); end
  def test_flows_c112; assert_equal("FROM", worksheet.flows_c112); end
  def test_flows_d112; assert_equal("TO", worksheet.flows_d112); end
  def test_flows_e112; assert_equal("flow for 2050", worksheet.flows_e112); end
  def test_flows_c114; assert_equal("Primary energy initial flow", worksheet.flows_c114); end
  def test_flows_c116; assert_equal("Coal", worksheet.flows_c116); end
  def test_flows_e116; assert_in_epsilon(12694.075383109057, worksheet.flows_e116, 0.002); end
  def test_flows_c117; assert_equal("Crude oil", worksheet.flows_c117); end
  def test_flows_e117; assert_in_epsilon(1788.4322143915965, worksheet.flows_e117, 0.002); end
  def test_flows_c118; assert_equal("Natural gas", worksheet.flows_c118); end
  def test_flows_e118; assert_in_epsilon(660.6709754069301, worksheet.flows_e118, 0.002); end
  def test_flows_c119; assert_equal("Solar", worksheet.flows_c119); end
  def test_flows_e119; assert_in_epsilon(441.92457987412075, worksheet.flows_e119, 0.002); end
  def test_flows_c120; assert_equal("Wind", worksheet.flows_c120); end
  def test_flows_e120; assert_in_epsilon(22.589636970240004, worksheet.flows_e120, 0.002); end
  def test_flows_c121; assert_equal("Hydro", worksheet.flows_c121); end
  def test_flows_e121; assert_in_epsilon(4.8440916, worksheet.flows_e121, 0.002); end
  def test_flows_c122; assert_equal("Nuclear fuel", worksheet.flows_c122); end
  def test_flows_e122; assert_in_delta(0.0, (worksheet.flows_e122||0), 0.002); end
  def test_flows_c123; assert_equal("Biomass", worksheet.flows_c123); end
  def test_flows_c124; assert_equal("electricity imports", worksheet.flows_c124); end
  def test_flows_e124; assert_in_epsilon(19.13821199999954, worksheet.flows_e124, 0.002); end
  def test_flows_c130; assert_equal("sum", worksheet.flows_c130); end
  def test_flows_e130; assert_in_epsilon(15631.675093351945, worksheet.flows_e130, 0.002); end
  def test_flows_c133; assert_equal("Primary energy", worksheet.flows_c133); end
  def test_flows_d133; assert_equal("transformation", worksheet.flows_d133); end
  def test_flows_c135; assert_equal("Coal", worksheet.flows_c135); end
  def test_flows_d135; assert_equal("Electricity generation", worksheet.flows_d135); end
  def test_flows_e135; assert_in_epsilon(9215.702316799165, worksheet.flows_e135, 0.002); end
  def test_flows_c136; assert_equal("Coal", worksheet.flows_c136); end
  def test_flows_d136; assert_equal("Synthetic fuels", worksheet.flows_d136); end
  def test_flows_e136; assert_in_epsilon(289.1205725346113, worksheet.flows_e136, 0.002); end
  def test_flows_c137; assert_equal("Coal", worksheet.flows_c137); end
  def test_flows_d137; assert_equal("coal direct", worksheet.flows_d137); end
  def test_flows_e137; assert_in_epsilon(3180.1495527667053, worksheet.flows_e137, 0.002); end
  def test_flows_f137; assert_in_epsilon(12684.972442100481, worksheet.flows_f137, 0.002); end
  def test_flows_c138; assert_equal("Crude oil", worksheet.flows_c138); end
  def test_flows_d138; assert_equal("Crude refineries", worksheet.flows_d138); end
  def test_flows_e138; assert_in_epsilon(1788.4322143915965, worksheet.flows_e138, 0.002); end
  def test_flows_c139; assert_equal("Natural gas", worksheet.flows_c139); end
  def test_flows_d139; assert_equal("Synthetic fuels", worksheet.flows_d139); end
  def test_flows_e139; assert_in_epsilon(217.4464348959815, worksheet.flows_e139, 0.002); end
  def test_flows_c140; assert_equal("Natural gas", worksheet.flows_c140); end
  def test_flows_d140; assert_equal("natural gas direct", worksheet.flows_d140); end
  def test_flows_e140; assert_in_epsilon(463.7619386045118, worksheet.flows_e140, 0.002); end
  def test_flows_c141; assert_equal("Solar", worksheet.flows_c141); end
  def test_flows_d141; assert_equal("electricity generation", worksheet.flows_d141); end
  def test_flows_e141; assert_in_epsilon(441.92457987412075, worksheet.flows_e141, 0.002); end
  def test_flows_c142; assert_equal("Wind", worksheet.flows_c142); end
  def test_flows_d142; assert_equal("electricity generation", worksheet.flows_d142); end
  def test_flows_e142; assert_in_epsilon(22.589636970240004, worksheet.flows_e142, 0.002); end
  def test_flows_c143; assert_equal("Hydro", worksheet.flows_c143); end
  def test_flows_d143; assert_equal("electricity generation", worksheet.flows_d143); end
  def test_flows_e143; assert_in_epsilon(4.8440916, worksheet.flows_e143, 0.002); end
  def test_flows_c144; assert_equal("Nuclear fuel", worksheet.flows_c144); end
  def test_flows_d144; assert_equal("electricity generation", worksheet.flows_d144); end
  def test_flows_e144; assert_in_delta(0.0, (worksheet.flows_e144||0), 0.002); end
  def test_flows_c145; assert_equal("Biomass", worksheet.flows_c145); end
  def test_flows_d145; assert_equal("biofuels refining", worksheet.flows_d145); end
  def test_flows_c146; assert_equal("Biomass", worksheet.flows_c146); end
  def test_flows_d146; assert_equal("electricity generation", worksheet.flows_d146); end
  def test_flows_c147; assert_equal("Biomass", worksheet.flows_c147); end
  def test_flows_d147; assert_equal("biomass direct", worksheet.flows_d147); end
  def test_flows_c148; assert_equal("electricity imports", worksheet.flows_c148); end
  def test_flows_d148; assert_equal("electricity imports 2", worksheet.flows_d148); end
  def test_flows_e148; assert_in_epsilon(19.13821199999954, worksheet.flows_e148, 0.002); end
  def test_flows_c149; assert_equal("coal", worksheet.flows_c149); end
  def test_flows_d149; assert_equal("coal exports", worksheet.flows_d149); end
  def test_flows_e149; assert_in_delta(0.0, (worksheet.flows_e149||0), 0.002); end
  def test_flows_c157; assert_equal("sum", worksheet.flows_c157); end
  def test_flows_e157; assert_in_epsilon(15643.109550436931, worksheet.flows_e157, 0.002); end
  def test_flows_c158; assert_equal("missing", worksheet.flows_c158); end
  def test_flows_e158; assert_in_epsilon(-11.434457084986207, worksheet.flows_e158, 0.002); end
  def test_flows_c163; assert_equal("transformation", worksheet.flows_c163); end
  def test_flows_d163; assert_equal("final energy", worksheet.flows_d163); end
  def test_flows_c164; assert_equal("electricity generation", worksheet.flows_c164); end
  def test_flows_d164; assert_equal("electricity", worksheet.flows_d164); end
  def test_flows_e164; assert_in_epsilon(3389.551377390446, worksheet.flows_e164, 0.002); end
  def test_flows_c165; assert_equal("synthetic fuels", worksheet.flows_c165); end
  def test_flows_d165; assert_equal("liquid fuels", worksheet.flows_d165); end
  def test_flows_e165; assert_in_epsilon(91.87549357525275, worksheet.flows_e165, 0.002); end
  def test_flows_c166; assert_equal("coal direct", worksheet.flows_c166); end
  def test_flows_d166; assert_equal("coal final", worksheet.flows_d166); end
  def test_flows_e166; assert_in_epsilon(3180.1495527667053, worksheet.flows_e166, 0.002); end
  def test_flows_c167; assert_equal("crude refineries", worksheet.flows_c167); end
  def test_flows_d167; assert_equal("liquid fuels", worksheet.flows_d167); end
  def test_flows_e167; assert_in_epsilon(1661.9855656992552, worksheet.flows_e167, 0.002); end
  def test_flows_c168; assert_equal("natural gas direct", worksheet.flows_c168); end
  def test_flows_d168; assert_equal("natural gas final", worksheet.flows_d168); end
  def test_flows_e168; assert_in_epsilon(463.7619386045118, worksheet.flows_e168, 0.002); end
  def test_flows_c169; assert_equal("biofuels refining", worksheet.flows_c169); end
  def test_flows_d169; assert_equal("liquid fuels", worksheet.flows_d169); end
  def test_flows_c170; assert_equal("biomass direct", worksheet.flows_c170); end
  def test_flows_d170; assert_equal("biomass final", worksheet.flows_d170); end
  def test_flows_c171; assert_equal("electricity imports 2", worksheet.flows_c171); end
  def test_flows_d171; assert_equal("electricity", worksheet.flows_d171); end
  def test_flows_e171; assert_in_epsilon(19.13821199999954, worksheet.flows_e171, 0.002); end
  def test_flows_c179; assert_equal("electricity generation", worksheet.flows_c179); end
  def test_flows_d179; assert_equal("losses", worksheet.flows_d179); end
  def test_flows_e179; assert_in_epsilon(5873.584264796797, worksheet.flows_e179, 0.002); end
  def test_flows_c180; assert_equal("synthetic fuels", worksheet.flows_c180); end
  def test_flows_d180; assert_equal("losses", worksheet.flows_d180); end
  def test_flows_e180; assert_in_epsilon(217.1939150005343, worksheet.flows_e180, 0.002); end
  def test_flows_c188; assert_equal("sum", worksheet.flows_c188); end
  def test_flows_e188; assert_in_epsilon(14897.240319833501, worksheet.flows_e188, 0.002); end
  def test_flows_c189; assert_equal("missing", worksheet.flows_c189); end
  def test_flows_e189; assert_in_epsilon(745.86923060343, worksheet.flows_e189, 0.002); end
  def test_flows_h196; assert_equal("Unique", worksheet.flows_h196); end
  def test_flows_c197; assert_equal("Final energy", worksheet.flows_c197); end
  def test_flows_d197; assert_equal("end use", worksheet.flows_d197); end
  def test_flows_c198; assert_equal("electricity", worksheet.flows_c198); end
  def test_flows_d198; assert_equal("industry", worksheet.flows_d198); end
  def test_flows_e198; assert_in_epsilon(2348.810650048444, worksheet.flows_e198, 0.002); end
  def test_flows_h198; assert_equal("electricity", worksheet.flows_h198); end
  def test_flows_j198; assert_in_epsilon(3138.8680557278994, worksheet.flows_j198, 0.002); end
  def test_flows_c199; assert_equal("liquid fuels", worksheet.flows_c199); end
  def test_flows_d199; assert_equal("industry", worksheet.flows_d199); end
  def test_flows_e199; assert_in_epsilon(246.6614811881929, worksheet.flows_e199, 0.002); end
  def test_flows_h199; assert_equal("liquid fuels", worksheet.flows_h199); end
  def test_flows_j199; assert_in_epsilon(271.9107316449735, worksheet.flows_j199, 0.002); end
  def test_flows_c200; assert_equal("coal final", worksheet.flows_c200); end
  def test_flows_d200; assert_equal("industry", worksheet.flows_d200); end
  def test_flows_e200; assert_in_epsilon(3139.7026822170346, worksheet.flows_e200, 0.002); end
  def test_flows_h200; assert_equal("coal final", worksheet.flows_h200); end
  def test_flows_j200; assert_in_epsilon(443.5345308118313, worksheet.flows_j200, 0.002); end
  def test_flows_c201; assert_equal("natural gas final", worksheet.flows_c201); end
  def test_flows_d201; assert_equal("industry", worksheet.flows_d201); end
  def test_flows_e201; assert_in_epsilon(443.5345308118313, worksheet.flows_e201, 0.002); end
  def test_flows_h201; assert_equal("natural gas final", worksheet.flows_h201); end
  def test_flows_j201; assert_in_epsilon(3140.2304984670345, worksheet.flows_j201, 0.002); end
  def test_flows_c202; assert_equal("biomass final", worksheet.flows_c202); end
  def test_flows_d202; assert_equal("industry", worksheet.flows_d202); end
  def test_flows_e202; assert_in_epsilon(271.9107316449735, worksheet.flows_e202, 0.002); end
  def test_flows_h202; assert_equal("biomass final", worksheet.flows_h202); end
  def test_flows_j202; assert_in_epsilon(1997.906277919923, worksheet.flows_j202, 0.002); end
  def test_flows_c203; assert_equal("electricity", worksheet.flows_c203); end
  def test_flows_d203; assert_equal("households", worksheet.flows_d203); end
  def test_flows_e203; assert_in_epsilon(382.9655471912064, worksheet.flows_e203, 0.002); end
  def test_flows_h203; assert_equal("electricity", worksheet.flows_h203); end
  def test_flows_j203; assert_in_epsilon(2772.504051824329, worksheet.flows_j203, 0.002); end
  def test_flows_c204; assert_equal("liquid fuels", worksheet.flows_c204); end
  def test_flows_d204; assert_equal("households", worksheet.flows_d204); end
  def test_flows_e204; assert_in_epsilon(3.809312551429139, worksheet.flows_e204, 0.002); end
  def test_flows_c205; assert_equal("coal final", worksheet.flows_c205); end
  def test_flows_d205; assert_equal("households", worksheet.flows_d205); end
  def test_flows_e205; assert_in_delta(0.0, (worksheet.flows_e205||0), 0.002); end
  def test_flows_c206; assert_equal("natural gas final", worksheet.flows_c206); end
  def test_flows_d206; assert_equal("households", worksheet.flows_d206); end
  def test_flows_c207; assert_equal("biomass final", worksheet.flows_c207); end
  def test_flows_d207; assert_equal("households", worksheet.flows_d207); end
  def test_flows_c208; assert_equal("electricity", worksheet.flows_c208); end
  def test_flows_d208; assert_equal("transport", worksheet.flows_d208); end
  def test_flows_e208; assert_in_epsilon(19.967082084678466, worksheet.flows_e208, 0.002); end
  def test_flows_c209; assert_equal("liquid fuels", worksheet.flows_c209); end
  def test_flows_d209; assert_equal("transport", worksheet.flows_d209); end
  def test_flows_e209; assert_in_epsilon(1698.348572930301, worksheet.flows_e209, 0.002); end
  def test_flows_c210; assert_equal("coal final", worksheet.flows_c210); end
  def test_flows_d210; assert_equal("transport", worksheet.flows_d210); end
  def test_flows_c211; assert_equal("natural gas final", worksheet.flows_c211); end
  def test_flows_d211; assert_equal("transport", worksheet.flows_d211); end
  def test_flows_c212; assert_equal("biomass final", worksheet.flows_c212); end
  def test_flows_d212; assert_equal("transport", worksheet.flows_d212); end
  def test_flows_c213; assert_equal("electricity", worksheet.flows_c213); end
  def test_flows_d213; assert_equal("agriculture", worksheet.flows_d213); end
  def test_flows_e213; assert_in_epsilon(20.760772499999998, worksheet.flows_e213, 0.002); end
  def test_flows_c214; assert_equal("liquid fuels", worksheet.flows_c214); end
  def test_flows_d214; assert_equal("agriculture", worksheet.flows_d214); end
  def test_flows_e214; assert_in_epsilon(49.08691125, worksheet.flows_e214, 0.002); end
  def test_flows_c215; assert_equal("coal final", worksheet.flows_c215); end
  def test_flows_d215; assert_equal("agriculture", worksheet.flows_d215); end
  def test_flows_e215; assert_in_delta(0.52781625, worksheet.flows_e215, 0.002); end
  def test_flows_c216; assert_equal("natural gas final", worksheet.flows_c216); end
  def test_flows_d216; assert_equal("agriculture", worksheet.flows_d216); end
  def test_flows_c217; assert_equal("biomass final", worksheet.flows_c217); end
  def test_flows_d217; assert_equal("agriculture", worksheet.flows_d217); end
  def test_flows_c218; assert_equal("electricity", worksheet.flows_c218); end
  def test_flows_d218; assert_equal("commercial", worksheet.flows_d218); end
  def test_flows_e218; assert_in_epsilon(366.3640039035705, worksheet.flows_e218, 0.002); end
  def test_flows_c219; assert_equal("liquid fuels", worksheet.flows_c219); end
  def test_flows_d219; assert_equal("commercial", worksheet.flows_d219); end
  def test_flows_e219; assert_in_epsilon(1.8557577656769244, worksheet.flows_e219, 0.002); end
  def test_flows_c220; assert_equal("coal final", worksheet.flows_c220); end
  def test_flows_d220; assert_equal("commercial", worksheet.flows_d220); end
  def test_flows_e220; assert_in_epsilon(39.919054299670734, worksheet.flows_e220, 0.002); end
  def test_flows_c221; assert_equal("natural gas final", worksheet.flows_c221); end
  def test_flows_d221; assert_equal("commercial", worksheet.flows_d221); end
  def test_flows_e221; assert_in_epsilon(20.227407792680506, worksheet.flows_e221, 0.002); end
  def test_flows_c222; assert_equal("biomass final", worksheet.flows_c222); end
  def test_flows_d222; assert_equal("commercial", worksheet.flows_d222); end
  def test_flows_c226; assert_equal("losses", worksheet.flows_c226); end
  def test_flows_d226; assert_equal("losses final", worksheet.flows_d226); end
  def test_flows_e226; assert_in_epsilon(6090.778179797331, worksheet.flows_e226, 0.002); end
  def test_flows_c231; assert_equal("sum", worksheet.flows_c231); end
  def test_flows_e231; assert_in_epsilon(15145.230494227024, worksheet.flows_e231, 0.002); end
  def test_flows_c232; assert_equal("missing", worksheet.flows_c232); end
  def test_flows_e232; assert_in_epsilon(-247.99017439352247, worksheet.flows_e232, 0.002); end
  def test_flows_c236; assert_equal("elec final", worksheet.flows_c236); end
  def test_flows_e236; assert_in_epsilon(3138.8680557278994, worksheet.flows_e236, 0.002); end
  def test_flows_c237; assert_equal("elec out", worksheet.flows_c237); end
  def test_flows_e237; assert_in_epsilon(3389.551377390446, worksheet.flows_e237, 0.002); end
  def test_flows_c239; assert_equal("coal final", worksheet.flows_c239); end
  def test_flows_e239; assert_in_epsilon(3180.1495527667053, worksheet.flows_e239, 0.002); end
  def test_flows_c240; assert_equal("coal direct", worksheet.flows_c240); end
  def test_flows_e240; assert_in_epsilon(3180.1495527667053, worksheet.flows_e240, 0.002); end
  def test_flows_c247; assert_equal("TABLE FOR USE WITH ONLINE VERSION", worksheet.flows_c247); end
  def test_flows_c249; assert_equal("FROM", worksheet.flows_c249); end
  def test_flows_d249; assert_equal("TO", worksheet.flows_d249); end
  def test_flows_e249; assert_equal("QUANTITY", worksheet.flows_e249); end
  def test_flows_c250; assert_equal("Coal", worksheet.flows_c250); end
  def test_flows_d250; assert_equal("Electricity generation", worksheet.flows_d250); end
  def test_flows_e250; assert_in_epsilon(9215.702316799165, worksheet.flows_e250, 0.002); end
  def test_flows_c251; assert_equal("Coal", worksheet.flows_c251); end
  def test_flows_d251; assert_equal("Synthetic fuels", worksheet.flows_d251); end
  def test_flows_e251; assert_in_epsilon(289.1205725346113, worksheet.flows_e251, 0.002); end
  def test_flows_c252; assert_equal("Coal", worksheet.flows_c252); end
  def test_flows_d252; assert_equal("coal direct", worksheet.flows_d252); end
  def test_flows_e252; assert_in_epsilon(3180.1495527667053, worksheet.flows_e252, 0.002); end
  def test_flows_c253; assert_equal("Crude oil", worksheet.flows_c253); end
  def test_flows_d253; assert_equal("Crude refineries", worksheet.flows_d253); end
  def test_flows_e253; assert_in_epsilon(1788.4322143915965, worksheet.flows_e253, 0.002); end
  def test_flows_c254; assert_equal("Natural gas", worksheet.flows_c254); end
  def test_flows_d254; assert_equal("Synthetic fuels", worksheet.flows_d254); end
  def test_flows_e254; assert_in_epsilon(217.4464348959815, worksheet.flows_e254, 0.002); end
  def test_flows_c255; assert_equal("Natural gas", worksheet.flows_c255); end
  def test_flows_d255; assert_equal("natural gas direct", worksheet.flows_d255); end
  def test_flows_e255; assert_in_epsilon(463.7619386045118, worksheet.flows_e255, 0.002); end
  def test_flows_i255; assert_equal("synfuels flows", worksheet.flows_i255); end
  def test_flows_c256; assert_equal("Solar", worksheet.flows_c256); end
  def test_flows_d256; assert_equal("electricity generation", worksheet.flows_d256); end
  def test_flows_e256; assert_in_epsilon(441.92457987412075, worksheet.flows_e256, 0.002); end
  def test_flows_c257; assert_equal("Wind", worksheet.flows_c257); end
  def test_flows_d257; assert_equal("electricity generation", worksheet.flows_d257); end
  def test_flows_e257; assert_in_epsilon(22.589636970240004, worksheet.flows_e257, 0.002); end
  def test_flows_i257; assert_equal("gas in", worksheet.flows_i257); end
  def test_flows_j257; assert_equal("coal in", worksheet.flows_j257); end
  def test_flows_k257; assert_equal("syn in", worksheet.flows_k257); end
  def test_flows_l257; assert_equal("syn out", worksheet.flows_l257); end
  def test_flows_m257; assert_equal("losses", worksheet.flows_m257); end
  def test_flows_c258; assert_equal("Hydro", worksheet.flows_c258); end
  def test_flows_d258; assert_equal("electricity generation", worksheet.flows_d258); end
  def test_flows_e258; assert_in_epsilon(4.8440916, worksheet.flows_e258, 0.002); end
  def test_flows_i258; assert_in_epsilon(217.4464348959815, worksheet.flows_i258, 0.002); end
  def test_flows_j258; assert_in_epsilon(289.1205725346113, worksheet.flows_j258, 0.002); end
  def test_flows_l258; assert_in_epsilon(91.87549357525275, worksheet.flows_l258, 0.002); end
  def test_flows_m258; assert_in_epsilon(217.1939150005343, worksheet.flows_m258, 0.002); end
  def test_flows_c259; assert_equal("Nuclear fuel", worksheet.flows_c259); end
  def test_flows_d259; assert_equal("electricity generation", worksheet.flows_d259); end
  def test_flows_e259; assert_in_delta(0.0, (worksheet.flows_e259||0), 0.002); end
  def test_flows_c260; assert_equal("Biomass", worksheet.flows_c260); end
  def test_flows_d260; assert_equal("biofuels refining", worksheet.flows_d260); end
  def test_flows_e260; assert_in_delta(0.0, (worksheet.flows_e260||0), 0.002); end
  def test_flows_c261; assert_equal("Biomass", worksheet.flows_c261); end
  def test_flows_d261; assert_equal("electricity generation", worksheet.flows_d261); end
  def test_flows_e261; assert_in_delta(0.0, (worksheet.flows_e261||0), 0.002); end
  def test_flows_q261; assert_equal("error", worksheet.flows_q261); end
  def test_flows_c262; assert_equal("Biomass", worksheet.flows_c262); end
  def test_flows_d262; assert_equal("biomass direct", worksheet.flows_d262); end
  def test_flows_e262; assert_in_delta(0.0, (worksheet.flows_e262||0), 0.002); end
  def test_flows_h262; assert_in_delta(1.0, worksheet.flows_h262, 0.002); end
  def test_flows_i262; assert_in_epsilon(217.4464348959815, worksheet.flows_i262, 0.002); end
  def test_flows_j262; assert_in_epsilon(1257.045967541788, worksheet.flows_j262, 0.002); end
  def test_flows_l262; assert_in_epsilon(411.09440171280437, worksheet.flows_l262, 0.002); end
  def test_flows_m262; assert_in_epsilon(892.2748084581569, worksheet.flows_m262, 0.002); end
  def test_flows_o262; assert_in_epsilon(1303.3692101709612, worksheet.flows_o262, 0.002); end
  def test_flows_p262; assert_in_epsilon(1474.4924024377697, worksheet.flows_p262, 0.002); end
  def test_flows_q262; assert_in_epsilon(171.12319226680847, worksheet.flows_q262, 0.002); end
  def test_flows_c263; assert_equal("electricity imports", worksheet.flows_c263); end
  def test_flows_d263; assert_equal("electricity imports 2", worksheet.flows_d263); end
  def test_flows_e263; assert_in_epsilon(19.13821199999954, worksheet.flows_e263, 0.002); end
  def test_flows_h263; assert_in_epsilon(2.0, worksheet.flows_h263, 0.002); end
  def test_flows_i263; assert_in_epsilon(217.4464348959815, worksheet.flows_i263, 0.002); end
  def test_flows_j263; assert_in_epsilon(1045.987350634751, worksheet.flows_j263, 0.002); end
  def test_flows_l263; assert_in_epsilon(341.02308470645556, worksheet.flows_l263, 0.002); end
  def test_flows_m263; assert_in_epsilon(745.5365015016353, worksheet.flows_m263, 0.002); end
  def test_flows_o263; assert_in_epsilon(1086.5595862080909, worksheet.flows_o263, 0.002); end
  def test_flows_p263; assert_in_epsilon(1263.4337855307326, worksheet.flows_p263, 0.002); end
  def test_flows_q263; assert_in_epsilon(176.87419932264174, worksheet.flows_q263, 0.002); end
  def test_flows_c264; assert_equal("coal", worksheet.flows_c264); end
  def test_flows_d264; assert_equal("coal exports", worksheet.flows_d264); end
  def test_flows_e264; assert_in_delta(0.0, (worksheet.flows_e264||0), 0.002); end
  def test_flows_h264; assert_in_epsilon(3.0, worksheet.flows_h264, 0.002); end
  def test_flows_i264; assert_in_epsilon(217.4464348959815, worksheet.flows_i264, 0.002); end
  def test_flows_j264; assert_in_epsilon(657.0922103059346, worksheet.flows_j264, 0.002); end
  def test_flows_l264; assert_in_epsilon(211.5825841268346, worksheet.flows_l264, 0.002); end
  def test_flows_m264; assert_in_epsilon(475.4850961297624, worksheet.flows_m264, 0.002); end
  def test_flows_o264; assert_in_epsilon(687.067680256597, worksheet.flows_o264, 0.002); end
  def test_flows_p264; assert_in_epsilon(874.5386452019161, worksheet.flows_p264, 0.002); end
  def test_flows_q264; assert_in_epsilon(187.4709649453191, worksheet.flows_q264, 0.002); end
  def test_flows_c265; assert_equal("electricity generation", worksheet.flows_c265); end
  def test_flows_d265; assert_equal("electricity", worksheet.flows_d265); end
  def test_flows_e265; assert_in_epsilon(3389.551377390446, worksheet.flows_e265, 0.002); end
  def test_flows_h265; assert_in_epsilon(4.0, worksheet.flows_h265, 0.002); end
  def test_flows_i265; assert_in_epsilon(217.4464348959815, worksheet.flows_i265, 0.002); end
  def test_flows_j265; assert_in_epsilon(289.1205725346113, worksheet.flows_j265, 0.002); end
  def test_flows_l265; assert_in_epsilon(91.87549357525275, worksheet.flows_l265, 0.002); end
  def test_flows_m265; assert_in_epsilon(217.1939150005343, worksheet.flows_m265, 0.002); end
  def test_flows_o265; assert_in_epsilon(309.06940857578707, worksheet.flows_o265, 0.002); end
  def test_flows_p265; assert_in_epsilon(506.5670074305928, worksheet.flows_p265, 0.002); end
  def test_flows_q265; assert_in_epsilon(197.49759885480574, worksheet.flows_q265, 0.002); end
  def test_flows_c266; assert_equal("synthetic fuels", worksheet.flows_c266); end
  def test_flows_d266; assert_equal("liquid fuels", worksheet.flows_d266); end
  def test_flows_e266; assert_in_epsilon(91.87549357525275, worksheet.flows_e266, 0.002); end
  def test_flows_c267; assert_equal("coal direct", worksheet.flows_c267); end
  def test_flows_d267; assert_equal("coal final", worksheet.flows_d267); end
  def test_flows_e267; assert_in_epsilon(3180.1495527667053, worksheet.flows_e267, 0.002); end
  def test_flows_c268; assert_equal("crude refineries", worksheet.flows_c268); end
  def test_flows_d268; assert_equal("liquid fuels", worksheet.flows_d268); end
  def test_flows_e268; assert_in_epsilon(1661.9855656992552, worksheet.flows_e268, 0.002); end
  def test_flows_c269; assert_equal("natural gas direct", worksheet.flows_c269); end
  def test_flows_d269; assert_equal("natural gas final", worksheet.flows_d269); end
  def test_flows_e269; assert_in_epsilon(463.7619386045118, worksheet.flows_e269, 0.002); end
  def test_flows_c270; assert_equal("biofuels refining", worksheet.flows_c270); end
  def test_flows_d270; assert_equal("liquid fuels", worksheet.flows_d270); end
  def test_flows_e270; assert_in_delta(0.0, (worksheet.flows_e270||0), 0.002); end
  def test_flows_c271; assert_equal("biomass direct", worksheet.flows_c271); end
  def test_flows_d271; assert_equal("biomass final", worksheet.flows_d271); end
  def test_flows_e271; assert_in_delta(0.0, (worksheet.flows_e271||0), 0.002); end
  def test_flows_c272; assert_equal("electricity imports 2", worksheet.flows_c272); end
  def test_flows_d272; assert_equal("electricity", worksheet.flows_d272); end
  def test_flows_e272; assert_in_epsilon(19.13821199999954, worksheet.flows_e272, 0.002); end
  def test_flows_c273; assert_equal("electricity generation", worksheet.flows_c273); end
  def test_flows_d273; assert_equal("losses", worksheet.flows_d273); end
  def test_flows_e273; assert_in_epsilon(5873.584264796797, worksheet.flows_e273, 0.002); end
  def test_flows_c274; assert_equal("synthetic fuels", worksheet.flows_c274); end
  def test_flows_d274; assert_equal("losses", worksheet.flows_d274); end
  def test_flows_e274; assert_in_epsilon(217.1939150005343, worksheet.flows_e274, 0.002); end
  def test_flows_c275; assert_equal("electricity", worksheet.flows_c275); end
  def test_flows_d275; assert_equal("industry", worksheet.flows_d275); end
  def test_flows_e275; assert_in_epsilon(2348.810650048444, worksheet.flows_e275, 0.002); end
  def test_flows_c276; assert_equal("liquid fuels", worksheet.flows_c276); end
  def test_flows_d276; assert_equal("industry", worksheet.flows_d276); end
  def test_flows_e276; assert_in_epsilon(246.6614811881929, worksheet.flows_e276, 0.002); end
  def test_flows_c277; assert_equal("coal final", worksheet.flows_c277); end
  def test_flows_d277; assert_equal("industry", worksheet.flows_d277); end
  def test_flows_e277; assert_in_epsilon(3139.7026822170346, worksheet.flows_e277, 0.002); end
  def test_flows_c278; assert_equal("natural gas final", worksheet.flows_c278); end
  def test_flows_d278; assert_equal("industry", worksheet.flows_d278); end
  def test_flows_e278; assert_in_epsilon(443.5345308118313, worksheet.flows_e278, 0.002); end
  def test_flows_c279; assert_equal("biomass final", worksheet.flows_c279); end
  def test_flows_d279; assert_equal("industry", worksheet.flows_d279); end
  def test_flows_e279; assert_in_epsilon(271.9107316449735, worksheet.flows_e279, 0.002); end
  def test_flows_c280; assert_equal("electricity", worksheet.flows_c280); end
  def test_flows_d280; assert_equal("households", worksheet.flows_d280); end
  def test_flows_e280; assert_in_epsilon(382.9655471912064, worksheet.flows_e280, 0.002); end
  def test_flows_c281; assert_equal("liquid fuels", worksheet.flows_c281); end
  def test_flows_d281; assert_equal("households", worksheet.flows_d281); end
  def test_flows_e281; assert_in_epsilon(3.809312551429139, worksheet.flows_e281, 0.002); end
  def test_flows_c282; assert_equal("coal final", worksheet.flows_c282); end
  def test_flows_d282; assert_equal("households", worksheet.flows_d282); end
  def test_flows_e282; assert_in_delta(0.0, (worksheet.flows_e282||0), 0.002); end
  def test_flows_c283; assert_equal("natural gas final", worksheet.flows_c283); end
  def test_flows_d283; assert_equal("households", worksheet.flows_d283); end
  def test_flows_e283; assert_in_delta(0.0, (worksheet.flows_e283||0), 0.002); end
  def test_flows_c284; assert_equal("biomass final", worksheet.flows_c284); end
  def test_flows_d284; assert_equal("households", worksheet.flows_d284); end
  def test_flows_e284; assert_in_delta(0.0, (worksheet.flows_e284||0), 0.002); end
  def test_flows_c285; assert_equal("electricity", worksheet.flows_c285); end
  def test_flows_d285; assert_equal("transport", worksheet.flows_d285); end
  def test_flows_e285; assert_in_epsilon(19.967082084678466, worksheet.flows_e285, 0.002); end
  def test_flows_c286; assert_equal("liquid fuels", worksheet.flows_c286); end
  def test_flows_d286; assert_equal("transport", worksheet.flows_d286); end
  def test_flows_e286; assert_in_epsilon(1698.348572930301, worksheet.flows_e286, 0.002); end
  def test_flows_c287; assert_equal("coal final", worksheet.flows_c287); end
  def test_flows_d287; assert_equal("transport", worksheet.flows_d287); end
  def test_flows_e287; assert_in_delta(0.0, (worksheet.flows_e287||0), 0.002); end
  def test_flows_c288; assert_equal("natural gas final", worksheet.flows_c288); end
  def test_flows_d288; assert_equal("transport", worksheet.flows_d288); end
  def test_flows_e288; assert_in_delta(0.0, (worksheet.flows_e288||0), 0.002); end
  def test_flows_c289; assert_equal("biomass final", worksheet.flows_c289); end
  def test_flows_d289; assert_equal("transport", worksheet.flows_d289); end
  def test_flows_e289; assert_in_delta(0.0, (worksheet.flows_e289||0), 0.002); end
  def test_flows_c290; assert_equal("electricity", worksheet.flows_c290); end
  def test_flows_d290; assert_equal("agriculture", worksheet.flows_d290); end
  def test_flows_e290; assert_in_epsilon(20.760772499999998, worksheet.flows_e290, 0.002); end
  def test_flows_c291; assert_equal("liquid fuels", worksheet.flows_c291); end
  def test_flows_d291; assert_equal("agriculture", worksheet.flows_d291); end
  def test_flows_e291; assert_in_epsilon(49.08691125, worksheet.flows_e291, 0.002); end
  def test_flows_c292; assert_equal("coal final", worksheet.flows_c292); end
  def test_flows_d292; assert_equal("agriculture", worksheet.flows_d292); end
  def test_flows_e292; assert_in_delta(0.52781625, worksheet.flows_e292, 0.002); end
  def test_flows_c293; assert_equal("natural gas final", worksheet.flows_c293); end
  def test_flows_d293; assert_equal("agriculture", worksheet.flows_d293); end
  def test_flows_e293; assert_in_delta(0.0, (worksheet.flows_e293||0), 0.002); end
  def test_flows_c294; assert_equal("biomass final", worksheet.flows_c294); end
  def test_flows_d294; assert_equal("agriculture", worksheet.flows_d294); end
  def test_flows_e294; assert_in_delta(0.0, (worksheet.flows_e294||0), 0.002); end
  def test_flows_c295; assert_equal("electricity", worksheet.flows_c295); end
  def test_flows_d295; assert_equal("commercial", worksheet.flows_d295); end
  def test_flows_e295; assert_in_epsilon(366.3640039035705, worksheet.flows_e295, 0.002); end
  def test_flows_c296; assert_equal("liquid fuels", worksheet.flows_c296); end
  def test_flows_d296; assert_equal("commercial", worksheet.flows_d296); end
  def test_flows_e296; assert_in_epsilon(1.8557577656769244, worksheet.flows_e296, 0.002); end
  def test_flows_c297; assert_equal("coal final", worksheet.flows_c297); end
  def test_flows_d297; assert_equal("commercial", worksheet.flows_d297); end
  def test_flows_e297; assert_in_epsilon(39.919054299670734, worksheet.flows_e297, 0.002); end
  def test_flows_c298; assert_equal("natural gas final", worksheet.flows_c298); end
  def test_flows_d298; assert_equal("commercial", worksheet.flows_d298); end
  def test_flows_e298; assert_in_epsilon(20.227407792680506, worksheet.flows_e298, 0.002); end
  def test_flows_c299; assert_equal("biomass final", worksheet.flows_c299); end
  def test_flows_d299; assert_equal("commercial", worksheet.flows_d299); end
  def test_flows_e299; assert_in_delta(0.0, (worksheet.flows_e299||0), 0.002); end
end
