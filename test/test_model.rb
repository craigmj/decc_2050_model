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
  def test_control_d5; assert_equal("Population growth", worksheet.control_d5); end
  def test_control_f5; assert_in_delta(1.0, worksheet.control_f5, 0.002); end
  def test_control_d6; assert_equal("Economic growth", worksheet.control_d6); end
  def test_control_f6; assert_in_delta(1.0, worksheet.control_f6, 0.002); end
  def test_control_d8; assert_equal("Nuclear power stations", worksheet.control_d8); end
  def test_control_f8; assert_in_epsilon(4.0, worksheet.control_f8, 0.002); end
  def test_control_h8; assert_equal("Koeberg retires in 2048", worksheet.control_h8); end
  def test_control_i8; assert_equal("Build a total of 9600MW by 2030. Additional 1600MW by 2050 for a total of 14600MW. Koeberg is not retired. ", worksheet.control_i8); end
  def test_control_j8; assert_equal("Build an additional 21000MW by 2030. Add another 6400MW by 2050 for a total of 31000MW. Koeberg is not retired. ", worksheet.control_j8); end
  def test_control_k8; assert_equal("Build a total of 40000MW by 2030. Additional 20000MW by 2050 for a total of 61800MW by 2050. Koeberg is not retired. ", worksheet.control_k8); end
  def test_control_d9; assert_equal("Coal and CCS ", worksheet.control_d9); end
  def test_control_f9; assert_in_epsilon(4.0, worksheet.control_f9, 0.002); end
  def test_control_h9; assert_equal("No coal power with CCS technology. Only the 124MW equivalent pilot operates by 2020.", worksheet.control_h9); end
  def test_control_i9; assert_equal("In addition to pilot project. 500MW of coal power with CCS is built by 2025 and another 500MW by 2030. Capacity increases to 5000MW of coal with CCS by 2050. ", worksheet.control_i9); end
  def test_control_j9; assert_equal("A total of 2000MW of coal power with CCS is built by 2030. Capacity increases to 10000MW by 2050", worksheet.control_j9); end
  def test_control_k9; assert_equal("A total of 5000MW of coal CCS is built by 2030. And the capacity increases to 20000MW by 2050. ", worksheet.control_k9); end
  def test_control_d10; assert_equal("CCGT", worksheet.control_d10); end
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
  def test_control_h12; assert_equal("Lever Level 1", worksheet.control_h12); end
  def test_control_i12; assert_equal("Lever Leve 2", worksheet.control_i12); end
  def test_control_j12; assert_equal("Lever Level 3", worksheet.control_j12); end
  def test_control_k12; assert_equal("Lever Level 4", worksheet.control_k12); end
  def test_control_d13; assert_equal("CSP", worksheet.control_d13); end
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
  def test_control_d16; assert_equal("Biofuels", worksheet.control_d16); end
  def test_control_h16; assert_equal("Lever Level 1", worksheet.control_h16); end
  def test_control_i16; assert_equal("Lever Leve 2", worksheet.control_i16); end
  def test_control_j16; assert_equal("Lever Level 3", worksheet.control_j16); end
  def test_control_k16; assert_equal("Lever Level 4", worksheet.control_k16); end
  def test_control_d17; assert_equal("Livestock Management", worksheet.control_d17); end
  def test_control_f17; assert_in_epsilon(4.0, worksheet.control_f17, 0.002); end
  def test_control_h17; assert_equal("Lever Level 1", worksheet.control_h17); end
  def test_control_i17; assert_equal("Lever Leve 2", worksheet.control_i17); end
  def test_control_j17; assert_equal("Lever Level 3", worksheet.control_j17); end
  def test_control_k17; assert_equal("Lever Level 4", worksheet.control_k17); end
  def test_control_d18; assert_equal("Land Use ", worksheet.control_d18); end
  def test_control_f18; assert_in_epsilon(3.0, worksheet.control_f18, 0.002); end
  def test_control_h18; assert_equal("Lever Level 1", worksheet.control_h18); end
  def test_control_i18; assert_equal("Lever Leve 2", worksheet.control_i18); end
  def test_control_j18; assert_equal("Lever Level 3", worksheet.control_j18); end
  def test_control_k18; assert_equal("Lever Level 4", worksheet.control_k18); end
  def test_control_d19; assert_equal("Waste ", worksheet.control_d19); end
  def test_control_h19; assert_equal("Lever Level 1", worksheet.control_h19); end
  def test_control_i19; assert_equal("Lever Leve 2", worksheet.control_i19); end
  def test_control_j19; assert_equal("Lever Level 3", worksheet.control_j19); end
  def test_control_k19; assert_equal("Lever Level 4", worksheet.control_k19); end
  def test_control_d20; assert_equal("Waste conversion & biofuels ", worksheet.control_d20); end
  def test_control_f20; assert_in_epsilon(4.0, worksheet.control_f20, 0.002); end
  def test_control_h20; assert_equal("Lever Level 1", worksheet.control_h20); end
  def test_control_i20; assert_equal("Lever Leve 2", worksheet.control_i20); end
  def test_control_j20; assert_equal("Lever Level 3", worksheet.control_j20); end
  def test_control_k20; assert_equal("Lever Level 4", worksheet.control_k20); end
  def test_control_d21; assert_equal("Supply of natural gas", worksheet.control_d21); end
  def test_control_f21; assert_in_epsilon(2.0, worksheet.control_f21, 0.002); end
  def test_control_h21; assert_equal("Continue to import from Mozambique. Some production from Mossel Bay.", worksheet.control_h21); end
  def test_control_i21; assert_equal("Shale Gas extraction is assumed to take place. ", worksheet.control_i21); end
  def test_control_d22; assert_equal("Rate of Natural gas production", worksheet.control_d22); end
  def test_control_f22; assert_in_epsilon(2.0, worksheet.control_f22, 0.002); end
  def test_control_h22; assert_equal("A fair pace of extraction", worksheet.control_h22); end
  def test_control_i22; assert_equal("A fast pace of extraction. ", worksheet.control_i22); end
  def test_control_d23; assert_equal("Liquid biofuel share", worksheet.control_d23); end
  def test_control_f23; assert_in_epsilon(4.0, worksheet.control_f23, 0.002); end
  def test_control_h23; assert_equal("Lever Level 1", worksheet.control_h23); end
  def test_control_i23; assert_equal("Lever Leve 2", worksheet.control_i23); end
  def test_control_j23; assert_equal("Lever Level 3", worksheet.control_j23); end
  def test_control_k23; assert_equal("Lever Level 4", worksheet.control_k23); end
  def test_control_d24; assert_equal("CTL capacity", worksheet.control_d24); end
  def test_control_f24; assert_in_epsilon(4.0, worksheet.control_f24, 0.002); end
  def test_control_h24; assert_equal("Lever Level 1", worksheet.control_h24); end
  def test_control_i24; assert_equal("Lever Leve 2", worksheet.control_i24); end
  def test_control_j24; assert_equal("Lever Level 3", worksheet.control_j24); end
  def test_control_k24; assert_equal("Lever Level 4", worksheet.control_k24); end
  def test_control_d25; assert_equal("Gas material share", worksheet.control_d25); end
  def test_control_f25; assert_in_epsilon(2.0, worksheet.control_f25, 0.002); end
  def test_control_h25; assert_equal("Lever Level 1", worksheet.control_h25); end
  def test_control_i25; assert_equal("Lever Leve 2", worksheet.control_i25); end
  def test_control_j25; assert_equal("Lever Level 3", worksheet.control_j25); end
  def test_control_k25; assert_equal("Lever Level 4", worksheet.control_k25); end
  def test_control_d26; assert_equal("GTL capacity", worksheet.control_d26); end
  def test_control_f26; assert_in_epsilon(4.0, worksheet.control_f26, 0.002); end
  def test_control_h26; assert_equal("Lever Level 1", worksheet.control_h26); end
  def test_control_i26; assert_equal("Lever Leve 2", worksheet.control_i26); end
  def test_control_j26; assert_equal("Lever Level 3", worksheet.control_j26); end
  def test_control_k26; assert_equal("Lever Level 4", worksheet.control_k26); end
  def test_control_d27; assert_equal("Refinery capacity", worksheet.control_d27); end
  def test_control_f27; assert_in_epsilon(3.0, worksheet.control_f27, 0.002); end
  def test_control_h27; assert_equal("Lever Level 1", worksheet.control_h27); end
  def test_control_i27; assert_equal("Lever Leve 2", worksheet.control_i27); end
  def test_control_j27; assert_equal("Lever Level 3", worksheet.control_j27); end
  def test_control_k27; assert_equal("Lever Level 4", worksheet.control_k27); end
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
  def test_control_d32; assert_equal("Efficiency Improvement", worksheet.control_d32); end
  def test_control_f32; assert_in_epsilon(4.0, worksheet.control_f32, 0.002); end
  def test_control_h32; assert_equal("It is assumed that 0.1% of efficiency will be gained annually, resulting in overall efficiency gain of 4%  by 2050.", worksheet.control_h32); end
  def test_control_i32; assert_equal("It is assumed that 0.2% of efficiency will be gained annually, resulting in overall efficiency gain of 22%  by 2050.", worksheet.control_i32); end
  def test_control_j32; assert_equal("It is assumed that 0.5 % of efficiency will be gained annually, resulting in overall efficiency gain of 44%  by 2050.", worksheet.control_j32); end
  def test_control_k32; assert_equal("It is assumed that 1% of efficiency will be gained annually, resulting in overall efficiency gain of 66%  by 2050.", worksheet.control_k32); end
  def test_control_d33; assert_equal("Occupancy", worksheet.control_d33); end
  def test_control_f33; assert_in_epsilon(2.0, worksheet.control_f33, 0.002); end
  def test_control_h33; assert_equal("No changes to vehicle occupancy", worksheet.control_h33); end
  def test_control_i33; assert_equal("minibus, buses and private vehicle occupancies are increased to 18, 30  and 1.5 people per vehicle.", worksheet.control_i33); end
  def test_control_j33; assert_equal("minibus, buses and private vehicle occupancies are increased to 20, 50  and 1.8 people per vehicle.", worksheet.control_j33); end
  def test_control_k33; assert_equal("minibus, buses and private vehicle occupancies are increased to 20, 50  and 1.8 people per vehicle.", worksheet.control_k33); end
  def test_control_d34; assert_equal("Mode Shift", worksheet.control_d34); end
  def test_control_f34; assert_in_epsilon(4.0, worksheet.control_f34, 0.002); end
  def test_control_h34; assert_equal("the proportion of ton-km serviced by road vs rail transportation stays at 70% and 30% respectively by 2050. ", worksheet.control_h34); end
  def test_control_i34; assert_equal("Level 2 assumes that rail corridor gains 10% of the current heavy duty vehicles' market share while rail other gains a mere 5% of medium duty vehicles’ market share by 2050. ", worksheet.control_i34); end
  def test_control_j34; assert_equal("50% of goods are moved by road. ", worksheet.control_j34); end
  def test_control_k34; assert_equal("38% of ton-km will be moved by road and the remaining 62%  by rail", worksheet.control_k34); end
  def test_control_d35; assert_equal("Efficiency Improvement", worksheet.control_d35); end
  def test_control_f35; assert_in_epsilon(2.0, worksheet.control_f35, 0.002); end
  def test_control_h35; assert_equal("Lever Level 1", worksheet.control_h35); end
  def test_control_i35; assert_equal("Lever Leve 2", worksheet.control_i35); end
  def test_control_j35; assert_equal("Lever Level 3", worksheet.control_j35); end
  def test_control_k35; assert_equal("Lever Level 4", worksheet.control_k35); end
  def test_control_d36; assert_equal("Electrification of Households across South Africa", worksheet.control_d36); end
  def test_control_f36; assert_in_epsilon(4.0, worksheet.control_f36, 0.002); end
  def test_control_h36; assert_equal("100% by 2050 for everyone", worksheet.control_h36); end
  def test_control_i36; assert_equal("100% by 2040", worksheet.control_i36); end
  def test_control_j36; assert_equal("100% by 2030", worksheet.control_j36); end
  def test_control_k36; assert_equal("100% by 2020. ", worksheet.control_k36); end
  def test_control_d37; assert_equal("Lighting, Water heating, Appliances", worksheet.control_d37); end
  def test_control_f37; assert_in_epsilon(4.0, worksheet.control_f37, 0.002); end
  def test_control_h37; assert_equal("Lever Level 1", worksheet.control_h37); end
  def test_control_i37; assert_equal("Lever Leve 2", worksheet.control_i37); end
  def test_control_j37; assert_equal("Lever Level 3", worksheet.control_j37); end
  def test_control_k37; assert_equal("Lever Level 4", worksheet.control_k37); end
  def test_control_d38; assert_equal("Space heating, Refridgeration, cooking", worksheet.control_d38); end
  def test_control_f38; assert_in_epsilon(4.0, worksheet.control_f38, 0.002); end
  def test_control_h38; assert_equal("Lever Level 1", worksheet.control_h38); end
  def test_control_i38; assert_equal("Lever Leve 2", worksheet.control_i38); end
  def test_control_j38; assert_equal("Lever Level 3", worksheet.control_j38); end
  def test_control_k38; assert_equal("Lever Level 4", worksheet.control_k38); end
  def test_control_d39; assert_equal("SWH scenario", worksheet.control_d39); end
  def test_control_f39; assert_in_epsilon(4.0, worksheet.control_f39, 0.002); end
  def test_control_h39; assert_equal("As is today", worksheet.control_h39); end
  def test_control_i39; assert_equal("All SWH by 2050", worksheet.control_i39); end
  def test_control_j39; assert_equal("All SWH by 2040", worksheet.control_j39); end
  def test_control_k39; assert_equal("All SWH by 2030", worksheet.control_k39); end
  def test_control_d40; assert_equal("Energy efficiency of plant", worksheet.control_d40); end
  def test_control_f40; assert_in_epsilon(4.0, worksheet.control_f40, 0.002); end
  def test_control_h40; assert_equal("Lever Level 1", worksheet.control_h40); end
  def test_control_i40; assert_equal("Lever Leve 2", worksheet.control_i40); end
  def test_control_j40; assert_equal("Lever Level 3", worksheet.control_j40); end
  def test_control_k40; assert_equal("Lever Level 4", worksheet.control_k40); end
  def test_control_d41; assert_equal("Industrial boiler/furnace fuel migration to gas and/or waste", worksheet.control_d41); end
  def test_control_f41; assert_in_epsilon(4.0, worksheet.control_f41, 0.002); end
  def test_control_h41; assert_equal("Lever Level 1", worksheet.control_h41); end
  def test_control_i41; assert_equal("Lever Leve 2", worksheet.control_i41); end
  def test_control_j41; assert_equal("Lever Level 3", worksheet.control_j41); end
  def test_control_k41; assert_equal("Lever Level 4", worksheet.control_k41); end
  def test_control_d42; assert_equal("CHP share of demand above base year", worksheet.control_d42); end
  def test_control_f42; assert_in_epsilon(4.0, worksheet.control_f42, 0.002); end
  def test_control_h42; assert_equal("Lever Level 1", worksheet.control_h42); end
  def test_control_i42; assert_equal("Lever Leve 2", worksheet.control_i42); end
  def test_control_j42; assert_equal("Lever Level 3", worksheet.control_j42); end
  def test_control_k42; assert_equal("Lever Level 4", worksheet.control_k42); end
  def test_control_d43; assert_equal("Public Services", worksheet.control_d43); end
  def test_control_f43; assert_in_epsilon(4.0, worksheet.control_f43, 0.002); end
  def test_control_h43; assert_equal("Lever Level 1", worksheet.control_h43); end
  def test_control_i43; assert_equal("Lever Leve 2", worksheet.control_i43); end
  def test_control_j43; assert_equal("Lever Level 3", worksheet.control_j43); end
  def test_control_k43; assert_equal("Lever Level 4", worksheet.control_k43); end
  def test_control_d44; assert_equal("Building Retrofits for HVAC ", worksheet.control_d44); end
  def test_control_f44; assert_in_epsilon(4.0, worksheet.control_f44, 0.002); end
  def test_control_h44; assert_equal("Lever Level 1", worksheet.control_h44); end
  def test_control_i44; assert_equal("Lever Leve 2", worksheet.control_i44); end
  def test_control_j44; assert_equal("Lever Level 3", worksheet.control_j44); end
  def test_control_k44; assert_equal("Lever Level 4", worksheet.control_k44); end
  def test_control_d45; assert_equal("Building tech shares mix", worksheet.control_d45); end
  def test_control_f45; assert_in_epsilon(4.0, worksheet.control_f45, 0.002); end
  def test_control_h45; assert_equal("Lever Level 1", worksheet.control_h45); end
  def test_control_i45; assert_equal("Lever Leve 2", worksheet.control_i45); end
  def test_control_j45; assert_equal("Lever Level 3", worksheet.control_j45); end
  def test_control_k45; assert_equal("Lever Level 4", worksheet.control_k45); end
  def test_control_d46; assert_equal("New Building code Strength", worksheet.control_d46); end
  def test_control_f46; assert_in_epsilon(4.0, worksheet.control_f46, 0.002); end
  def test_control_h46; assert_equal("Buildings built after 2015 are 15% more efficient than in 2006.", worksheet.control_h46); end
  def test_control_i46; assert_equal("A building code revision process leads to energy efficient buildings. Buildings built after 2030 are 25% more efficient", worksheet.control_i46); end
  def test_control_j46; assert_equal("A strict code revision process. Buildings built after 2030 are 35% more efficient", worksheet.control_j46); end
  def test_control_k46; assert_equal("Very strict code revision process. Buildings built after 2030 are 55% more efficient than today.", worksheet.control_k46); end
  def test_control_a1; assert_equal("Version 0.60.20140228", worksheet.control_a1); end
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
  def test_intermediate_output_h7; assert_in_epsilon(731.6407000879561, worksheet.intermediate_output_h7, 0.002); end
  def test_intermediate_output_i7; assert_in_epsilon(836.8136613597014, worksheet.intermediate_output_i7, 0.002); end
  def test_intermediate_output_j7; assert_in_epsilon(935.7002940398364, worksheet.intermediate_output_j7, 0.002); end
  def test_intermediate_output_k7; assert_in_epsilon(1035.1756732368576, worksheet.intermediate_output_k7, 0.002); end
  def test_intermediate_output_l7; assert_in_epsilon(1134.8362898508212, worksheet.intermediate_output_l7, 0.002); end
  def test_intermediate_output_m7; assert_in_epsilon(1235.2808347344212, worksheet.intermediate_output_m7, 0.002); end
  def test_intermediate_output_n7; assert_in_epsilon(1334.236225196742, worksheet.intermediate_output_n7, 0.002); end
  def test_intermediate_output_o7; assert_in_epsilon(1444.7485094390345, worksheet.intermediate_output_o7, 0.002); end
  def test_intermediate_output_p7; assert_in_epsilon(1527.3971236636753, worksheet.intermediate_output_p7, 0.002); end
  def test_intermediate_output_c8; assert_equal("T.02", worksheet.intermediate_output_c8); end
  def test_intermediate_output_d8; assert_equal("Rail transport", worksheet.intermediate_output_d8); end
  def test_intermediate_output_g8; assert_in_epsilon(9.659433307420844, worksheet.intermediate_output_g8, 0.002); end
  def test_intermediate_output_h8; assert_in_epsilon(9.599048969833802, worksheet.intermediate_output_h8, 0.002); end
  def test_intermediate_output_i8; assert_in_epsilon(9.439313233294843, worksheet.intermediate_output_i8, 0.002); end
  def test_intermediate_output_j8; assert_in_epsilon(9.279979760416557, worksheet.intermediate_output_j8, 0.002); end
  def test_intermediate_output_k8; assert_in_epsilon(9.115494119523678, worksheet.intermediate_output_k8, 0.002); end
  def test_intermediate_output_l8; assert_in_epsilon(8.962881484445703, worksheet.intermediate_output_l8, 0.002); end
  def test_intermediate_output_m8; assert_in_epsilon(8.814556902451137, worksheet.intermediate_output_m8, 0.002); end
  def test_intermediate_output_n8; assert_in_epsilon(8.647537051507623, worksheet.intermediate_output_n8, 0.002); end
  def test_intermediate_output_o8; assert_in_epsilon(8.457048558075257, worksheet.intermediate_output_o8, 0.002); end
  def test_intermediate_output_p8; assert_in_epsilon(8.254999299007803, worksheet.intermediate_output_p8, 0.002); end
  def test_intermediate_output_c9; assert_equal("T.03", worksheet.intermediate_output_c9); end
  def test_intermediate_output_d9; assert_equal("Domestic aviation", worksheet.intermediate_output_d9); end
  def test_intermediate_output_g9; assert_in_delta(0.0, (worksheet.intermediate_output_g9||0), 0.002); end
  def test_intermediate_output_h9; assert_in_epsilon(1.3674173331113761, worksheet.intermediate_output_h9, 0.002); end
  def test_intermediate_output_i9; assert_in_epsilon(9.559789912007094, worksheet.intermediate_output_i9, 0.002); end
  def test_intermediate_output_j9; assert_in_epsilon(16.08640017823062, worksheet.intermediate_output_j9, 0.002); end
  def test_intermediate_output_k9; assert_in_epsilon(19.853462611180532, worksheet.intermediate_output_k9, 0.002); end
  def test_intermediate_output_l9; assert_in_epsilon(22.781012496132433, worksheet.intermediate_output_l9, 0.002); end
  def test_intermediate_output_m9; assert_in_epsilon(24.50492154058223, worksheet.intermediate_output_m9, 0.002); end
  def test_intermediate_output_n9; assert_in_epsilon(25.752272842470948, worksheet.intermediate_output_n9, 0.002); end
  def test_intermediate_output_o9; assert_in_epsilon(28.84490494835968, worksheet.intermediate_output_o9, 0.002); end
  def test_intermediate_output_p9; assert_in_epsilon(26.594141337932612, worksheet.intermediate_output_p9, 0.002); end
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
  def test_intermediate_output_h13; assert_in_epsilon(742.6071663909013, worksheet.intermediate_output_h13, 0.002); end
  def test_intermediate_output_i13; assert_in_epsilon(855.8127645050033, worksheet.intermediate_output_i13, 0.002); end
  def test_intermediate_output_j13; assert_in_epsilon(961.0666739784837, worksheet.intermediate_output_j13, 0.002); end
  def test_intermediate_output_k13; assert_in_epsilon(1064.1446299675617, worksheet.intermediate_output_k13, 0.002); end
  def test_intermediate_output_l13; assert_in_epsilon(1166.5801838313994, worksheet.intermediate_output_l13, 0.002); end
  def test_intermediate_output_m13; assert_in_epsilon(1268.6003131774546, worksheet.intermediate_output_m13, 0.002); end
  def test_intermediate_output_n13; assert_in_epsilon(1368.6360350907207, worksheet.intermediate_output_n13, 0.002); end
  def test_intermediate_output_o13; assert_in_epsilon(1482.0504629454695, worksheet.intermediate_output_o13, 0.002); end
  def test_intermediate_output_p13; assert_in_epsilon(1562.2462643006156, worksheet.intermediate_output_p13, 0.002); end
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
  def test_intermediate_output_g15; assert_in_epsilon(108.97207322535527, worksheet.intermediate_output_g15, 0.002); end
  def test_intermediate_output_h15; assert_in_epsilon(116.11638895026772, worksheet.intermediate_output_h15, 0.002); end
  def test_intermediate_output_i15; assert_in_epsilon(123.55839726939749, worksheet.intermediate_output_i15, 0.002); end
  def test_intermediate_output_j15; assert_in_epsilon(130.4100410445449, worksheet.intermediate_output_j15, 0.002); end
  def test_intermediate_output_k15; assert_in_epsilon(136.30237648933144, worksheet.intermediate_output_k15, 0.002); end
  def test_intermediate_output_l15; assert_in_epsilon(141.3181920398876, worksheet.intermediate_output_l15, 0.002); end
  def test_intermediate_output_m15; assert_in_epsilon(143.00952450339835, worksheet.intermediate_output_m15, 0.002); end
  def test_intermediate_output_n15; assert_in_epsilon(143.13021211276538, worksheet.intermediate_output_n15, 0.002); end
  def test_intermediate_output_o15; assert_in_epsilon(140.86904619165153, worksheet.intermediate_output_o15, 0.002); end
  def test_intermediate_output_p15; assert_in_epsilon(130.65252469626327, worksheet.intermediate_output_p15, 0.002); end
  def test_intermediate_output_c16; assert_equal("L.01", worksheet.intermediate_output_c16); end
  def test_intermediate_output_d16; assert_equal("Lighting", worksheet.intermediate_output_d16); end
  def test_intermediate_output_g16; assert_in_epsilon(67.08155096017973, worksheet.intermediate_output_g16, 0.002); end
  def test_intermediate_output_h16; assert_in_epsilon(74.83416462380731, worksheet.intermediate_output_h16, 0.002); end
  def test_intermediate_output_i16; assert_in_epsilon(84.03760451570672, worksheet.intermediate_output_i16, 0.002); end
  def test_intermediate_output_j16; assert_in_epsilon(94.14633398089073, worksheet.intermediate_output_j16, 0.002); end
  def test_intermediate_output_k16; assert_in_epsilon(104.93756827149994, worksheet.intermediate_output_k16, 0.002); end
  def test_intermediate_output_l16; assert_in_epsilon(116.68647809872071, worksheet.intermediate_output_l16, 0.002); end
  def test_intermediate_output_m16; assert_in_epsilon(129.17219856954205, worksheet.intermediate_output_m16, 0.002); end
  def test_intermediate_output_n16; assert_in_epsilon(141.90873373414155, worksheet.intermediate_output_n16, 0.002); end
  def test_intermediate_output_o16; assert_in_epsilon(154.90525547075205, worksheet.intermediate_output_o16, 0.002); end
  def test_intermediate_output_p16; assert_in_epsilon(167.82759400879684, worksheet.intermediate_output_p16, 0.002); end
  def test_intermediate_output_c17; assert_equal("H.02", worksheet.intermediate_output_c17); end
  def test_intermediate_output_d17; assert_equal("Water Heating", worksheet.intermediate_output_d17); end
  def test_intermediate_output_g17; assert_in_epsilon(124.4086006297527, worksheet.intermediate_output_g17, 0.002); end
  def test_intermediate_output_h17; assert_in_epsilon(128.69692811670632, worksheet.intermediate_output_h17, 0.002); end
  def test_intermediate_output_i17; assert_in_epsilon(141.02337106812956, worksheet.intermediate_output_i17, 0.002); end
  def test_intermediate_output_j17; assert_in_epsilon(153.15528013911876, worksheet.intermediate_output_j17, 0.002); end
  def test_intermediate_output_k17; assert_in_epsilon(164.66660005388817, worksheet.intermediate_output_k17, 0.002); end
  def test_intermediate_output_l17; assert_in_epsilon(175.55518159312925, worksheet.intermediate_output_l17, 0.002); end
  def test_intermediate_output_m17; assert_in_epsilon(188.2039639251562, worksheet.intermediate_output_m17, 0.002); end
  def test_intermediate_output_n17; assert_in_epsilon(199.4178776081664, worksheet.intermediate_output_n17, 0.002); end
  def test_intermediate_output_o17; assert_in_epsilon(210.8937471454981, worksheet.intermediate_output_o17, 0.002); end
  def test_intermediate_output_p17; assert_in_epsilon(214.55772547518953, worksheet.intermediate_output_p17, 0.002); end
  def test_intermediate_output_c18; assert_equal("H.03", worksheet.intermediate_output_c18); end
  def test_intermediate_output_d18; assert_equal("Refridgeration", worksheet.intermediate_output_d18); end
  def test_intermediate_output_g18; assert_in_epsilon(22.779277741344078, worksheet.intermediate_output_g18, 0.002); end
  def test_intermediate_output_h18; assert_in_epsilon(25.42317733756154, worksheet.intermediate_output_h18, 0.002); end
  def test_intermediate_output_i18; assert_in_epsilon(28.777700616062617, worksheet.intermediate_output_i18, 0.002); end
  def test_intermediate_output_j18; assert_in_epsilon(32.20930368914678, worksheet.intermediate_output_j18, 0.002); end
  def test_intermediate_output_k18; assert_in_epsilon(35.62918854429503, worksheet.intermediate_output_k18, 0.002); end
  def test_intermediate_output_l18; assert_in_epsilon(39.02019395714929, worksheet.intermediate_output_l18, 0.002); end
  def test_intermediate_output_m18; assert_in_epsilon(43.26020825527096, worksheet.intermediate_output_m18, 0.002); end
  def test_intermediate_output_n18; assert_in_epsilon(47.3110109808667, worksheet.intermediate_output_n18, 0.002); end
  def test_intermediate_output_o18; assert_in_epsilon(51.750412558350675, worksheet.intermediate_output_o18, 0.002); end
  def test_intermediate_output_p18; assert_in_epsilon(55.13109287940523, worksheet.intermediate_output_p18, 0.002); end
  def test_intermediate_output_c19; assert_equal("H.04", worksheet.intermediate_output_c19); end
  def test_intermediate_output_d19; assert_equal("Cooling", worksheet.intermediate_output_d19); end
  def test_intermediate_output_g19; assert_in_epsilon(31.130593696404677, worksheet.intermediate_output_g19, 0.002); end
  def test_intermediate_output_h19; assert_in_epsilon(34.26705405839668, worksheet.intermediate_output_h19, 0.002); end
  def test_intermediate_output_i19; assert_in_epsilon(37.46349015123627, worksheet.intermediate_output_i19, 0.002); end
  def test_intermediate_output_j19; assert_in_epsilon(40.94792366383324, worksheet.intermediate_output_j19, 0.002); end
  def test_intermediate_output_k19; assert_in_epsilon(44.5668229599398, worksheet.intermediate_output_k19, 0.002); end
  def test_intermediate_output_l19; assert_in_epsilon(48.590026602113, worksheet.intermediate_output_l19, 0.002); end
  def test_intermediate_output_m19; assert_in_epsilon(53.461364611394046, worksheet.intermediate_output_m19, 0.002); end
  def test_intermediate_output_n19; assert_in_epsilon(58.16089927319496, worksheet.intermediate_output_n19, 0.002); end
  def test_intermediate_output_o19; assert_in_epsilon(62.31669195966128, worksheet.intermediate_output_o19, 0.002); end
  def test_intermediate_output_p19; assert_in_epsilon(65.03742309272585, worksheet.intermediate_output_p19, 0.002); end
  def test_intermediate_output_c20; assert_equal("Z.02", worksheet.intermediate_output_c20); end
  def test_intermediate_output_d20; assert_equal("Other Use", worksheet.intermediate_output_d20); end
  def test_intermediate_output_g20; assert_in_epsilon(48.210042902135555, worksheet.intermediate_output_g20, 0.002); end
  def test_intermediate_output_h20; assert_in_epsilon(53.46551418172973, worksheet.intermediate_output_h20, 0.002); end
  def test_intermediate_output_i20; assert_in_epsilon(60.754979472104196, worksheet.intermediate_output_i20, 0.002); end
  def test_intermediate_output_j20; assert_in_epsilon(69.21037096880089, worksheet.intermediate_output_j20, 0.002); end
  def test_intermediate_output_k20; assert_in_epsilon(78.66485918161484, worksheet.intermediate_output_k20, 0.002); end
  def test_intermediate_output_l20; assert_in_epsilon(89.62952346837088, worksheet.intermediate_output_l20, 0.002); end
  def test_intermediate_output_m20; assert_in_epsilon(104.93197839805481, worksheet.intermediate_output_m20, 0.002); end
  def test_intermediate_output_n20; assert_in_epsilon(121.17189394236115, worksheet.intermediate_output_n20, 0.002); end
  def test_intermediate_output_o20; assert_in_epsilon(138.5759439250498, worksheet.intermediate_output_o20, 0.002); end
  def test_intermediate_output_p20; assert_in_epsilon(158.12714793668135, worksheet.intermediate_output_p20, 0.002); end
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
  def test_intermediate_output_g22; assert_in_epsilon(93.80399867029342, worksheet.intermediate_output_g22, 0.002); end
  def test_intermediate_output_h22; assert_in_epsilon(97.56700039462494, worksheet.intermediate_output_h22, 0.002); end
  def test_intermediate_output_i22; assert_in_epsilon(102.33815984423131, worksheet.intermediate_output_i22, 0.002); end
  def test_intermediate_output_j22; assert_in_epsilon(106.08409444585989, worksheet.intermediate_output_j22, 0.002); end
  def test_intermediate_output_k22; assert_in_epsilon(108.67445219642813, worksheet.intermediate_output_k22, 0.002); end
  def test_intermediate_output_l22; assert_in_epsilon(109.86709245241524, worksheet.intermediate_output_l22, 0.002); end
  def test_intermediate_output_m22; assert_in_epsilon(104.17938030749805, worksheet.intermediate_output_m22, 0.002); end
  def test_intermediate_output_n22; assert_in_epsilon(98.41894080905027, worksheet.intermediate_output_n22, 0.002); end
  def test_intermediate_output_o22; assert_in_epsilon(91.26898425390635, worksheet.intermediate_output_o22, 0.002); end
  def test_intermediate_output_p22; assert_in_epsilon(84.41449626690779, worksheet.intermediate_output_p22, 0.002); end
  def test_intermediate_output_d23; assert_equal("Residential and commercial", worksheet.intermediate_output_d23); end
  def test_intermediate_output_g23; assert_in_epsilon(497.4688696789516, worksheet.intermediate_output_g23, 0.002); end
  def test_intermediate_output_h23; assert_in_epsilon(531.504331375557, worksheet.intermediate_output_h23, 0.002); end
  def test_intermediate_output_i23; assert_in_epsilon(579.1547310787661, worksheet.intermediate_output_i23, 0.002); end
  def test_intermediate_output_j23; assert_in_epsilon(627.4265998894014, worksheet.intermediate_output_j23, 0.002); end
  def test_intermediate_output_k23; assert_in_epsilon(674.7615351308883, worksheet.intermediate_output_k23, 0.002); end
  def test_intermediate_output_l23; assert_in_epsilon(722.034095387964, worksheet.intermediate_output_l23, 0.002); end
  def test_intermediate_output_m23; assert_in_epsilon(767.5993690612588, worksheet.intermediate_output_m23, 0.002); end
  def test_intermediate_output_n23; assert_in_epsilon(810.9085095500802, worksheet.intermediate_output_n23, 0.002); end
  def test_intermediate_output_o23; assert_in_epsilon(851.9669321158119, worksheet.intermediate_output_o23, 0.002); end
  def test_intermediate_output_p23; assert_in_epsilon(877.1275627879133, worksheet.intermediate_output_p23, 0.002); end
  def test_intermediate_output_d24; assert_equal("Total Use", worksheet.intermediate_output_d24); end
  def test_intermediate_output_g24; assert_in_epsilon(2363.826169304278, worksheet.intermediate_output_g24, 0.002); end
  def test_intermediate_output_h24; assert_in_epsilon(2673.2852091443838, worksheet.intermediate_output_h24, 0.002); end
  def test_intermediate_output_i24; assert_in_epsilon(3142.7711865275674, worksheet.intermediate_output_i24, 0.002); end
  def test_intermediate_output_j24; assert_in_epsilon(3643.463303646591, worksheet.intermediate_output_j24, 0.002); end
  def test_intermediate_output_k24; assert_in_epsilon(4276.909311526106, worksheet.intermediate_output_k24, 0.002); end
  def test_intermediate_output_l24; assert_in_epsilon(4967.338460038594, worksheet.intermediate_output_l24, 0.002); end
  def test_intermediate_output_m24; assert_in_epsilon(5875.154935112198, worksheet.intermediate_output_m24, 0.002); end
  def test_intermediate_output_n24; assert_in_epsilon(6819.675631935165, worksheet.intermediate_output_n24, 0.002); end
  def test_intermediate_output_o24; assert_in_epsilon(7861.914802357803, worksheet.intermediate_output_o24, 0.002); end
  def test_intermediate_output_p24; assert_in_epsilon(8889.993902999006, worksheet.intermediate_output_p24, 0.002); end
  def test_intermediate_output_d26; assert_equal("Dummy for charting uses", worksheet.intermediate_output_d26); end
  def test_intermediate_output_g26; assert_in_epsilon(2252.828345967712, worksheet.intermediate_output_g26, 0.002); end
  def test_intermediate_output_h26; assert_in_epsilon(2701.328108167607, worksheet.intermediate_output_h26, 0.002); end
  def test_intermediate_output_i26; assert_in_epsilon(2961.5203004813998, worksheet.intermediate_output_i26, 0.002); end
  def test_intermediate_output_j26; assert_in_epsilon(3320.82575086003, worksheet.intermediate_output_j26, 0.002); end
  def test_intermediate_output_k26; assert_in_epsilon(3735.6391969093984, worksheet.intermediate_output_k26, 0.002); end
  def test_intermediate_output_l26; assert_in_epsilon(4260.031920340936, worksheet.intermediate_output_l26, 0.002); end
  def test_intermediate_output_m26; assert_in_epsilon(4873.042763004716, worksheet.intermediate_output_m26, 0.002); end
  def test_intermediate_output_n26; assert_in_epsilon(5553.493556043996, worksheet.intermediate_output_n26, 0.002); end
  def test_intermediate_output_o26; assert_in_epsilon(6389.015898927059, worksheet.intermediate_output_o26, 0.002); end
  def test_intermediate_output_p26; assert_in_epsilon(7267.225020432596, worksheet.intermediate_output_p26, 0.002); end
  def test_intermediate_output_c28; assert_equal("Source", worksheet.intermediate_output_c28); end
  def test_intermediate_output_c29; assert_equal("N.01", worksheet.intermediate_output_c29); end
  def test_intermediate_output_d29; assert_equal("Nuclear fission", worksheet.intermediate_output_d29); end
  def test_intermediate_output_g29; assert_in_epsilon(110.05713000000002, worksheet.intermediate_output_g29, 0.002); end
  def test_intermediate_output_h29; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_h29, 0.002); end
  def test_intermediate_output_i29; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_i29, 0.002); end
  def test_intermediate_output_j29; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_j29, 0.002); end
  def test_intermediate_output_k29; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_k29, 0.002); end
  def test_intermediate_output_l29; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_l29, 0.002); end
  def test_intermediate_output_m29; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_m29, 0.002); end
  def test_intermediate_output_n29; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_n29, 0.002); end
  def test_intermediate_output_o29; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_o29, 0.002); end
  def test_intermediate_output_p29; assert_in_delta(0.0, (worksheet.intermediate_output_p29||0), 0.002); end
  def test_intermediate_output_c30; assert_equal("R.01", worksheet.intermediate_output_c30); end
  def test_intermediate_output_d30; assert_equal("Solar", worksheet.intermediate_output_d30); end
  def test_intermediate_output_g30; assert_in_delta(0.0, (worksheet.intermediate_output_g30||0), 0.002); end
  def test_intermediate_output_h30; assert_in_delta(0.006712584794189628, worksheet.intermediate_output_h30, 0.002); end
  def test_intermediate_output_i30; assert_in_epsilon(12.049461337908133, worksheet.intermediate_output_i30, 0.002); end
  def test_intermediate_output_j30; assert_in_epsilon(15.364972224801516, worksheet.intermediate_output_j30, 0.002); end
  def test_intermediate_output_k30; assert_in_epsilon(15.367270050567054, worksheet.intermediate_output_k30, 0.002); end
  def test_intermediate_output_l30; assert_in_epsilon(15.370042203043193, worksheet.intermediate_output_l30, 0.002); end
  def test_intermediate_output_m30; assert_in_epsilon(15.373541437865228, worksheet.intermediate_output_m30, 0.002); end
  def test_intermediate_output_n30; assert_in_epsilon(15.377460458127448, worksheet.intermediate_output_n30, 0.002); end
  def test_intermediate_output_o30; assert_in_epsilon(15.381648173386, worksheet.intermediate_output_o30, 0.002); end
  def test_intermediate_output_p30; assert_in_epsilon(15.386189751529962, worksheet.intermediate_output_p30, 0.002); end
  def test_intermediate_output_c31; assert_equal("R.02", worksheet.intermediate_output_c31); end
  def test_intermediate_output_d31; assert_equal("Wind", worksheet.intermediate_output_d31); end
  def test_intermediate_output_g31; assert_in_delta(0.02592772416, worksheet.intermediate_output_g31, 0.002); end
  def test_intermediate_output_h31; assert_in_delta(0.06859359936, worksheet.intermediate_output_h31, 0.002); end
  def test_intermediate_output_i31; assert_in_epsilon(11.57035420224, worksheet.intermediate_output_i31, 0.002); end
  def test_intermediate_output_j31; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_j31, 0.002); end
  def test_intermediate_output_k31; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_k31, 0.002); end
  def test_intermediate_output_l31; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_l31, 0.002); end
  def test_intermediate_output_m31; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_m31, 0.002); end
  def test_intermediate_output_n31; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_n31, 0.002); end
  def test_intermediate_output_o31; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_o31, 0.002); end
  def test_intermediate_output_p31; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_p31, 0.002); end
  def test_intermediate_output_c32; assert_equal("R.06", worksheet.intermediate_output_c32); end
  def test_intermediate_output_d32; assert_equal("Hydro", worksheet.intermediate_output_d32); end
  def test_intermediate_output_g32; assert_in_epsilon(5.285898, worksheet.intermediate_output_g32, 0.002); end
  def test_intermediate_output_h32; assert_in_epsilon(5.285898, worksheet.intermediate_output_h32, 0.002); end
  def test_intermediate_output_i32; assert_in_epsilon(5.317455600000001, worksheet.intermediate_output_i32, 0.002); end
  def test_intermediate_output_j32; assert_in_epsilon(5.396349600000001, worksheet.intermediate_output_j32, 0.002); end
  def test_intermediate_output_k32; assert_in_epsilon(4.8440916, worksheet.intermediate_output_k32, 0.002); end
  def test_intermediate_output_l32; assert_in_epsilon(4.8440916, worksheet.intermediate_output_l32, 0.002); end
  def test_intermediate_output_m32; assert_in_epsilon(4.8440916, worksheet.intermediate_output_m32, 0.002); end
  def test_intermediate_output_n32; assert_in_epsilon(4.8440916, worksheet.intermediate_output_n32, 0.002); end
  def test_intermediate_output_o32; assert_in_epsilon(4.8440916, worksheet.intermediate_output_o32, 0.002); end
  def test_intermediate_output_p32; assert_in_epsilon(4.8440916, worksheet.intermediate_output_p32, 0.002); end
  def test_intermediate_output_c33; assert_equal("Y.02", worksheet.intermediate_output_c33); end
  def test_intermediate_output_d33; assert_equal("Electricity oversupply (imports)", worksheet.intermediate_output_d33); end
  def test_intermediate_output_g33; assert_in_epsilon(-24.81858000000011, worksheet.intermediate_output_g33, 0.002); end
  def test_intermediate_output_h33; assert_in_epsilon(-24.818579999999997, worksheet.intermediate_output_h33, 0.002); end
  def test_intermediate_output_i33; assert_in_epsilon(-19.13821199999954, worksheet.intermediate_output_i33, 0.002); end
  def test_intermediate_output_j33; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_j33, 0.002); end
  def test_intermediate_output_k33; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_k33, 0.002); end
  def test_intermediate_output_l33; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_l33, 0.002); end
  def test_intermediate_output_m33; assert_in_epsilon(-19.13821199999954, worksheet.intermediate_output_m33, 0.002); end
  def test_intermediate_output_n33; assert_in_epsilon(-19.13821200000045, worksheet.intermediate_output_n33, 0.002); end
  def test_intermediate_output_o33; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_o33, 0.002); end
  def test_intermediate_output_p33; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_p33, 0.002); end
  def test_intermediate_output_d34; assert_equal("Renewables - hydro, wind, solar", worksheet.intermediate_output_d34); end
  def test_intermediate_output_g34; assert_in_epsilon(5.31182572416, worksheet.intermediate_output_g34, 0.002); end
  def test_intermediate_output_h34; assert_in_epsilon(5.36120418415419, worksheet.intermediate_output_h34, 0.002); end
  def test_intermediate_output_i34; assert_in_epsilon(28.937271140148134, worksheet.intermediate_output_i34, 0.002); end
  def test_intermediate_output_j34; assert_in_epsilon(43.35095879504152, worksheet.intermediate_output_j34, 0.002); end
  def test_intermediate_output_k34; assert_in_epsilon(42.80099862080706, worksheet.intermediate_output_k34, 0.002); end
  def test_intermediate_output_l34; assert_in_epsilon(42.8037707732832, worksheet.intermediate_output_l34, 0.002); end
  def test_intermediate_output_m34; assert_in_epsilon(42.807270008105235, worksheet.intermediate_output_m34, 0.002); end
  def test_intermediate_output_n34; assert_in_epsilon(42.81118902836745, worksheet.intermediate_output_n34, 0.002); end
  def test_intermediate_output_o34; assert_in_epsilon(42.815376743626004, worksheet.intermediate_output_o34, 0.002); end
  def test_intermediate_output_p34; assert_in_epsilon(42.81991832176996, worksheet.intermediate_output_p34, 0.002); end
  def test_intermediate_output_d35; assert_equal("Primary electricity, solar, and net imports", worksheet.intermediate_output_d35); end
  def test_intermediate_output_g35; assert_in_epsilon(90.5503757241599, worksheet.intermediate_output_g35, 0.002); end
  def test_intermediate_output_h35; assert_in_epsilon(124.32693918415424, worksheet.intermediate_output_h35, 0.002); end
  def test_intermediate_output_i35; assert_in_epsilon(153.58337414014858, worksheet.intermediate_output_i35, 0.002); end
  def test_intermediate_output_j35; assert_in_epsilon(167.99706179504153, worksheet.intermediate_output_j35, 0.002); end
  def test_intermediate_output_k35; assert_in_epsilon(167.44710162080708, worksheet.intermediate_output_k35, 0.002); end
  def test_intermediate_output_l35; assert_in_epsilon(167.44987377328323, worksheet.intermediate_output_l35, 0.002); end
  def test_intermediate_output_m35; assert_in_epsilon(167.4533730081057, worksheet.intermediate_output_m35, 0.002); end
  def test_intermediate_output_n35; assert_in_epsilon(167.45729202836702, worksheet.intermediate_output_n35, 0.002); end
  def test_intermediate_output_o35; assert_in_epsilon(167.46147974362606, worksheet.intermediate_output_o35, 0.002); end
  def test_intermediate_output_p35; assert_in_epsilon(23.681706321769965, worksheet.intermediate_output_p35, 0.002); end
  def test_intermediate_output_c36; assert_equal("R.07", worksheet.intermediate_output_c36); end
  def test_intermediate_output_d36; assert_equal("Environmental heat", worksheet.intermediate_output_d36); end
  def test_intermediate_output_g36; assert_in_delta(0.0, (worksheet.intermediate_output_g36||0), 0.002); end
  def test_intermediate_output_h36; assert_in_delta(0.0, (worksheet.intermediate_output_h36||0), 0.002); end
  def test_intermediate_output_i36; assert_in_delta(0.0, (worksheet.intermediate_output_i36||0), 0.002); end
  def test_intermediate_output_j36; assert_in_delta(0.0, (worksheet.intermediate_output_j36||0), 0.002); end
  def test_intermediate_output_k36; assert_in_delta(0.0, (worksheet.intermediate_output_k36||0), 0.002); end
  def test_intermediate_output_l36; assert_in_delta(0.0, (worksheet.intermediate_output_l36||0), 0.002); end
  def test_intermediate_output_m36; assert_in_delta(0.0, (worksheet.intermediate_output_m36||0), 0.002); end
  def test_intermediate_output_n36; assert_in_delta(0.0, (worksheet.intermediate_output_n36||0), 0.002); end
  def test_intermediate_output_o36; assert_in_delta(0.0, (worksheet.intermediate_output_o36||0), 0.002); end
  def test_intermediate_output_p36; assert_in_delta(0.0, (worksheet.intermediate_output_p36||0), 0.002); end
  def test_intermediate_output_c37; assert_equal("W.01", worksheet.intermediate_output_c37); end
  def test_intermediate_output_d37; assert_equal("Waste", worksheet.intermediate_output_d37); end
  def test_intermediate_output_g37; assert_in_delta(0.5869869821173436, worksheet.intermediate_output_g37, 0.002); end
  def test_intermediate_output_h37; assert_in_delta(0.0, (worksheet.intermediate_output_h37||0), 0.002); end
  def test_intermediate_output_i37; assert_in_delta(0.0, (worksheet.intermediate_output_i37||0), 0.002); end
  def test_intermediate_output_j37; assert_in_delta(0.0, (worksheet.intermediate_output_j37||0), 0.002); end
  def test_intermediate_output_k37; assert_in_delta(0.0, (worksheet.intermediate_output_k37||0), 0.002); end
  def test_intermediate_output_l37; assert_in_delta(0.0, (worksheet.intermediate_output_l37||0), 0.002); end
  def test_intermediate_output_m37; assert_in_delta(0.0, (worksheet.intermediate_output_m37||0), 0.002); end
  def test_intermediate_output_n37; assert_in_delta(0.0, (worksheet.intermediate_output_n37||0), 0.002); end
  def test_intermediate_output_o37; assert_in_delta(0.0, (worksheet.intermediate_output_o37||0), 0.002); end
  def test_intermediate_output_p37; assert_in_delta(0.0, (worksheet.intermediate_output_p37||0), 0.002); end
  def test_intermediate_output_c38; assert_equal("A.01", worksheet.intermediate_output_c38); end
  def test_intermediate_output_d38; assert_equal("Agriculture", worksheet.intermediate_output_d38); end
  def test_intermediate_output_g38; assert_in_delta(0.0, (worksheet.intermediate_output_g38||0), 0.002); end
  def test_intermediate_output_h38; assert_in_delta(0.0, (worksheet.intermediate_output_h38||0), 0.002); end
  def test_intermediate_output_i38; assert_in_delta(0.0, (worksheet.intermediate_output_i38||0), 0.002); end
  def test_intermediate_output_j38; assert_in_delta(0.0, (worksheet.intermediate_output_j38||0), 0.002); end
  def test_intermediate_output_k38; assert_in_delta(0.0, (worksheet.intermediate_output_k38||0), 0.002); end
  def test_intermediate_output_l38; assert_in_delta(0.0, (worksheet.intermediate_output_l38||0), 0.002); end
  def test_intermediate_output_m38; assert_in_delta(0.0, (worksheet.intermediate_output_m38||0), 0.002); end
  def test_intermediate_output_n38; assert_in_delta(0.0, (worksheet.intermediate_output_n38||0), 0.002); end
  def test_intermediate_output_o38; assert_in_delta(0.0, (worksheet.intermediate_output_o38||0), 0.002); end
  def test_intermediate_output_p38; assert_in_delta(0.0, (worksheet.intermediate_output_p38||0), 0.002); end
  def test_intermediate_output_c39; assert_equal("Y.01", worksheet.intermediate_output_c39); end
  def test_intermediate_output_d39; assert_equal("Biomass ", worksheet.intermediate_output_d39); end
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
  def test_intermediate_output_d40; assert_equal("Agriculture, waste, and biomatter ", worksheet.intermediate_output_d40); end
  def test_intermediate_output_g40; assert_in_delta(0.5869869821173436, worksheet.intermediate_output_g40, 0.002); end
  def test_intermediate_output_h40; assert_in_delta(0.0, (worksheet.intermediate_output_h40||0), 0.002); end
  def test_intermediate_output_i40; assert_in_delta(0.0, (worksheet.intermediate_output_i40||0), 0.002); end
  def test_intermediate_output_j40; assert_in_delta(0.0, (worksheet.intermediate_output_j40||0), 0.002); end
  def test_intermediate_output_k40; assert_in_delta(0.0, (worksheet.intermediate_output_k40||0), 0.002); end
  def test_intermediate_output_l40; assert_in_delta(0.0, (worksheet.intermediate_output_l40||0), 0.002); end
  def test_intermediate_output_m40; assert_in_delta(0.0, (worksheet.intermediate_output_m40||0), 0.002); end
  def test_intermediate_output_n40; assert_in_delta(0.0, (worksheet.intermediate_output_n40||0), 0.002); end
  def test_intermediate_output_o40; assert_in_delta(0.0, (worksheet.intermediate_output_o40||0), 0.002); end
  def test_intermediate_output_p40; assert_in_delta(0.0, (worksheet.intermediate_output_p40||0), 0.002); end
  def test_intermediate_output_c41; assert_equal("Y.04", worksheet.intermediate_output_c41); end
  def test_intermediate_output_d41; assert_equal("Coal oversupply (imports)", worksheet.intermediate_output_d41); end
  def test_intermediate_output_g41; assert_in_delta(0.0, (worksheet.intermediate_output_g41||0), 0.002); end
  def test_intermediate_output_h41; assert_in_delta(0.0, (worksheet.intermediate_output_h41||0), 0.002); end
  def test_intermediate_output_i41; assert_in_delta(0.0, (worksheet.intermediate_output_i41||0), 0.002); end
  def test_intermediate_output_j41; assert_in_delta(0.0, (worksheet.intermediate_output_j41||0), 0.002); end
  def test_intermediate_output_k41; assert_in_delta(0.0, (worksheet.intermediate_output_k41||0), 0.002); end
  def test_intermediate_output_l41; assert_in_delta(0.0, (worksheet.intermediate_output_l41||0), 0.002); end
  def test_intermediate_output_m41; assert_in_delta(0.0, (worksheet.intermediate_output_m41||0), 0.002); end
  def test_intermediate_output_n41; assert_in_delta(0.0, (worksheet.intermediate_output_n41||0), 0.002); end
  def test_intermediate_output_o41; assert_in_delta(0.0, (worksheet.intermediate_output_o41||0), 0.002); end
  def test_intermediate_output_p41; assert_in_delta(0.0, (worksheet.intermediate_output_p41||0), 0.002); end
  def test_intermediate_output_c42; assert_equal("Q.01", worksheet.intermediate_output_c42); end
  def test_intermediate_output_d42; assert_equal("Coal reserves", worksheet.intermediate_output_d42); end
  def test_intermediate_output_g42; assert_in_epsilon(3828.2267258574393, worksheet.intermediate_output_g42, 0.002); end
  def test_intermediate_output_h42; assert_in_epsilon(4449.7199049898145, worksheet.intermediate_output_h42, 0.002); end
  def test_intermediate_output_i42; assert_in_epsilon(4998.970045931257, worksheet.intermediate_output_i42, 0.002); end
  def test_intermediate_output_j42; assert_in_epsilon(5702.334215195748, worksheet.intermediate_output_j42, 0.002); end
  def test_intermediate_output_k42; assert_in_epsilon(6600.118180684277, worksheet.intermediate_output_k42, 0.002); end
  def test_intermediate_output_l42; assert_in_epsilon(7661.061788650826, worksheet.intermediate_output_l42, 0.002); end
  def test_intermediate_output_m42; assert_in_epsilon(9011.927229784807, worksheet.intermediate_output_m42, 0.002); end
  def test_intermediate_output_n42; assert_in_epsilon(10457.405102010125, worksheet.intermediate_output_n42, 0.002); end
  def test_intermediate_output_o42; assert_in_epsilon(12136.890978482726, worksheet.intermediate_output_o42, 0.002); end
  def test_intermediate_output_p42; assert_in_epsilon(14031.31250417394, worksheet.intermediate_output_p42, 0.002); end
  def test_intermediate_output_d43; assert_equal("Coal", worksheet.intermediate_output_d43); end
  def test_intermediate_output_g43; assert_in_epsilon(3828.2267258574393, worksheet.intermediate_output_g43, 0.002); end
  def test_intermediate_output_h43; assert_in_epsilon(4449.7199049898145, worksheet.intermediate_output_h43, 0.002); end
  def test_intermediate_output_i43; assert_in_epsilon(4998.970045931257, worksheet.intermediate_output_i43, 0.002); end
  def test_intermediate_output_j43; assert_in_epsilon(5702.334215195748, worksheet.intermediate_output_j43, 0.002); end
  def test_intermediate_output_k43; assert_in_epsilon(6600.118180684277, worksheet.intermediate_output_k43, 0.002); end
  def test_intermediate_output_l43; assert_in_epsilon(7661.061788650826, worksheet.intermediate_output_l43, 0.002); end
  def test_intermediate_output_m43; assert_in_epsilon(9011.927229784807, worksheet.intermediate_output_m43, 0.002); end
  def test_intermediate_output_n43; assert_in_epsilon(10457.405102010125, worksheet.intermediate_output_n43, 0.002); end
  def test_intermediate_output_o43; assert_in_epsilon(12136.890978482726, worksheet.intermediate_output_o43, 0.002); end
  def test_intermediate_output_p43; assert_in_epsilon(14031.31250417394, worksheet.intermediate_output_p43, 0.002); end
  def test_intermediate_output_c44; assert_equal("Q.02", worksheet.intermediate_output_c44); end
  def test_intermediate_output_d44; assert_equal("Oil reserves", worksheet.intermediate_output_d44); end
  def test_intermediate_output_g44; assert_in_delta(0.0, (worksheet.intermediate_output_g44||0), 0.002); end
  def test_intermediate_output_h44; assert_in_delta(0.0, (worksheet.intermediate_output_h44||0), 0.002); end
  def test_intermediate_output_i44; assert_in_delta(0.0, (worksheet.intermediate_output_i44||0), 0.002); end
  def test_intermediate_output_j44; assert_in_delta(0.0, (worksheet.intermediate_output_j44||0), 0.002); end
  def test_intermediate_output_k44; assert_in_delta(0.0, (worksheet.intermediate_output_k44||0), 0.002); end
  def test_intermediate_output_l44; assert_in_delta(0.0, (worksheet.intermediate_output_l44||0), 0.002); end
  def test_intermediate_output_m44; assert_in_delta(0.0, (worksheet.intermediate_output_m44||0), 0.002); end
  def test_intermediate_output_n44; assert_in_delta(0.0, (worksheet.intermediate_output_n44||0), 0.002); end
  def test_intermediate_output_o44; assert_in_delta(0.0, (worksheet.intermediate_output_o44||0), 0.002); end
  def test_intermediate_output_p44; assert_in_delta(0.0, (worksheet.intermediate_output_p44||0), 0.002); end
  def test_intermediate_output_c45; assert_equal("Y.05", worksheet.intermediate_output_c45); end
  def test_intermediate_output_d45; assert_equal("Oil and petroleum products oversupply (imports)", worksheet.intermediate_output_d45); end
  def test_intermediate_output_g45; assert_in_epsilon(508.9372192099334, worksheet.intermediate_output_g45, 0.002); end
  def test_intermediate_output_h45; assert_in_epsilon(594.1906644951619, worksheet.intermediate_output_h45, 0.002); end
  def test_intermediate_output_i45; assert_in_epsilon(717.7914263945646, worksheet.intermediate_output_i45, 0.002); end
  def test_intermediate_output_j45; assert_in_epsilon(835.5126687068351, worksheet.intermediate_output_j45, 0.002); end
  def test_intermediate_output_k45; assert_in_epsilon(954.9845768586109, worksheet.intermediate_output_k45, 0.002); end
  def test_intermediate_output_l45; assert_in_epsilon(1078.0283476148047, worksheet.intermediate_output_l45, 0.002); end
  def test_intermediate_output_m45; assert_in_epsilon(1261.2367635922692, worksheet.intermediate_output_m45, 0.002); end
  def test_intermediate_output_n45; assert_in_epsilon(1391.2624207517285, worksheet.intermediate_output_n45, 0.002); end
  def test_intermediate_output_o45; assert_in_epsilon(1536.6460898889306, worksheet.intermediate_output_o45, 0.002); end
  def test_intermediate_output_p45; assert_in_epsilon(1650.925933481074, worksheet.intermediate_output_p45, 0.002); end
  def test_intermediate_output_c46; assert_equal("Y.03", worksheet.intermediate_output_c46); end
  def test_intermediate_output_d46; assert_equal("Petroleum products oversupply", worksheet.intermediate_output_d46); end
  def test_intermediate_output_g46; assert_in_delta(0.0, (worksheet.intermediate_output_g46||0), 0.002); end
  def test_intermediate_output_h46; assert_in_delta(0.0, (worksheet.intermediate_output_h46||0), 0.002); end
  def test_intermediate_output_i46; assert_in_delta(0.0, (worksheet.intermediate_output_i46||0), 0.002); end
  def test_intermediate_output_j46; assert_in_delta(0.0, (worksheet.intermediate_output_j46||0), 0.002); end
  def test_intermediate_output_k46; assert_in_delta(0.0, (worksheet.intermediate_output_k46||0), 0.002); end
  def test_intermediate_output_l46; assert_in_delta(0.0, (worksheet.intermediate_output_l46||0), 0.002); end
  def test_intermediate_output_m46; assert_in_delta(0.0, (worksheet.intermediate_output_m46||0), 0.002); end
  def test_intermediate_output_n46; assert_in_delta(0.0, (worksheet.intermediate_output_n46||0), 0.002); end
  def test_intermediate_output_o46; assert_in_delta(0.0, (worksheet.intermediate_output_o46||0), 0.002); end
  def test_intermediate_output_p46; assert_in_delta(0.0, (worksheet.intermediate_output_p46||0), 0.002); end
  def test_intermediate_output_d47; assert_equal("Oil and petroleum products", worksheet.intermediate_output_d47); end
  def test_intermediate_output_g47; assert_in_epsilon(508.9372192099334, worksheet.intermediate_output_g47, 0.002); end
  def test_intermediate_output_h47; assert_in_epsilon(594.1906644951619, worksheet.intermediate_output_h47, 0.002); end
  def test_intermediate_output_i47; assert_in_epsilon(717.7914263945646, worksheet.intermediate_output_i47, 0.002); end
  def test_intermediate_output_j47; assert_in_epsilon(835.5126687068351, worksheet.intermediate_output_j47, 0.002); end
  def test_intermediate_output_k47; assert_in_epsilon(954.9845768586109, worksheet.intermediate_output_k47, 0.002); end
  def test_intermediate_output_l47; assert_in_epsilon(1078.0283476148047, worksheet.intermediate_output_l47, 0.002); end
  def test_intermediate_output_m47; assert_in_epsilon(1261.2367635922692, worksheet.intermediate_output_m47, 0.002); end
  def test_intermediate_output_n47; assert_in_epsilon(1391.2624207517285, worksheet.intermediate_output_n47, 0.002); end
  def test_intermediate_output_o47; assert_in_epsilon(1536.6460898889306, worksheet.intermediate_output_o47, 0.002); end
  def test_intermediate_output_p47; assert_in_epsilon(1650.925933481074, worksheet.intermediate_output_p47, 0.002); end
  def test_intermediate_output_c48; assert_equal("Y.06", worksheet.intermediate_output_c48); end
  def test_intermediate_output_d48; assert_equal("Gas oversupply (imports)", worksheet.intermediate_output_d48); end
  def test_intermediate_output_g48; assert_in_epsilon(127.13820749834085, worksheet.intermediate_output_g48, 0.002); end
  def test_intermediate_output_h48; assert_in_epsilon(161.57580864286027, worksheet.intermediate_output_h48, 0.002); end
  def test_intermediate_output_i48; assert_in_epsilon(207.49268854299652, worksheet.intermediate_output_i48, 0.002); end
  def test_intermediate_output_j48; assert_in_epsilon(242.82431469251762, worksheet.intermediate_output_j48, 0.002); end
  def test_intermediate_output_k48; assert_in_epsilon(289.99864927180886, worksheet.intermediate_output_k48, 0.002); end
  def test_intermediate_output_l48; assert_in_epsilon(320.8303703406156, worksheet.intermediate_output_l48, 0.002); end
  def test_intermediate_output_m48; assert_in_epsilon(307.58033173173044, worksheet.intermediate_output_m48, 0.002); end
  def test_intermediate_output_n48; assert_in_epsilon(357.04437318894117, worksheet.intermediate_output_n48, 0.002); end
  def test_intermediate_output_o48; assert_in_epsilon(409.9321531695792, worksheet.intermediate_output_o48, 0.002); end
  def test_intermediate_output_p48; assert_in_epsilon(451.2987794548169, worksheet.intermediate_output_p48, 0.002); end
  def test_intermediate_output_c49; assert_equal("Q.03", worksheet.intermediate_output_c49); end
  def test_intermediate_output_d49; assert_equal("Gas reserves", worksheet.intermediate_output_d49); end
  def test_intermediate_output_g49; assert_in_epsilon(61.214999999999996, worksheet.intermediate_output_g49, 0.002); end
  def test_intermediate_output_h49; assert_in_epsilon(44.8, worksheet.intermediate_output_h49, 0.002); end
  def test_intermediate_output_i49; assert_in_epsilon(26.453952000000008, worksheet.intermediate_output_i49, 0.002); end
  def test_intermediate_output_j49; assert_in_epsilon(15.62079411648001, worksheet.intermediate_output_j49, 0.002); end
  def test_intermediate_output_k49; assert_in_delta(0.0, (worksheet.intermediate_output_k49||0), 0.002); end
  def test_intermediate_output_l49; assert_in_delta(0.0, (worksheet.intermediate_output_l49||0), 0.002); end
  def test_intermediate_output_m49; assert_in_delta(0.0, (worksheet.intermediate_output_m49||0), 0.002); end
  def test_intermediate_output_n49; assert_in_delta(0.0, (worksheet.intermediate_output_n49||0), 0.002); end
  def test_intermediate_output_o49; assert_in_delta(0.0, (worksheet.intermediate_output_o49||0), 0.002); end
  def test_intermediate_output_p49; assert_in_delta(0.0, (worksheet.intermediate_output_p49||0), 0.002); end
  def test_intermediate_output_d50; assert_equal("Natural gas", worksheet.intermediate_output_d50); end
  def test_intermediate_output_g50; assert_in_epsilon(188.35320749834085, worksheet.intermediate_output_g50, 0.002); end
  def test_intermediate_output_h50; assert_in_epsilon(206.37580864286025, worksheet.intermediate_output_h50, 0.002); end
  def test_intermediate_output_i50; assert_in_epsilon(233.94664054299653, worksheet.intermediate_output_i50, 0.002); end
  def test_intermediate_output_j50; assert_in_epsilon(258.44510880899765, worksheet.intermediate_output_j50, 0.002); end
  def test_intermediate_output_k50; assert_in_epsilon(289.99864927180886, worksheet.intermediate_output_k50, 0.002); end
  def test_intermediate_output_l50; assert_in_epsilon(320.8303703406156, worksheet.intermediate_output_l50, 0.002); end
  def test_intermediate_output_m50; assert_in_epsilon(307.58033173173044, worksheet.intermediate_output_m50, 0.002); end
  def test_intermediate_output_n50; assert_in_epsilon(357.04437318894117, worksheet.intermediate_output_n50, 0.002); end
  def test_intermediate_output_o50; assert_in_epsilon(409.9321531695792, worksheet.intermediate_output_o50, 0.002); end
  def test_intermediate_output_p50; assert_in_epsilon(451.2987794548169, worksheet.intermediate_output_p50, 0.002); end
  def test_intermediate_output_d51; assert_equal("Total Primary Supply", worksheet.intermediate_output_d51); end
  def test_intermediate_output_g51; assert_in_epsilon(4616.65451527199, worksheet.intermediate_output_g51, 0.002); end
  def test_intermediate_output_h51; assert_in_epsilon(5374.613317311991, worksheet.intermediate_output_h51, 0.002); end
  def test_intermediate_output_i51; assert_in_epsilon(6104.291487008967, worksheet.intermediate_output_i51, 0.002); end
  def test_intermediate_output_j51; assert_in_epsilon(6964.289054506621, worksheet.intermediate_output_j51, 0.002); end
  def test_intermediate_output_k51; assert_in_epsilon(8012.548508435504, worksheet.intermediate_output_k51, 0.002); end
  def test_intermediate_output_l51; assert_in_epsilon(9227.37038037953, worksheet.intermediate_output_l51, 0.002); end
  def test_intermediate_output_m51; assert_in_epsilon(10748.197698116914, worksheet.intermediate_output_m51, 0.002); end
  def test_intermediate_output_n51; assert_in_epsilon(12373.169187979162, worksheet.intermediate_output_n51, 0.002); end
  def test_intermediate_output_o51; assert_in_epsilon(14250.930701284862, worksheet.intermediate_output_o51, 0.002); end
  def test_intermediate_output_p51; assert_in_epsilon(16157.218923431601, worksheet.intermediate_output_p51, 0.002); end
  def test_intermediate_output_g52; assert_in_delta(0.8292209679527859, worksheet.intermediate_output_g52, 0.002); end
  def test_intermediate_output_h52; assert_in_delta(0.8279144270076078, worksheet.intermediate_output_h52, 0.002); end
  def test_intermediate_output_i52; assert_in_delta(0.8189271525729016, worksheet.intermediate_output_i52, 0.002); end
  def test_intermediate_output_j52; assert_in_delta(0.8187963151106922, worksheet.intermediate_output_j52, 0.002); end
  def test_intermediate_output_k52; assert_in_delta(0.8237227111618433, worksheet.intermediate_output_k52, 0.002); end
  def test_intermediate_output_l52; assert_in_delta(0.8302540672845213, worksheet.intermediate_output_l52, 0.002); end
  def test_intermediate_output_m52; assert_in_delta(0.8384593848105063, worksheet.intermediate_output_m52, 0.002); end
  def test_intermediate_output_n52; assert_in_delta(0.8451678743849839, worksheet.intermediate_output_n52, 0.002); end
  def test_intermediate_output_o52; assert_in_delta(0.8516560239387359, worksheet.intermediate_output_o52, 0.002); end
  def test_intermediate_output_p52; assert_in_delta(0.8684237411566778, worksheet.intermediate_output_p52, 0.002); end
  def test_intermediate_output_d53; assert_equal("Dummy for charting supply", worksheet.intermediate_output_d53); end
  def test_intermediate_output_g53; assert_in_delta(0.0, (worksheet.intermediate_output_g53||0), 0.002); end
  def test_intermediate_output_h53; assert_in_delta(0.0, (worksheet.intermediate_output_h53||0), 0.002); end
  def test_intermediate_output_i53; assert_in_delta(0.0, (worksheet.intermediate_output_i53||0), 0.002); end
  def test_intermediate_output_j53; assert_in_delta(0.0, (worksheet.intermediate_output_j53||0), 0.002); end
  def test_intermediate_output_k53; assert_in_delta(0.0, (worksheet.intermediate_output_k53||0), 0.002); end
  def test_intermediate_output_l53; assert_in_delta(0.0, (worksheet.intermediate_output_l53||0), 0.002); end
  def test_intermediate_output_m53; assert_in_delta(0.0, (worksheet.intermediate_output_m53||0), 0.002); end
  def test_intermediate_output_n53; assert_in_delta(0.0, (worksheet.intermediate_output_n53||0), 0.002); end
  def test_intermediate_output_o53; assert_in_delta(0.0, (worksheet.intermediate_output_o53||0), 0.002); end
  def test_intermediate_output_p53; assert_in_delta(0.0, (worksheet.intermediate_output_p53||0), 0.002); end
  def test_intermediate_output_c55; assert_equal("Conversion losses, distribution, and own use", worksheet.intermediate_output_c55); end
  def test_intermediate_output_c56; assert_equal("X.01", worksheet.intermediate_output_c56); end
  def test_intermediate_output_d56; assert_equal("Conversion losses", worksheet.intermediate_output_d56); end
  def test_intermediate_output_g56; assert_in_epsilon(1772.4899338538246, worksheet.intermediate_output_g56, 0.002); end
  def test_intermediate_output_h56; assert_in_epsilon(2148.9523214000114, worksheet.intermediate_output_h56, 0.002); end
  def test_intermediate_output_i56; assert_in_epsilon(2390.019408160786, worksheet.intermediate_output_i56, 0.002); end
  def test_intermediate_output_j56; assert_in_epsilon(2735.581405011143, worksheet.intermediate_output_j56, 0.002); end
  def test_intermediate_output_k56; assert_in_epsilon(3125.4765540980675, worksheet.intermediate_output_k56, 0.002); end
  def test_intermediate_output_l56; assert_in_epsilon(3611.400360986893, worksheet.intermediate_output_l56, 0.002); end
  def test_intermediate_output_m56; assert_in_epsilon(4176.324482610915, worksheet.intermediate_output_m56, 0.002); end
  def test_intermediate_output_n56; assert_in_epsilon(4810.592526525239, worksheet.intermediate_output_n56, 0.002); end
  def test_intermediate_output_o56; assert_in_epsilon(5584.582877648262, worksheet.intermediate_output_o56, 0.002); end
  def test_intermediate_output_p56; assert_in_epsilon(6408.868584284785, worksheet.intermediate_output_p56, 0.002); end
  def test_intermediate_output_c57; assert_equal("X.02", worksheet.intermediate_output_c57); end
  def test_intermediate_output_d57; assert_equal("Distribution losses and own use", worksheet.intermediate_output_d57); end
  def test_intermediate_output_g57; assert_in_epsilon(753.519587255517, worksheet.intermediate_output_g57, 0.002); end
  def test_intermediate_output_h57; assert_in_epsilon(822.266220708359, worksheet.intermediate_output_h57, 0.002); end
  def test_intermediate_output_i57; assert_in_epsilon(850.8938152664914, worksheet.intermediate_output_i57, 0.002); end
  def test_intermediate_output_j57; assert_in_epsilon(885.7081768669818, worksheet.intermediate_output_j57, 0.002); end
  def test_intermediate_output_k57; assert_in_epsilon(924.8278108403383, worksheet.intermediate_output_k57, 0.002); end
  def test_intermediate_output_l57; assert_in_epsilon(973.1213500615806, worksheet.intermediate_output_l57, 0.002); end
  def test_intermediate_output_m57; assert_in_epsilon(964.98991242944, worksheet.intermediate_output_m57, 0.002); end
  def test_intermediate_output_n57; assert_in_epsilon(1034.2954758225821, worksheet.intermediate_output_n57, 0.002); end
  def test_intermediate_output_o57; assert_in_epsilon(1105.3411286795304, worksheet.intermediate_output_o57, 0.002); end
  def test_intermediate_output_p57; assert_in_epsilon(1186.2429203687716, worksheet.intermediate_output_p57, 0.002); end
  def test_intermediate_output_d58; assert_equal("Supply net of losses", worksheet.intermediate_output_d58); end
  def test_intermediate_output_g58; assert_in_epsilon(2090.6449941626483, worksheet.intermediate_output_g58, 0.002); end
  def test_intermediate_output_h58; assert_in_epsilon(2403.39477520362, worksheet.intermediate_output_h58, 0.002); end
  def test_intermediate_output_i58; assert_in_epsilon(2863.3782635816897, worksheet.intermediate_output_i58, 0.002); end
  def test_intermediate_output_j58; assert_in_epsilon(3342.9994726284963, worksheet.intermediate_output_j58, 0.002); end
  def test_intermediate_output_k58; assert_in_epsilon(3962.2441434970983, worksheet.intermediate_output_k58, 0.002); end
  def test_intermediate_output_l58; assert_in_epsilon(4642.848669331057, worksheet.intermediate_output_l58, 0.002); end
  def test_intermediate_output_m58; assert_in_epsilon(5606.883303076559, worksheet.intermediate_output_m58, 0.002); end
  def test_intermediate_output_n58; assert_in_epsilon(6528.28118563134, worksheet.intermediate_output_n58, 0.002); end
  def test_intermediate_output_o58; assert_in_epsilon(7561.00669495707, worksheet.intermediate_output_o58, 0.002); end
  def test_intermediate_output_p58; assert_in_epsilon(8562.107418778043, worksheet.intermediate_output_p58, 0.002); end
  def test_intermediate_output_c60; assert_equal("Supply / demand not accounted for", worksheet.intermediate_output_c60); end
  def test_intermediate_output_c62; assert_equal("C.01", worksheet.intermediate_output_c62); end
  def test_intermediate_output_d62; assert_equal("Coal and fossil waste", worksheet.intermediate_output_d62); end
  def test_intermediate_output_g62; assert_in_delta(0.0, (worksheet.intermediate_output_g62||0), 0.002); end
  def test_intermediate_output_h62; assert_in_delta(0.0, (worksheet.intermediate_output_h62||0), 0.002); end
  def test_intermediate_output_i62; assert_in_delta(0.0, (worksheet.intermediate_output_i62||0), 0.002); end
  def test_intermediate_output_j62; assert_in_delta(0.0, (worksheet.intermediate_output_j62||0), 0.002); end
  def test_intermediate_output_k62; assert_in_delta(0.0, (worksheet.intermediate_output_k62||0), 0.002); end
  def test_intermediate_output_l62; assert_in_delta(0.0, (worksheet.intermediate_output_l62||0), 0.002); end
  def test_intermediate_output_m62; assert_in_delta(0.0, (worksheet.intermediate_output_m62||0), 0.002); end
  def test_intermediate_output_n62; assert_in_delta(0.0, (worksheet.intermediate_output_n62||0), 0.002); end
  def test_intermediate_output_o62; assert_in_delta(0.0, (worksheet.intermediate_output_o62||0), 0.002); end
  def test_intermediate_output_p62; assert_in_delta(0.0, (worksheet.intermediate_output_p62||0), 0.002); end
  def test_intermediate_output_c63; assert_equal("C.02", worksheet.intermediate_output_c63); end
  def test_intermediate_output_d63; assert_equal("Oil and petroleum products", worksheet.intermediate_output_d63); end
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
  def test_intermediate_output_c64; assert_equal("C.03", worksheet.intermediate_output_c64); end
  def test_intermediate_output_d64; assert_equal("Natural gas", worksheet.intermediate_output_d64); end
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
  def test_intermediate_output_c65; assert_equal("V.03", worksheet.intermediate_output_c65); end
  def test_intermediate_output_d65; assert_equal("Solid hydrocarbons", worksheet.intermediate_output_d65); end
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
  def test_intermediate_output_c66; assert_equal("V.04", worksheet.intermediate_output_c66); end
  def test_intermediate_output_d66; assert_equal("Liquid hydrocarbons", worksheet.intermediate_output_d66); end
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
  def test_intermediate_output_c67; assert_equal("V.05", worksheet.intermediate_output_c67); end
  def test_intermediate_output_d67; assert_equal("Gaseous hydrocarbons", worksheet.intermediate_output_d67); end
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
  def test_intermediate_output_c68; assert_equal("V.06", worksheet.intermediate_output_c68); end
  def test_intermediate_output_d68; assert_equal("Blast furnace gas", worksheet.intermediate_output_d68); end
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
  def test_intermediate_output_c69; assert_equal("V.08", worksheet.intermediate_output_c69); end
  def test_intermediate_output_d69; assert_equal("Edible biomass", worksheet.intermediate_output_d69); end
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
  def test_intermediate_output_c70; assert_equal("V.07", worksheet.intermediate_output_c70); end
  def test_intermediate_output_d70; assert_equal("Heat transport", worksheet.intermediate_output_d70); end
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
  def test_intermediate_output_c71; assert_equal("V.09", worksheet.intermediate_output_c71); end
  def test_intermediate_output_d71; assert_equal("Dry biomass and waste", worksheet.intermediate_output_d71); end
  def test_intermediate_output_g71; assert_in_epsilon(-181.05600370373242, worksheet.intermediate_output_g71, 0.002); end
  def test_intermediate_output_h71; assert_in_epsilon(-186.35986426623117, worksheet.intermediate_output_h71, 0.002); end
  def test_intermediate_output_i71; assert_in_epsilon(-200.60071420243594, worksheet.intermediate_output_i71, 0.002); end
  def test_intermediate_output_j71; assert_in_epsilon(-213.5684443752981, worksheet.intermediate_output_j71, 0.002); end
  def test_intermediate_output_k71; assert_in_epsilon(-231.28129365073806, worksheet.intermediate_output_k71, 0.002); end
  def test_intermediate_output_l71; assert_in_epsilon(-247.47186177979694, worksheet.intermediate_output_l71, 0.002); end
  def test_intermediate_output_m71; assert_in_epsilon(-266.0164188949144, worksheet.intermediate_output_m71, 0.002); end
  def test_intermediate_output_n71; assert_in_epsilon(-284.75217253911376, worksheet.intermediate_output_n71, 0.002); end
  def test_intermediate_output_o71; assert_in_epsilon(-305.4893118948317, worksheet.intermediate_output_o71, 0.002); end
  def test_intermediate_output_p71; assert_in_epsilon(-327.00306767593275, worksheet.intermediate_output_p71, 0.002); end
  def test_intermediate_output_c72; assert_equal("V.10", worksheet.intermediate_output_c72); end
  def test_intermediate_output_d72; assert_equal("Wet biomass and waste", worksheet.intermediate_output_d72); end
  def test_intermediate_output_g72; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_g72, 0.002); end
  def test_intermediate_output_h72; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_h72, 0.002); end
  def test_intermediate_output_i72; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_i72, 0.002); end
  def test_intermediate_output_j72; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_j72, 0.002); end
  def test_intermediate_output_k72; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_k72, 0.002); end
  def test_intermediate_output_l72; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_l72, 0.002); end
  def test_intermediate_output_m72; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_m72, 0.002); end
  def test_intermediate_output_n72; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_n72, 0.002); end
  def test_intermediate_output_o72; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_o72, 0.002); end
  def test_intermediate_output_p72; assert_in_epsilon(-15.143861088, worksheet.intermediate_output_p72, 0.002); end
  def test_intermediate_output_c73; assert_equal("V.11", worksheet.intermediate_output_c73); end
  def test_intermediate_output_d73; assert_equal("Domestic solar thermal", worksheet.intermediate_output_d73); end
  def test_intermediate_output_g73; assert_in_delta(0.0, (worksheet.intermediate_output_g73||0), 0.002); end
  def test_intermediate_output_h73; assert_in_delta(0.0, (worksheet.intermediate_output_h73||0), 0.002); end
  def test_intermediate_output_i73; assert_in_delta(0.0, (worksheet.intermediate_output_i73||0), 0.002); end
  def test_intermediate_output_j73; assert_in_delta(0.0, (worksheet.intermediate_output_j73||0), 0.002); end
  def test_intermediate_output_k73; assert_in_delta(0.0, (worksheet.intermediate_output_k73||0), 0.002); end
  def test_intermediate_output_l73; assert_in_delta(0.0, (worksheet.intermediate_output_l73||0), 0.002); end
  def test_intermediate_output_m73; assert_in_delta(0.0, (worksheet.intermediate_output_m73||0), 0.002); end
  def test_intermediate_output_n73; assert_in_delta(0.0, (worksheet.intermediate_output_n73||0), 0.002); end
  def test_intermediate_output_o73; assert_in_delta(0.0, (worksheet.intermediate_output_o73||0), 0.002); end
  def test_intermediate_output_p73; assert_in_delta(0.0, (worksheet.intermediate_output_p73||0), 0.002); end
  def test_intermediate_output_c74; assert_equal("V.12", worksheet.intermediate_output_c74); end
  def test_intermediate_output_d74; assert_equal("Hydrogen", worksheet.intermediate_output_d74); end
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
  def test_intermediate_output_c75; assert_equal("V.13", worksheet.intermediate_output_c75); end
  def test_intermediate_output_d75; assert_equal("Energy crops (second generation)", worksheet.intermediate_output_d75); end
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
  def test_intermediate_output_d76; assert_equal("Total unnaccounted supply / demand", worksheet.intermediate_output_d76); end
  def test_intermediate_output_g76; assert_in_epsilon(-196.1998647917324, worksheet.intermediate_output_g76, 0.002); end
  def test_intermediate_output_h76; assert_in_epsilon(-201.50372535423116, worksheet.intermediate_output_h76, 0.002); end
  def test_intermediate_output_i76; assert_in_epsilon(-215.74457529043593, worksheet.intermediate_output_i76, 0.002); end
  def test_intermediate_output_j76; assert_in_epsilon(-228.7123054632981, worksheet.intermediate_output_j76, 0.002); end
  def test_intermediate_output_k76; assert_in_epsilon(-246.42515473873806, worksheet.intermediate_output_k76, 0.002); end
  def test_intermediate_output_l76; assert_in_epsilon(-262.61572286779693, worksheet.intermediate_output_l76, 0.002); end
  def test_intermediate_output_m76; assert_in_epsilon(-281.1602799829144, worksheet.intermediate_output_m76, 0.002); end
  def test_intermediate_output_n76; assert_in_epsilon(-299.89603362711375, worksheet.intermediate_output_n76, 0.002); end
  def test_intermediate_output_o76; assert_in_epsilon(-320.6331729828317, worksheet.intermediate_output_o76, 0.002); end
  def test_intermediate_output_p76; assert_in_epsilon(-342.14692876393275, worksheet.intermediate_output_p76, 0.002); end
  def test_intermediate_output_d78; assert_equal("Supply, Demand, and Unaccounted supply", worksheet.intermediate_output_d78); end
  def test_intermediate_output_g78; assert_in_epsilon(76.98131034989746, worksheet.intermediate_output_g78, 0.002); end
  def test_intermediate_output_h78; assert_in_epsilon(68.38670858653245, worksheet.intermediate_output_h78, 0.002); end
  def test_intermediate_output_i78; assert_in_epsilon(63.64834765544174, worksheet.intermediate_output_i78, 0.002); end
  def test_intermediate_output_j78; assert_in_epsilon(71.75152555479679, worksheet.intermediate_output_j78, 0.002); end
  def test_intermediate_output_k78; assert_in_epsilon(68.24001329026936, worksheet.intermediate_output_k78, 0.002); end
  def test_intermediate_output_l78; assert_in_epsilon(61.87406783974046, worksheet.intermediate_output_l78, 0.002); end
  def test_intermediate_output_m78; assert_in_epsilon(-12.8886479472759, worksheet.intermediate_output_m78, 0.002); end
  def test_intermediate_output_n78; assert_in_epsilon(-8.501587323288618, worksheet.intermediate_output_n78, 0.002); end
  def test_intermediate_output_o78; assert_in_epsilon(-19.725065582099035, worksheet.intermediate_output_o78, 0.002); end
  def test_intermediate_output_p78; assert_in_epsilon(-14.260444542970447, worksheet.intermediate_output_p78, 0.002); end
  def test_intermediate_output_b82; assert_equal("Electricity grid (net of distribution losses)", worksheet.intermediate_output_b82); end
  def test_intermediate_output_c84; assert_equal("V.01", worksheet.intermediate_output_c84); end
  def test_intermediate_output_d84; assert_equal("Electricity (delivered to end user)", worksheet.intermediate_output_d84); end
  def test_intermediate_output_g84; assert_in_epsilon(-891.5599733590611, worksheet.intermediate_output_g84, 0.002); end
  def test_intermediate_output_h84; assert_in_epsilon(-1057.9629888425882, worksheet.intermediate_output_h84, 0.002); end
  def test_intermediate_output_i84; assert_in_epsilon(-1243.6429457947966, worksheet.intermediate_output_i84, 0.002); end
  def test_intermediate_output_j84; assert_in_epsilon(-1458.7088808368478, worksheet.intermediate_output_j84, 0.002); end
  def test_intermediate_output_k84; assert_in_epsilon(-1711.917405300097, worksheet.intermediate_output_k84, 0.002); end
  def test_intermediate_output_l84; assert_in_epsilon(-2026.0813842261969, worksheet.intermediate_output_l84, 0.002); end
  def test_intermediate_output_m84; assert_in_epsilon(-2414.973014765047, worksheet.intermediate_output_m84, 0.002); end
  def test_intermediate_output_n84; assert_in_epsilon(-2853.452050016783, worksheet.intermediate_output_n84, 0.002); end
  def test_intermediate_output_o84; assert_in_epsilon(-3317.2978491652584, worksheet.intermediate_output_o84, 0.002); end
  def test_intermediate_output_p84; assert_in_epsilon(-3829.1433653460667, worksheet.intermediate_output_p84, 0.002); end
  def test_intermediate_output_q84; assert_equal("REFERENCED", worksheet.intermediate_output_q84); end
  def test_intermediate_output_c85; assert_equal("V.02", worksheet.intermediate_output_c85); end
  def test_intermediate_output_d85; assert_equal("Electricity (supplied to grid)", worksheet.intermediate_output_d85); end
  def test_intermediate_output_g85; assert_in_epsilon(891.5599733590611, worksheet.intermediate_output_g85, 0.002); end
  def test_intermediate_output_h85; assert_in_epsilon(1057.9629888425882, worksheet.intermediate_output_h85, 0.002); end
  def test_intermediate_output_i85; assert_in_epsilon(1243.6429457947966, worksheet.intermediate_output_i85, 0.002); end
  def test_intermediate_output_j85; assert_in_epsilon(1458.7088808368478, worksheet.intermediate_output_j85, 0.002); end
  def test_intermediate_output_k85; assert_in_epsilon(1711.917405300097, worksheet.intermediate_output_k85, 0.002); end
  def test_intermediate_output_l85; assert_in_epsilon(2026.0813842261969, worksheet.intermediate_output_l85, 0.002); end
  def test_intermediate_output_m85; assert_in_epsilon(2414.973014765047, worksheet.intermediate_output_m85, 0.002); end
  def test_intermediate_output_n85; assert_in_epsilon(2853.452050016783, worksheet.intermediate_output_n85, 0.002); end
  def test_intermediate_output_o85; assert_in_epsilon(3317.2978491652584, worksheet.intermediate_output_o85, 0.002); end
  def test_intermediate_output_p85; assert_in_epsilon(3829.1433653460667, worksheet.intermediate_output_p85, 0.002); end
  def test_intermediate_output_d86; assert_equal("Total electricity grid", worksheet.intermediate_output_d86); end
  def test_intermediate_output_g86; assert_in_delta(0.0, (worksheet.intermediate_output_g86||0), 0.002); end
  def test_intermediate_output_h86; assert_in_delta(0.0, (worksheet.intermediate_output_h86||0), 0.002); end
  def test_intermediate_output_i86; assert_in_delta(0.0, (worksheet.intermediate_output_i86||0), 0.002); end
  def test_intermediate_output_j86; assert_in_delta(0.0, (worksheet.intermediate_output_j86||0), 0.002); end
  def test_intermediate_output_k86; assert_in_delta(0.0, (worksheet.intermediate_output_k86||0), 0.002); end
  def test_intermediate_output_l86; assert_in_delta(0.0, (worksheet.intermediate_output_l86||0), 0.002); end
  def test_intermediate_output_m86; assert_in_delta(0.0, (worksheet.intermediate_output_m86||0), 0.002); end
  def test_intermediate_output_n86; assert_in_delta(0.0, (worksheet.intermediate_output_n86||0), 0.002); end
  def test_intermediate_output_o86; assert_in_delta(0.0, (worksheet.intermediate_output_o86||0), 0.002); end
  def test_intermediate_output_p86; assert_in_delta(0.0, (worksheet.intermediate_output_p86||0), 0.002); end
  def test_intermediate_output_c88; assert_equal("V.01", worksheet.intermediate_output_c88); end
  def test_intermediate_output_d88; assert_equal("Losses", worksheet.intermediate_output_d88); end
  def test_intermediate_output_g88; assert_in_epsilon(-90.84932115895033, worksheet.intermediate_output_g88, 0.002); end
  def test_intermediate_output_h88; assert_in_epsilon(-158.9995858643287, worksheet.intermediate_output_h88, 0.002); end
  def test_intermediate_output_i88; assert_in_epsilon(-186.76808786958173, worksheet.intermediate_output_i88, 0.002); end
  def test_intermediate_output_j88; assert_in_epsilon(-220.76120365327574, worksheet.intermediate_output_j88, 0.002); end
  def test_intermediate_output_k88; assert_in_epsilon(-260.78309851830403, worksheet.intermediate_output_k88, 0.002); end
  def test_intermediate_output_l88; assert_in_epsilon(-310.43954119358096, worksheet.intermediate_output_l88, 0.002); end
  def test_intermediate_output_m88; assert_in_epsilon(-371.9073720572961, worksheet.intermediate_output_m88, 0.002); end
  def test_intermediate_output_n88; assert_in_epsilon(-441.2129354504381, worksheet.intermediate_output_n88, 0.002); end
  def test_intermediate_output_o88; assert_in_epsilon(-514.5279511341514, worksheet.intermediate_output_o88, 0.002); end
  def test_intermediate_output_p88; assert_in_epsilon(-595.4297428233928, worksheet.intermediate_output_p88, 0.002); end
  def test_intermediate_output_d89; assert_equal("Demand (for charting)", worksheet.intermediate_output_d89); end
  def test_intermediate_output_g89; assert_in_epsilon(891.5599733590611, worksheet.intermediate_output_g89, 0.002); end
  def test_intermediate_output_h89; assert_in_epsilon(1057.9629888425882, worksheet.intermediate_output_h89, 0.002); end
  def test_intermediate_output_i89; assert_in_epsilon(1243.6429457947966, worksheet.intermediate_output_i89, 0.002); end
  def test_intermediate_output_j89; assert_in_epsilon(1458.7088808368478, worksheet.intermediate_output_j89, 0.002); end
  def test_intermediate_output_k89; assert_in_epsilon(1711.917405300097, worksheet.intermediate_output_k89, 0.002); end
  def test_intermediate_output_l89; assert_in_epsilon(2026.0813842261969, worksheet.intermediate_output_l89, 0.002); end
  def test_intermediate_output_m89; assert_in_epsilon(2414.973014765047, worksheet.intermediate_output_m89, 0.002); end
  def test_intermediate_output_n89; assert_in_epsilon(2853.452050016783, worksheet.intermediate_output_n89, 0.002); end
  def test_intermediate_output_o89; assert_in_epsilon(3317.2978491652584, worksheet.intermediate_output_o89, 0.002); end
  def test_intermediate_output_p89; assert_in_epsilon(3829.1433653460667, worksheet.intermediate_output_p89, 0.002); end
  def test_intermediate_output_d90; assert_equal("Dummy for charting", worksheet.intermediate_output_d90); end
  def test_intermediate_output_g90; assert_in_epsilon(891.5599733590611, worksheet.intermediate_output_g90, 0.002); end
  def test_intermediate_output_h90; assert_in_epsilon(1057.9629888425882, worksheet.intermediate_output_h90, 0.002); end
  def test_intermediate_output_i90; assert_in_epsilon(1243.6429457947966, worksheet.intermediate_output_i90, 0.002); end
  def test_intermediate_output_j90; assert_in_epsilon(1458.7088808368478, worksheet.intermediate_output_j90, 0.002); end
  def test_intermediate_output_k90; assert_in_epsilon(1711.917405300097, worksheet.intermediate_output_k90, 0.002); end
  def test_intermediate_output_l90; assert_in_epsilon(2026.0813842261969, worksheet.intermediate_output_l90, 0.002); end
  def test_intermediate_output_m90; assert_in_epsilon(2414.973014765047, worksheet.intermediate_output_m90, 0.002); end
  def test_intermediate_output_n90; assert_in_epsilon(2853.452050016783, worksheet.intermediate_output_n90, 0.002); end
  def test_intermediate_output_o90; assert_in_epsilon(3317.2978491652584, worksheet.intermediate_output_o90, 0.002); end
  def test_intermediate_output_p90; assert_in_epsilon(3829.1433653460667, worksheet.intermediate_output_p90, 0.002); end
  def test_intermediate_output_r90; assert_equal("Includes exports", worksheet.intermediate_output_r90); end
  def test_intermediate_output_c93; assert_equal("Z.01", worksheet.intermediate_output_c93); end
  def test_intermediate_output_d93; assert_equal("Unallocated", worksheet.intermediate_output_d93); end
  def test_intermediate_output_g93; assert_in_epsilon(76.30824985709523, worksheet.intermediate_output_g93, 0.002); end
  def test_intermediate_output_h93; assert_in_epsilon(67.71364809373154, worksheet.intermediate_output_h93, 0.002); end
  def test_intermediate_output_i93; assert_in_epsilon(62.97528716264151, worksheet.intermediate_output_i93, 0.002); end
  def test_intermediate_output_j93; assert_in_epsilon(71.07846506199576, worksheet.intermediate_output_j93, 0.002); end
  def test_intermediate_output_k93; assert_in_epsilon(67.5669527974701, worksheet.intermediate_output_k93, 0.002); end
  def test_intermediate_output_l93; assert_in_epsilon(61.20100734693824, worksheet.intermediate_output_l93, 0.002); end
  def test_intermediate_output_m93; assert_in_epsilon(-13.561708440073744, worksheet.intermediate_output_m93, 0.002); end
  def test_intermediate_output_n93; assert_in_epsilon(-9.174647816091237, worksheet.intermediate_output_n93, 0.002); end
  def test_intermediate_output_o93; assert_in_epsilon(-20.398126074900574, worksheet.intermediate_output_o93, 0.002); end
  def test_intermediate_output_p93; assert_in_epsilon(-14.933505035774033, worksheet.intermediate_output_p93, 0.002); end
  def test_intermediate_output_d95; assert_equal("Net balance ", worksheet.intermediate_output_d95); end
  def test_intermediate_output_g95; assert_in_epsilon(153.2895602069927, worksheet.intermediate_output_g95, 0.002); end
  def test_intermediate_output_h95; assert_in_epsilon(136.10035668026399, worksheet.intermediate_output_h95, 0.002); end
  def test_intermediate_output_i95; assert_in_epsilon(126.62363481808325, worksheet.intermediate_output_i95, 0.002); end
  def test_intermediate_output_j95; assert_in_epsilon(142.82999061679254, worksheet.intermediate_output_j95, 0.002); end
  def test_intermediate_output_k95; assert_in_epsilon(135.80696608773945, worksheet.intermediate_output_k95, 0.002); end
  def test_intermediate_output_l95; assert_in_epsilon(123.0750751866787, worksheet.intermediate_output_l95, 0.002); end
  def test_intermediate_output_m95; assert_in_epsilon(-26.450356387349643, worksheet.intermediate_output_m95, 0.002); end
  def test_intermediate_output_n95; assert_in_epsilon(-17.676235139379855, worksheet.intermediate_output_n95, 0.002); end
  def test_intermediate_output_o95; assert_in_epsilon(-40.12319165699961, worksheet.intermediate_output_o95, 0.002); end
  def test_intermediate_output_p95; assert_in_epsilon(-29.19394957874448, worksheet.intermediate_output_p95, 0.002); end
  def test_intermediate_output_b97; assert_equal("Electricity Generation", worksheet.intermediate_output_b97); end
  def test_intermediate_output_c99; assert_equal("V.02", worksheet.intermediate_output_c99); end
  def test_intermediate_output_d99; assert_equal("PJ", worksheet.intermediate_output_d99); end
  def test_intermediate_output_g99; assert_in_epsilon(2006.0, worksheet.intermediate_output_g99, 0.002); end
  def test_intermediate_output_h99; assert_in_epsilon(2010.0, worksheet.intermediate_output_h99, 0.002); end
  def test_intermediate_output_i99; assert_in_epsilon(2015.0, worksheet.intermediate_output_i99, 0.002); end
  def test_intermediate_output_j99; assert_in_epsilon(2020.0, worksheet.intermediate_output_j99, 0.002); end
  def test_intermediate_output_k99; assert_in_epsilon(2025.0, worksheet.intermediate_output_k99, 0.002); end
  def test_intermediate_output_l99; assert_in_epsilon(2030.0, worksheet.intermediate_output_l99, 0.002); end
  def test_intermediate_output_m99; assert_in_epsilon(2035.0, worksheet.intermediate_output_m99, 0.002); end
  def test_intermediate_output_n99; assert_in_epsilon(2040.0, worksheet.intermediate_output_n99, 0.002); end
  def test_intermediate_output_o99; assert_in_epsilon(2045.0, worksheet.intermediate_output_o99, 0.002); end
  def test_intermediate_output_p99; assert_in_epsilon(2050.0, worksheet.intermediate_output_p99, 0.002); end
  def test_intermediate_output_c100; assert_equal("Therm.a", worksheet.intermediate_output_c100); end
  def test_intermediate_output_d100; assert_equal("Biomass/Coal power stations", worksheet.intermediate_output_d100); end
  def test_intermediate_output_g100; assert_in_epsilon(824.7142358557012, worksheet.intermediate_output_g100, 0.002); end
  def test_intermediate_output_h100; assert_in_epsilon(980.3853136682282, worksheet.intermediate_output_h100, 0.002); end
  def test_intermediate_output_i100; assert_in_epsilon(1134.2304029242412, worksheet.intermediate_output_i100, 0.002); end
  def test_intermediate_output_j100; assert_in_epsilon(1334.084607236435, worksheet.intermediate_output_j100, 0.002); end
  def test_intermediate_output_k100; assert_in_epsilon(1587.6345427350327, worksheet.intermediate_output_k100, 0.002); end
  def test_intermediate_output_l100; assert_in_epsilon(1901.5595730885907, worksheet.intermediate_output_l100, 0.002); end
  def test_intermediate_output_m100; assert_in_epsilon(2290.1047878475647, worksheet.intermediate_output_m100, 0.002); end
  def test_intermediate_output_n100; assert_in_epsilon(2728.2180235899664, worksheet.intermediate_output_n100, 0.002); end
  def test_intermediate_output_o100; assert_in_epsilon(3191.585895750897, worksheet.intermediate_output_o100, 0.002); end
  def test_intermediate_output_p100; assert_in_epsilon(3751.5032151559085, worksheet.intermediate_output_p100, 0.002); end
  def test_intermediate_output_c101; assert_equal("Therm.b", worksheet.intermediate_output_c101); end
  def test_intermediate_output_d101; assert_equal("CCGT", worksheet.intermediate_output_d101); end
  def test_intermediate_output_g101; assert_in_delta(0.28061017920000003, worksheet.intermediate_output_g101, 0.002); end
  def test_intermediate_output_h101; assert_in_delta(0.177182775, worksheet.intermediate_output_h101, 0.002); end
  def test_intermediate_output_i101; assert_in_epsilon(2.7572464123150686, worksheet.intermediate_output_i101, 0.002); end
  def test_intermediate_output_j101; assert_in_epsilon(3.557252374172764, worksheet.intermediate_output_j101, 0.002); end
  def test_intermediate_output_k101; assert_in_epsilon(3.7680993388241504, worksheet.intermediate_output_k101, 0.002); end
  def test_intermediate_output_l101; assert_in_epsilon(4.007047911366229, worksheet.intermediate_output_l101, 0.002); end
  def test_intermediate_output_m101; assert_in_epsilon(4.353463691241835, worksheet.intermediate_output_m101, 0.002); end
  def test_intermediate_output_n101; assert_in_epsilon(4.7192632005766, worksheet.intermediate_output_n101, 0.002); end
  def test_intermediate_output_o101; assert_in_epsilon(5.197190188121171, worksheet.intermediate_output_o101, 0.002); end
  def test_intermediate_output_p101; assert_in_epsilon(3.136367763918374, worksheet.intermediate_output_p101, 0.002); end
  def test_intermediate_output_c102; assert_equal("Coal and Gas Turbines", worksheet.intermediate_output_c102); end
  def test_intermediate_output_g102; assert_in_epsilon(824.9948460349012, worksheet.intermediate_output_g102, 0.002); end
  def test_intermediate_output_h102; assert_in_epsilon(980.5624964432282, worksheet.intermediate_output_h102, 0.002); end
  def test_intermediate_output_i102; assert_in_epsilon(1136.9876493365562, worksheet.intermediate_output_i102, 0.002); end
  def test_intermediate_output_j102; assert_in_epsilon(1337.6418596106078, worksheet.intermediate_output_j102, 0.002); end
  def test_intermediate_output_k102; assert_in_epsilon(1591.402642073857, worksheet.intermediate_output_k102, 0.002); end
  def test_intermediate_output_l102; assert_in_epsilon(1905.566620999957, worksheet.intermediate_output_l102, 0.002); end
  def test_intermediate_output_m102; assert_in_epsilon(2294.4582515388065, worksheet.intermediate_output_m102, 0.002); end
  def test_intermediate_output_n102; assert_in_epsilon(2732.937286790543, worksheet.intermediate_output_n102, 0.002); end
  def test_intermediate_output_o102; assert_in_epsilon(3196.7830859390183, worksheet.intermediate_output_o102, 0.002); end
  def test_intermediate_output_p102; assert_in_epsilon(3754.639582919827, worksheet.intermediate_output_p102, 0.002); end
  def test_intermediate_output_c103; assert_equal("Nuke", worksheet.intermediate_output_c103); end
  def test_intermediate_output_d103; assert_equal("Nuclear power", worksheet.intermediate_output_d103); end
  def test_intermediate_output_g103; assert_in_epsilon(35.218281600000005, worksheet.intermediate_output_g103, 0.002); end
  def test_intermediate_output_h103; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_h103, 0.002); end
  def test_intermediate_output_i103; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_i103, 0.002); end
  def test_intermediate_output_j103; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_j103, 0.002); end
  def test_intermediate_output_k103; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_k103, 0.002); end
  def test_intermediate_output_l103; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_l103, 0.002); end
  def test_intermediate_output_m103; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_m103, 0.002); end
  def test_intermediate_output_n103; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_n103, 0.002); end
  def test_intermediate_output_o103; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_o103, 0.002); end
  def test_intermediate_output_p103; assert_in_delta(0.0, (worksheet.intermediate_output_p103||0), 0.002); end
  def test_intermediate_output_c104; assert_equal("Nuclear", worksheet.intermediate_output_c104); end
  def test_intermediate_output_g104; assert_in_epsilon(35.218281600000005, worksheet.intermediate_output_g104, 0.002); end
  def test_intermediate_output_h104; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_h104, 0.002); end
  def test_intermediate_output_i104; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_i104, 0.002); end
  def test_intermediate_output_j104; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_j104, 0.002); end
  def test_intermediate_output_k104; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_k104, 0.002); end
  def test_intermediate_output_l104; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_l104, 0.002); end
  def test_intermediate_output_m104; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_m104, 0.002); end
  def test_intermediate_output_n104; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_n104, 0.002); end
  def test_intermediate_output_o104; assert_in_epsilon(46.010980800000006, worksheet.intermediate_output_o104, 0.002); end
  def test_intermediate_output_p104; assert_in_delta(0.0, (worksheet.intermediate_output_p104||0), 0.002); end
  def test_intermediate_output_c105; assert_equal("RE.a", worksheet.intermediate_output_c105); end
  def test_intermediate_output_d105; assert_equal("Onshore wind", worksheet.intermediate_output_d105); end
  def test_intermediate_output_g105; assert_in_delta(0.02592772416, worksheet.intermediate_output_g105, 0.002); end
  def test_intermediate_output_h105; assert_in_delta(0.06859359936, worksheet.intermediate_output_h105, 0.002); end
  def test_intermediate_output_i105; assert_in_epsilon(11.57035420224, worksheet.intermediate_output_i105, 0.002); end
  def test_intermediate_output_j105; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_j105, 0.002); end
  def test_intermediate_output_k105; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_k105, 0.002); end
  def test_intermediate_output_l105; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_l105, 0.002); end
  def test_intermediate_output_m105; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_m105, 0.002); end
  def test_intermediate_output_n105; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_n105, 0.002); end
  def test_intermediate_output_o105; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_o105, 0.002); end
  def test_intermediate_output_p105; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_p105, 0.002); end
  def test_intermediate_output_c106; assert_equal("Wind", worksheet.intermediate_output_c106); end
  def test_intermediate_output_g106; assert_in_delta(0.02592772416, worksheet.intermediate_output_g106, 0.002); end
  def test_intermediate_output_h106; assert_in_delta(0.06859359936, worksheet.intermediate_output_h106, 0.002); end
  def test_intermediate_output_i106; assert_in_epsilon(11.57035420224, worksheet.intermediate_output_i106, 0.002); end
  def test_intermediate_output_j106; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_j106, 0.002); end
  def test_intermediate_output_k106; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_k106, 0.002); end
  def test_intermediate_output_l106; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_l106, 0.002); end
  def test_intermediate_output_m106; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_m106, 0.002); end
  def test_intermediate_output_n106; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_n106, 0.002); end
  def test_intermediate_output_o106; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_o106, 0.002); end
  def test_intermediate_output_p106; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_p106, 0.002); end
  def test_intermediate_output_c107; assert_equal("RE.b", worksheet.intermediate_output_c107); end
  def test_intermediate_output_d107; assert_equal("Hydroelectric power stations", worksheet.intermediate_output_d107); end
  def test_intermediate_output_g107; assert_in_epsilon(31.320918000000002, worksheet.intermediate_output_g107, 0.002); end
  def test_intermediate_output_h107; assert_in_epsilon(31.320918000000002, worksheet.intermediate_output_h107, 0.002); end
  def test_intermediate_output_i107; assert_in_epsilon(37.03284360000001, worksheet.intermediate_output_i107, 0.002); end
  def test_intermediate_output_j107; assert_in_epsilon(37.111737600000005, worksheet.intermediate_output_j107, 0.002); end
  def test_intermediate_output_k107; assert_in_epsilon(36.5594796, worksheet.intermediate_output_k107, 0.002); end
  def test_intermediate_output_l107; assert_in_epsilon(36.5594796, worksheet.intermediate_output_l107, 0.002); end
  def test_intermediate_output_m107; assert_in_epsilon(36.5594796, worksheet.intermediate_output_m107, 0.002); end
  def test_intermediate_output_n107; assert_in_epsilon(36.5594796, worksheet.intermediate_output_n107, 0.002); end
  def test_intermediate_output_o107; assert_in_epsilon(36.5594796, worksheet.intermediate_output_o107, 0.002); end
  def test_intermediate_output_p107; assert_in_epsilon(36.5594796, worksheet.intermediate_output_p107, 0.002); end
  def test_intermediate_output_c108; assert_equal("Hydro", worksheet.intermediate_output_c108); end
  def test_intermediate_output_g108; assert_in_epsilon(31.320918000000002, worksheet.intermediate_output_g108, 0.002); end
  def test_intermediate_output_h108; assert_in_epsilon(31.320918000000002, worksheet.intermediate_output_h108, 0.002); end
  def test_intermediate_output_i108; assert_in_epsilon(37.03284360000001, worksheet.intermediate_output_i108, 0.002); end
  def test_intermediate_output_j108; assert_in_epsilon(37.111737600000005, worksheet.intermediate_output_j108, 0.002); end
  def test_intermediate_output_k108; assert_in_epsilon(36.5594796, worksheet.intermediate_output_k108, 0.002); end
  def test_intermediate_output_l108; assert_in_epsilon(36.5594796, worksheet.intermediate_output_l108, 0.002); end
  def test_intermediate_output_m108; assert_in_epsilon(36.5594796, worksheet.intermediate_output_m108, 0.002); end
  def test_intermediate_output_n108; assert_in_epsilon(36.5594796, worksheet.intermediate_output_n108, 0.002); end
  def test_intermediate_output_o108; assert_in_epsilon(36.5594796, worksheet.intermediate_output_o108, 0.002); end
  def test_intermediate_output_p108; assert_in_epsilon(36.5594796, worksheet.intermediate_output_p108, 0.002); end
  def test_intermediate_output_c109; assert_equal("RE.c", worksheet.intermediate_output_c109); end
  def test_intermediate_output_d109; assert_equal("CSP", worksheet.intermediate_output_d109); end
  def test_intermediate_output_g109; assert_in_delta(0.0, (worksheet.intermediate_output_g109||0), 0.002); end
  def test_intermediate_output_h109; assert_in_delta(0.0, (worksheet.intermediate_output_h109||0), 0.002); end
  def test_intermediate_output_i109; assert_in_epsilon(1.9881288, worksheet.intermediate_output_i109, 0.002); end
  def test_intermediate_output_j109; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_j109, 0.002); end
  def test_intermediate_output_k109; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_k109, 0.002); end
  def test_intermediate_output_l109; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_l109, 0.002); end
  def test_intermediate_output_m109; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_m109, 0.002); end
  def test_intermediate_output_n109; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_n109, 0.002); end
  def test_intermediate_output_o109; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_o109, 0.002); end
  def test_intermediate_output_p109; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_p109, 0.002); end
  def test_intermediate_output_c110; assert_equal("RE.e", worksheet.intermediate_output_c110); end
  def test_intermediate_output_d110; assert_equal("Centralised PV", worksheet.intermediate_output_d110); end
  def test_intermediate_output_g110; assert_in_delta(0.0, (worksheet.intermediate_output_g110||0), 0.002); end
  def test_intermediate_output_h110; assert_in_delta(0.0, (worksheet.intermediate_output_h110||0), 0.002); end
  def test_intermediate_output_i110; assert_in_epsilon(10.052989056000001, worksheet.intermediate_output_i110, 0.002); end
  def test_intermediate_output_j110; assert_in_epsilon(10.052989056000001, worksheet.intermediate_output_j110, 0.002); end
  def test_intermediate_output_k110; assert_in_epsilon(10.052989056000001, worksheet.intermediate_output_k110, 0.002); end
  def test_intermediate_output_l110; assert_in_epsilon(10.052989056000001, worksheet.intermediate_output_l110, 0.002); end
  def test_intermediate_output_m110; assert_in_epsilon(10.052989056000001, worksheet.intermediate_output_m110, 0.002); end
  def test_intermediate_output_n110; assert_in_epsilon(10.052989056000001, worksheet.intermediate_output_n110, 0.002); end
  def test_intermediate_output_o110; assert_in_epsilon(10.052989056000001, worksheet.intermediate_output_o110, 0.002); end
  def test_intermediate_output_p110; assert_in_epsilon(10.052989056000001, worksheet.intermediate_output_p110, 0.002); end
  def test_intermediate_output_c111; assert_equal("RE.d", worksheet.intermediate_output_c111); end
  def test_intermediate_output_d111; assert_equal("Decentralised PV", worksheet.intermediate_output_d111); end
  def test_intermediate_output_g111; assert_in_delta(0.0, (worksheet.intermediate_output_g111||0), 0.002); end
  def test_intermediate_output_h111; assert_in_delta(0.006712584794189628, worksheet.intermediate_output_h111, 0.002); end
  def test_intermediate_output_i111; assert_in_delta(0.008343481908130715, worksheet.intermediate_output_i111, 0.002); end
  def test_intermediate_output_j111; assert_in_delta(0.01030636880151314, worksheet.intermediate_output_j111, 0.002); end
  def test_intermediate_output_k111; assert_in_delta(0.012604194567051186, worksheet.intermediate_output_k111, 0.002); end
  def test_intermediate_output_l111; assert_in_delta(0.015376347043190616, worksheet.intermediate_output_l111, 0.002); end
  def test_intermediate_output_m111; assert_in_delta(0.018875581865225786, worksheet.intermediate_output_m111, 0.002); end
  def test_intermediate_output_n111; assert_in_delta(0.0227946021274454, worksheet.intermediate_output_n111, 0.002); end
  def test_intermediate_output_o111; assert_in_delta(0.02698231738599941, worksheet.intermediate_output_o111, 0.002); end
  def test_intermediate_output_p111; assert_in_delta(0.031523895529958705, worksheet.intermediate_output_p111, 0.002); end
  def test_intermediate_output_c112; assert_equal("Solar", worksheet.intermediate_output_c112); end
  def test_intermediate_output_g112; assert_in_delta(0.0, (worksheet.intermediate_output_g112||0), 0.002); end
  def test_intermediate_output_h112; assert_in_delta(0.006712584794189628, worksheet.intermediate_output_h112, 0.002); end
  def test_intermediate_output_i112; assert_in_epsilon(12.049461337908133, worksheet.intermediate_output_i112, 0.002); end
  def test_intermediate_output_j112; assert_in_epsilon(15.364972224801516, worksheet.intermediate_output_j112, 0.002); end
  def test_intermediate_output_k112; assert_in_epsilon(15.367270050567054, worksheet.intermediate_output_k112, 0.002); end
  def test_intermediate_output_l112; assert_in_epsilon(15.370042203043193, worksheet.intermediate_output_l112, 0.002); end
  def test_intermediate_output_m112; assert_in_epsilon(15.373541437865228, worksheet.intermediate_output_m112, 0.002); end
  def test_intermediate_output_n112; assert_in_epsilon(15.377460458127448, worksheet.intermediate_output_n112, 0.002); end
  def test_intermediate_output_o112; assert_in_epsilon(15.381648173386, worksheet.intermediate_output_o112, 0.002); end
  def test_intermediate_output_p112; assert_in_epsilon(15.386189751529962, worksheet.intermediate_output_p112, 0.002); end
  def test_intermediate_output_c113; assert_equal("ElcDSB.i", worksheet.intermediate_output_c113); end
  def test_intermediate_output_d113; assert_equal("Electricity imports and exports", worksheet.intermediate_output_d113); end
  def test_intermediate_output_g113; assert_in_delta(0.0, (worksheet.intermediate_output_g113||0), 0.002); end
  def test_intermediate_output_h113; assert_in_delta(0.0, (worksheet.intermediate_output_h113||0), 0.002); end
  def test_intermediate_output_i113; assert_in_delta(0.0, (worksheet.intermediate_output_i113||0), 0.002); end
  def test_intermediate_output_j113; assert_in_delta(0.0, (worksheet.intermediate_output_j113||0), 0.002); end
  def test_intermediate_output_k113; assert_in_delta(0.0, (worksheet.intermediate_output_k113||0), 0.002); end
  def test_intermediate_output_l113; assert_in_delta(0.0, (worksheet.intermediate_output_l113||0), 0.002); end
  def test_intermediate_output_m113; assert_in_delta(0.0, (worksheet.intermediate_output_m113||0), 0.002); end
  def test_intermediate_output_n113; assert_in_delta(0.0, (worksheet.intermediate_output_n113||0), 0.002); end
  def test_intermediate_output_o113; assert_in_delta(0.0, (worksheet.intermediate_output_o113||0), 0.002); end
  def test_intermediate_output_p113; assert_in_delta(0.0, (worksheet.intermediate_output_p113||0), 0.002); end
  def test_intermediate_output_d116; assert_equal("Total generation supplied to grid", worksheet.intermediate_output_d116); end
  def test_intermediate_output_g116; assert_in_epsilon(891.5599733590612, worksheet.intermediate_output_g116, 0.002); end
  def test_intermediate_output_h116; assert_in_epsilon(1057.9697014273822, worksheet.intermediate_output_h116, 0.002); end
  def test_intermediate_output_i116; assert_in_epsilon(1243.6512892767043, worksheet.intermediate_output_i116, 0.002); end
  def test_intermediate_output_j116; assert_in_epsilon(1458.7191872056492, worksheet.intermediate_output_j116, 0.002); end
  def test_intermediate_output_k116; assert_in_epsilon(1711.930009494664, worksheet.intermediate_output_k116, 0.002); end
  def test_intermediate_output_l116; assert_in_epsilon(2026.0967605732403, worksheet.intermediate_output_l116, 0.002); end
  def test_intermediate_output_m116; assert_in_epsilon(2414.991890346912, worksheet.intermediate_output_m116, 0.002); end
  def test_intermediate_output_n116; assert_in_epsilon(2853.4748446189105, worksheet.intermediate_output_n116, 0.002); end
  def test_intermediate_output_o116; assert_in_epsilon(3317.324831482644, worksheet.intermediate_output_o116, 0.002); end
  def test_intermediate_output_p116; assert_in_epsilon(3829.1748892415967, worksheet.intermediate_output_p116, 0.002); end
  def test_intermediate_output_d118; assert_equal("Electricity exports", worksheet.intermediate_output_d118); end
  def test_intermediate_output_g118; assert_in_epsilon(-24.81858000000011, worksheet.intermediate_output_g118, 0.002); end
  def test_intermediate_output_h118; assert_in_epsilon(-24.818579999999997, worksheet.intermediate_output_h118, 0.002); end
  def test_intermediate_output_i118; assert_in_epsilon(-19.13821199999954, worksheet.intermediate_output_i118, 0.002); end
  def test_intermediate_output_j118; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_j118, 0.002); end
  def test_intermediate_output_k118; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_k118, 0.002); end
  def test_intermediate_output_l118; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_l118, 0.002); end
  def test_intermediate_output_m118; assert_in_epsilon(-19.13821199999954, worksheet.intermediate_output_m118, 0.002); end
  def test_intermediate_output_n118; assert_in_epsilon(-19.13821200000045, worksheet.intermediate_output_n118, 0.002); end
  def test_intermediate_output_o118; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_o118, 0.002); end
  def test_intermediate_output_p118; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_p118, 0.002); end
  def test_intermediate_output_q118; assert_equal("REFERENCED", worksheet.intermediate_output_q118); end
  def test_intermediate_output_d119; assert_equal("Electricity total", worksheet.intermediate_output_d119); end
  def test_intermediate_output_g119; assert_in_epsilon(866.7413933590611, worksheet.intermediate_output_g119, 0.002); end
  def test_intermediate_output_h119; assert_in_epsilon(1033.1511214273823, worksheet.intermediate_output_h119, 0.002); end
  def test_intermediate_output_i119; assert_in_epsilon(1224.5130772767047, worksheet.intermediate_output_i119, 0.002); end
  def test_intermediate_output_j119; assert_in_epsilon(1439.580975205649, worksheet.intermediate_output_j119, 0.002); end
  def test_intermediate_output_k119; assert_in_epsilon(1692.791797494664, worksheet.intermediate_output_k119, 0.002); end
  def test_intermediate_output_l119; assert_in_epsilon(2006.9585485732403, worksheet.intermediate_output_l119, 0.002); end
  def test_intermediate_output_m119; assert_in_epsilon(2395.8536783469126, worksheet.intermediate_output_m119, 0.002); end
  def test_intermediate_output_n119; assert_in_epsilon(2834.3366326189102, worksheet.intermediate_output_n119, 0.002); end
  def test_intermediate_output_o119; assert_in_epsilon(3298.1866194826443, worksheet.intermediate_output_o119, 0.002); end
  def test_intermediate_output_p119; assert_in_epsilon(3810.036677241597, worksheet.intermediate_output_p119, 0.002); end
  def test_intermediate_output_d120; assert_equal("GWh", worksheet.intermediate_output_d120); end
  def test_intermediate_output_g120; assert_in_epsilon(240761.49815529477, worksheet.intermediate_output_g120, 0.002); end
  def test_intermediate_output_h120; assert_in_epsilon(286986.4226187173, worksheet.intermediate_output_h120, 0.002); end
  def test_intermediate_output_i120; assert_in_epsilon(340142.52146575134, worksheet.intermediate_output_i120, 0.002); end
  def test_intermediate_output_j120; assert_in_epsilon(399883.60422379145, worksheet.intermediate_output_j120, 0.002); end
  def test_intermediate_output_k120; assert_in_epsilon(470219.9437485178, worksheet.intermediate_output_k120, 0.002); end
  def test_intermediate_output_l120; assert_in_epsilon(557488.485714789, worksheet.intermediate_output_l120, 0.002); end
  def test_intermediate_output_m120; assert_in_epsilon(665514.9106519201, worksheet.intermediate_output_m120, 0.002); end
  def test_intermediate_output_n120; assert_in_epsilon(787315.7312830306, worksheet.intermediate_output_n120, 0.002); end
  def test_intermediate_output_o120; assert_in_epsilon(916162.9498562901, worksheet.intermediate_output_o120, 0.002); end
  def test_intermediate_output_p120; assert_in_epsilon(1058343.5214559992, worksheet.intermediate_output_p120, 0.002); end
  def test_intermediate_output_d121; assert_equal("Load Factor (fixed assumption)", worksheet.intermediate_output_d121); end
  def test_intermediate_output_g121; assert_in_delta(0.76, worksheet.intermediate_output_g121, 0.002); end
  def test_intermediate_output_h121; assert_in_delta(0.76, worksheet.intermediate_output_h121, 0.002); end
  def test_intermediate_output_i121; assert_in_delta(0.76, worksheet.intermediate_output_i121, 0.002); end
  def test_intermediate_output_j121; assert_in_delta(0.76, worksheet.intermediate_output_j121, 0.002); end
  def test_intermediate_output_k121; assert_in_delta(0.76, worksheet.intermediate_output_k121, 0.002); end
  def test_intermediate_output_l121; assert_in_delta(0.76, worksheet.intermediate_output_l121, 0.002); end
  def test_intermediate_output_m121; assert_in_delta(0.76, worksheet.intermediate_output_m121, 0.002); end
  def test_intermediate_output_n121; assert_in_delta(0.76, worksheet.intermediate_output_n121, 0.002); end
  def test_intermediate_output_o121; assert_in_delta(0.76, worksheet.intermediate_output_o121, 0.002); end
  def test_intermediate_output_p121; assert_in_delta(0.76, worksheet.intermediate_output_p121, 0.002); end
  def test_intermediate_output_d122; assert_equal("Peak demand Upstream GW", worksheet.intermediate_output_d122); end
  def test_intermediate_output_g122; assert_in_epsilon(36.1634069567554, worksheet.intermediate_output_g122, 0.002); end
  def test_intermediate_output_h122; assert_in_epsilon(43.10658835296763, worksheet.intermediate_output_h122, 0.002); end
  def test_intermediate_output_i122; assert_in_epsilon(51.090861791899684, worksheet.intermediate_output_i122, 0.002); end
  def test_intermediate_output_j122; assert_in_epsilon(60.064227983626445, worksheet.intermediate_output_j122, 0.002); end
  def test_intermediate_output_k122; assert_in_epsilon(70.62904706628781, worksheet.intermediate_output_k122, 0.002); end
  def test_intermediate_output_l122; assert_in_epsilon(83.73715538854677, worksheet.intermediate_output_l122, 0.002); end
  def test_intermediate_output_m122; assert_in_epsilon(99.96318653147081, worksheet.intermediate_output_m122, 0.002); end
  def test_intermediate_output_n122; assert_in_epsilon(118.25819083198608, worksheet.intermediate_output_n122, 0.002); end
  def test_intermediate_output_o122; assert_in_epsilon(137.61159424661892, worksheet.intermediate_output_o122, 0.002); end
  def test_intermediate_output_p122; assert_in_epsilon(158.9677243234798, worksheet.intermediate_output_p122, 0.002); end
  def test_intermediate_output_d124; assert_equal("GW installed capacity", worksheet.intermediate_output_d124); end
  def test_intermediate_output_g124; assert_in_epsilon(2006.0, worksheet.intermediate_output_g124, 0.002); end
  def test_intermediate_output_h124; assert_in_epsilon(2010.0, worksheet.intermediate_output_h124, 0.002); end
  def test_intermediate_output_i124; assert_in_epsilon(2015.0, worksheet.intermediate_output_i124, 0.002); end
  def test_intermediate_output_j124; assert_in_epsilon(2020.0, worksheet.intermediate_output_j124, 0.002); end
  def test_intermediate_output_k124; assert_in_epsilon(2025.0, worksheet.intermediate_output_k124, 0.002); end
  def test_intermediate_output_l124; assert_in_epsilon(2030.0, worksheet.intermediate_output_l124, 0.002); end
  def test_intermediate_output_m124; assert_in_epsilon(2035.0, worksheet.intermediate_output_m124, 0.002); end
  def test_intermediate_output_n124; assert_in_epsilon(2040.0, worksheet.intermediate_output_n124, 0.002); end
  def test_intermediate_output_o124; assert_in_epsilon(2045.0, worksheet.intermediate_output_o124, 0.002); end
  def test_intermediate_output_p124; assert_in_epsilon(2050.0, worksheet.intermediate_output_p124, 0.002); end
  def test_intermediate_output_c126; assert_equal("Therm.b", worksheet.intermediate_output_c126); end
  def test_intermediate_output_d126; assert_equal("CCGT", worksheet.intermediate_output_d126); end
  def test_intermediate_output_g126; assert_in_delta(0.342, worksheet.intermediate_output_g126, 0.002); end
  def test_intermediate_output_h126; assert_in_epsilon(2.409, worksheet.intermediate_output_h126, 0.002); end
  def test_intermediate_output_i126; assert_in_epsilon(3.569, worksheet.intermediate_output_i126, 0.002); end
  def test_intermediate_output_j126; assert_in_epsilon(14.59102572656232, worksheet.intermediate_output_j126, 0.002); end
  def test_intermediate_output_k126; assert_in_epsilon(17.495954914038233, worksheet.intermediate_output_k126, 0.002); end
  def test_intermediate_output_l126; assert_in_epsilon(20.79270581787378, worksheet.intermediate_output_l126, 0.002); end
  def test_intermediate_output_m126; assert_in_epsilon(25.565424797379677, worksheet.intermediate_output_m126, 0.002); end
  def test_intermediate_output_n126; assert_in_epsilon(30.605201742653037, worksheet.intermediate_output_n126, 0.002); end
  def test_intermediate_output_o126; assert_in_epsilon(37.18980711222116, worksheet.intermediate_output_o126, 0.002); end
  def test_intermediate_output_p126; assert_in_epsilon(43.17001496123932, worksheet.intermediate_output_p126, 0.002); end
  def test_intermediate_output_c127; assert_equal("Therm.a.Solid", worksheet.intermediate_output_c127); end
  def test_intermediate_output_d127; assert_equal("Coal and or biomass", worksheet.intermediate_output_d127); end
  def test_intermediate_output_g127; assert_in_epsilon(34.23, worksheet.intermediate_output_g127, 0.002); end
  def test_intermediate_output_h127; assert_in_epsilon(35.68, worksheet.intermediate_output_h127, 0.002); end
  def test_intermediate_output_i127; assert_in_epsilon(40.97960726286241, worksheet.intermediate_output_i127, 0.002); end
  def test_intermediate_output_j127; assert_in_epsilon(47.92950569829943, worksheet.intermediate_output_j127, 0.002); end
  def test_intermediate_output_k127; assert_in_epsilon(56.502871216234524, worksheet.intermediate_output_k127, 0.002); end
  def test_intermediate_output_l127; assert_in_epsilon(67.15296344575677, worksheet.intermediate_output_l127, 0.002); end
  def test_intermediate_output_m127; assert_in_epsilon(80.77247430839755, worksheet.intermediate_output_m127, 0.002); end
  def test_intermediate_output_n127; assert_in_epsilon(95.22639813992896, worksheet.intermediate_output_n127, 0.002); end
  def test_intermediate_output_o127; assert_in_epsilon(111.36182871491283, worksheet.intermediate_output_o127, 0.002); end
  def test_intermediate_output_p127; assert_in_epsilon(130.648157490629, worksheet.intermediate_output_p127, 0.002); end
  def test_intermediate_output_c128; assert_equal("Nuke", worksheet.intermediate_output_c128); end
  def test_intermediate_output_d128; assert_equal("Nuclear power", worksheet.intermediate_output_d128); end
  def test_intermediate_output_g128; assert_in_epsilon(1.8, worksheet.intermediate_output_g128, 0.002); end
  def test_intermediate_output_h128; assert_in_epsilon(1.8, worksheet.intermediate_output_h128, 0.002); end
  def test_intermediate_output_i128; assert_in_epsilon(1.8, worksheet.intermediate_output_i128, 0.002); end
  def test_intermediate_output_j128; assert_in_epsilon(1.8, worksheet.intermediate_output_j128, 0.002); end
  def test_intermediate_output_k128; assert_in_epsilon(1.8, worksheet.intermediate_output_k128, 0.002); end
  def test_intermediate_output_l128; assert_in_epsilon(1.8, worksheet.intermediate_output_l128, 0.002); end
  def test_intermediate_output_m128; assert_in_epsilon(1.8, worksheet.intermediate_output_m128, 0.002); end
  def test_intermediate_output_n128; assert_in_epsilon(1.8, worksheet.intermediate_output_n128, 0.002); end
  def test_intermediate_output_o128; assert_in_epsilon(1.8, worksheet.intermediate_output_o128, 0.002); end
  def test_intermediate_output_p128; assert_in_delta(0.0, (worksheet.intermediate_output_p128||0), 0.002); end
  def test_intermediate_output_c129; assert_equal("RE.a", worksheet.intermediate_output_c129); end
  def test_intermediate_output_d129; assert_equal("Onshore wind", worksheet.intermediate_output_d129); end
  def test_intermediate_output_g129; assert_in_delta(0.0008216, worksheet.intermediate_output_g129, 0.002); end
  def test_intermediate_output_h129; assert_in_delta(0.0021736, worksheet.intermediate_output_h129, 0.002); end
  def test_intermediate_output_i129; assert_in_delta(0.36664240000000003, worksheet.intermediate_output_i129, 0.002); end
  def test_intermediate_output_j129; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_j129, 0.002); end
  def test_intermediate_output_k129; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_k129, 0.002); end
  def test_intermediate_output_l129; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_l129, 0.002); end
  def test_intermediate_output_m129; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_m129, 0.002); end
  def test_intermediate_output_n129; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_n129, 0.002); end
  def test_intermediate_output_o129; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_o129, 0.002); end
  def test_intermediate_output_p129; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_p129, 0.002); end
  def test_intermediate_output_c130; assert_equal("RE.b", worksheet.intermediate_output_c130); end
  def test_intermediate_output_d130; assert_equal("Hydroelectric power stations", worksheet.intermediate_output_d130); end
  def test_intermediate_output_g130; assert_in_delta(0.67, worksheet.intermediate_output_g130, 0.002); end
  def test_intermediate_output_h130; assert_in_delta(0.67, worksheet.intermediate_output_h130, 0.002); end
  def test_intermediate_output_i130; assert_in_delta(0.674, worksheet.intermediate_output_i130, 0.002); end
  def test_intermediate_output_j130; assert_in_delta(0.684, worksheet.intermediate_output_j130, 0.002); end
  def test_intermediate_output_k130; assert_in_delta(0.614, worksheet.intermediate_output_k130, 0.002); end
  def test_intermediate_output_l130; assert_in_delta(0.614, worksheet.intermediate_output_l130, 0.002); end
  def test_intermediate_output_m130; assert_in_delta(0.614, worksheet.intermediate_output_m130, 0.002); end
  def test_intermediate_output_n130; assert_in_delta(0.614, worksheet.intermediate_output_n130, 0.002); end
  def test_intermediate_output_o130; assert_in_delta(0.614, worksheet.intermediate_output_o130, 0.002); end
  def test_intermediate_output_p130; assert_in_delta(0.614, worksheet.intermediate_output_p130, 0.002); end
  def test_intermediate_output_c131; assert_equal("RE.c", worksheet.intermediate_output_c131); end
  def test_intermediate_output_d131; assert_equal("CSP", worksheet.intermediate_output_d131); end
  def test_intermediate_output_g131; assert_in_delta(0.0, (worksheet.intermediate_output_g131||0), 0.002); end
  def test_intermediate_output_h131; assert_in_delta(0.0, (worksheet.intermediate_output_h131||0), 0.002); end
  def test_intermediate_output_i131; assert_in_delta(0.063, worksheet.intermediate_output_i131, 0.002); end
  def test_intermediate_output_j131; assert_in_delta(0.168, worksheet.intermediate_output_j131, 0.002); end
  def test_intermediate_output_k131; assert_in_delta(0.168, worksheet.intermediate_output_k131, 0.002); end
  def test_intermediate_output_l131; assert_in_delta(0.168, worksheet.intermediate_output_l131, 0.002); end
  def test_intermediate_output_m131; assert_in_delta(0.168, worksheet.intermediate_output_m131, 0.002); end
  def test_intermediate_output_n131; assert_in_delta(0.168, worksheet.intermediate_output_n131, 0.002); end
  def test_intermediate_output_o131; assert_in_delta(0.168, worksheet.intermediate_output_o131, 0.002); end
  def test_intermediate_output_p131; assert_in_delta(0.168, worksheet.intermediate_output_p131, 0.002); end
  def test_intermediate_output_c132; assert_equal("Re.d", worksheet.intermediate_output_c132); end
  def test_intermediate_output_d132; assert_equal("Decentralised PV", worksheet.intermediate_output_d132); end
  def test_intermediate_output_g132; assert_in_delta(0.0, (worksheet.intermediate_output_g132||0), 0.002); end
  def test_intermediate_output_h132; assert_in_delta(0.0012430712581832644, worksheet.intermediate_output_h132, 0.002); end
  def test_intermediate_output_i132; assert_in_delta(0.0015450892422464284, worksheet.intermediate_output_i132, 0.002); end
  def test_intermediate_output_j132; assert_in_delta(0.0019085868150950259, worksheet.intermediate_output_j132, 0.002); end
  def test_intermediate_output_k132; assert_in_delta(0.002334110105009479, worksheet.intermediate_output_k132, 0.002); end
  def test_intermediate_output_l132; assert_in_delta(0.0028474716746649292, worksheet.intermediate_output_l132, 0.002); end
  def test_intermediate_output_m132; assert_in_delta(0.0034954781231899606, worksheet.intermediate_output_m132, 0.002); end
  def test_intermediate_output_n132; assert_in_delta(0.004221222616193592, worksheet.intermediate_output_n132, 0.002); end
  def test_intermediate_output_o132; assert_in_delta(0.004996725441851743, worksheet.intermediate_output_o132, 0.002); end
  def test_intermediate_output_p132; assert_in_delta(0.005837758431473833, worksheet.intermediate_output_p132, 0.002); end
  def test_intermediate_output_c133; assert_equal("RE.e", worksheet.intermediate_output_c133); end
  def test_intermediate_output_d133; assert_equal("Centralised PV", worksheet.intermediate_output_d133); end
  def test_intermediate_output_g133; assert_in_delta(0.0, (worksheet.intermediate_output_g133||0), 0.002); end
  def test_intermediate_output_h133; assert_in_delta(0.0, (worksheet.intermediate_output_h133||0), 0.002); end
  def test_intermediate_output_i133; assert_in_epsilon(1.448, worksheet.intermediate_output_i133, 0.002); end
  def test_intermediate_output_j133; assert_in_epsilon(1.448, worksheet.intermediate_output_j133, 0.002); end
  def test_intermediate_output_k133; assert_in_epsilon(1.448, worksheet.intermediate_output_k133, 0.002); end
  def test_intermediate_output_l133; assert_in_epsilon(1.448, worksheet.intermediate_output_l133, 0.002); end
  def test_intermediate_output_m133; assert_in_epsilon(1.448, worksheet.intermediate_output_m133, 0.002); end
  def test_intermediate_output_n133; assert_in_epsilon(1.448, worksheet.intermediate_output_n133, 0.002); end
  def test_intermediate_output_o133; assert_in_epsilon(1.448, worksheet.intermediate_output_o133, 0.002); end
  def test_intermediate_output_p133; assert_in_epsilon(1.448, worksheet.intermediate_output_p133, 0.002); end
  def test_intermediate_output_c136; assert_equal("ElcDSB.i", worksheet.intermediate_output_c136); end
  def test_intermediate_output_d136; assert_equal("Electricity imports and exports", worksheet.intermediate_output_d136); end
  def test_intermediate_output_g136; assert_in_epsilon(1.5, worksheet.intermediate_output_g136, 0.002); end
  def test_intermediate_output_h136; assert_in_epsilon(1.5, worksheet.intermediate_output_h136, 0.002); end
  def test_intermediate_output_i136; assert_in_epsilon(1.5, worksheet.intermediate_output_i136, 0.002); end
  def test_intermediate_output_j136; assert_in_epsilon(1.5, worksheet.intermediate_output_j136, 0.002); end
  def test_intermediate_output_k136; assert_in_epsilon(1.5, worksheet.intermediate_output_k136, 0.002); end
  def test_intermediate_output_l136; assert_in_epsilon(1.5, worksheet.intermediate_output_l136, 0.002); end
  def test_intermediate_output_m136; assert_in_epsilon(1.5, worksheet.intermediate_output_m136, 0.002); end
  def test_intermediate_output_n136; assert_in_epsilon(1.5, worksheet.intermediate_output_n136, 0.002); end
  def test_intermediate_output_o136; assert_in_epsilon(1.5, worksheet.intermediate_output_o136, 0.002); end
  def test_intermediate_output_p136; assert_in_epsilon(1.5, worksheet.intermediate_output_p136, 0.002); end
  def test_intermediate_output_c137; assert_equal("ElcDSB.s", worksheet.intermediate_output_c137); end
  def test_intermediate_output_d137; assert_equal("Electricity storage scheme", worksheet.intermediate_output_d137); end
  def test_intermediate_output_g137; assert_in_epsilon(1.58, worksheet.intermediate_output_g137, 0.002); end
  def test_intermediate_output_h137; assert_in_epsilon(1.58, worksheet.intermediate_output_h137, 0.002); end
  def test_intermediate_output_i137; assert_in_epsilon(2.912, worksheet.intermediate_output_i137, 0.002); end
  def test_intermediate_output_j137; assert_in_epsilon(2.912, worksheet.intermediate_output_j137, 0.002); end
  def test_intermediate_output_k137; assert_in_epsilon(2.912, worksheet.intermediate_output_k137, 0.002); end
  def test_intermediate_output_l137; assert_in_epsilon(2.912, worksheet.intermediate_output_l137, 0.002); end
  def test_intermediate_output_m137; assert_in_epsilon(2.912, worksheet.intermediate_output_m137, 0.002); end
  def test_intermediate_output_n137; assert_in_epsilon(2.912, worksheet.intermediate_output_n137, 0.002); end
  def test_intermediate_output_o137; assert_in_epsilon(2.912, worksheet.intermediate_output_o137, 0.002); end
  def test_intermediate_output_p137; assert_in_epsilon(2.912, worksheet.intermediate_output_p137, 0.002); end
  def test_intermediate_output_g138; assert_in_delta(0.0, (worksheet.intermediate_output_g138||0), 0.002); end
  def test_intermediate_output_h138; assert_in_delta(0.0, (worksheet.intermediate_output_h138||0), 0.002); end
  def test_intermediate_output_i138; assert_in_delta(0.0, (worksheet.intermediate_output_i138||0), 0.002); end
  def test_intermediate_output_j138; assert_in_delta(0.0, (worksheet.intermediate_output_j138||0), 0.002); end
  def test_intermediate_output_k138; assert_in_delta(0.0, (worksheet.intermediate_output_k138||0), 0.002); end
  def test_intermediate_output_l138; assert_in_delta(0.0, (worksheet.intermediate_output_l138||0), 0.002); end
  def test_intermediate_output_m138; assert_in_delta(0.0, (worksheet.intermediate_output_m138||0), 0.002); end
  def test_intermediate_output_n138; assert_in_delta(0.0, (worksheet.intermediate_output_n138||0), 0.002); end
  def test_intermediate_output_o138; assert_in_delta(0.0, (worksheet.intermediate_output_o138||0), 0.002); end
  def test_intermediate_output_p138; assert_in_delta(0.0, (worksheet.intermediate_output_p138||0), 0.002); end
  def test_intermediate_output_d139; assert_equal("Total generation", worksheet.intermediate_output_d139); end
  def test_intermediate_output_g139; assert_in_epsilon(40.122821599999995, worksheet.intermediate_output_g139, 0.002); end
  def test_intermediate_output_h139; assert_in_epsilon(43.642416671258175, worksheet.intermediate_output_h139, 0.002); end
  def test_intermediate_output_i139; assert_in_epsilon(53.31379475210466, worksheet.intermediate_output_i139, 0.002); end
  def test_intermediate_output_j139; assert_in_epsilon(71.75026241167684, worksheet.intermediate_output_j139, 0.002); end
  def test_intermediate_output_k139; assert_in_epsilon(83.15898264037777, worksheet.intermediate_output_k139, 0.002); end
  def test_intermediate_output_l139; assert_in_epsilon(97.10633913530522, worksheet.intermediate_output_l139, 0.002); end
  def test_intermediate_output_m139; assert_in_epsilon(115.49921698390041, worksheet.intermediate_output_m139, 0.002); end
  def test_intermediate_output_n139; assert_in_epsilon(134.9936435051982, worksheet.intermediate_output_n139, 0.002); end
  def test_intermediate_output_o139; assert_in_epsilon(157.7144549525759, worksheet.intermediate_output_o139, 0.002); end
  def test_intermediate_output_p139; assert_in_epsilon(181.1818326102998, worksheet.intermediate_output_p139, 0.002); end
  def test_intermediate_output_d140; assert_equal("reserve margin", worksheet.intermediate_output_d140); end
  def test_intermediate_output_g140; assert_in_delta(0.10948677064578849, worksheet.intermediate_output_g140, 0.002); end
  def test_intermediate_output_h140; assert_in_delta(0.012401474286367842, worksheet.intermediate_output_h140, 0.002); end
  def test_intermediate_output_i140; assert_in_delta(0.015137499032857438, worksheet.intermediate_output_i140, 0.002); end
  def test_intermediate_output_j140; assert_in_delta(0.17041966882560589, worksheet.intermediate_output_j140, 0.002); end
  def test_intermediate_output_k140; assert_in_delta(0.15687032353114394, worksheet.intermediate_output_k140, 0.002); end
  def test_intermediate_output_l140; assert_in_delta(0.14233032182406724, worksheet.intermediate_output_l140, 0.002); end
  def test_intermediate_output_m140; assert_in_delta(0.14089721889640106, worksheet.intermediate_output_m140, 0.002); end
  def test_intermediate_output_n140; assert_in_delta(0.1292361344535482, worksheet.intermediate_output_n140, 0.002); end
  def test_intermediate_output_o140; assert_in_delta(0.13552538274567172, worksheet.intermediate_output_o140, 0.002); end
  def test_intermediate_output_p140; assert_in_delta(0.13059424871770764, worksheet.intermediate_output_p140, 0.002); end
  def test_intermediate_output_b144; assert_equal("Emissions", worksheet.intermediate_output_b144); end
  def test_intermediate_output_g146; assert_in_delta(0.0, (worksheet.intermediate_output_g146||0), 0.002); end
  def test_intermediate_output_c148; assert_equal("Emissions by sector", worksheet.intermediate_output_c148); end
  def test_intermediate_output_g148; assert_in_epsilon(2006.0, worksheet.intermediate_output_g148, 0.002); end
  def test_intermediate_output_h148; assert_in_epsilon(2010.0, worksheet.intermediate_output_h148, 0.002); end
  def test_intermediate_output_i148; assert_in_epsilon(2015.0, worksheet.intermediate_output_i148, 0.002); end
  def test_intermediate_output_j148; assert_in_epsilon(2020.0, worksheet.intermediate_output_j148, 0.002); end
  def test_intermediate_output_k148; assert_in_epsilon(2025.0, worksheet.intermediate_output_k148, 0.002); end
  def test_intermediate_output_l148; assert_in_epsilon(2030.0, worksheet.intermediate_output_l148, 0.002); end
  def test_intermediate_output_m148; assert_in_epsilon(2035.0, worksheet.intermediate_output_m148, 0.002); end
  def test_intermediate_output_n148; assert_in_epsilon(2040.0, worksheet.intermediate_output_n148, 0.002); end
  def test_intermediate_output_o148; assert_in_epsilon(2045.0, worksheet.intermediate_output_o148, 0.002); end
  def test_intermediate_output_p148; assert_in_epsilon(2050.0, worksheet.intermediate_output_p148, 0.002); end
  def test_intermediate_output_c149; assert_equal("Therm", worksheet.intermediate_output_c149); end
  def test_intermediate_output_d149; assert_equal("Coal and gas power", worksheet.intermediate_output_d149); end
  def test_intermediate_output_g149; assert_in_epsilon(235.37666606152874, worksheet.intermediate_output_g149, 0.002); end
  def test_intermediate_output_h149; assert_in_epsilon(285.6617039601038, worksheet.intermediate_output_h149, 0.002); end
  def test_intermediate_output_i149; assert_in_epsilon(323.3896594576066, worksheet.intermediate_output_i149, 0.002); end
  def test_intermediate_output_j149; assert_in_epsilon(375.59497018670083, worksheet.intermediate_output_j149, 0.002); end
  def test_intermediate_output_k149; assert_in_epsilon(438.44509510285275, worksheet.intermediate_output_k149, 0.002); end
  def test_intermediate_output_l149; assert_in_epsilon(516.7345104457612, worksheet.intermediate_output_l149, 0.002); end
  def test_intermediate_output_m149; assert_in_epsilon(611.2461011422316, worksheet.intermediate_output_m149, 0.002); end
  def test_intermediate_output_n149; assert_in_epsilon(714.9588980586789, worksheet.intermediate_output_n149, 0.002); end
  def test_intermediate_output_o149; assert_in_epsilon(836.1849776166086, worksheet.intermediate_output_o149, 0.002); end
  def test_intermediate_output_p149; assert_in_epsilon(979.3845180791657, worksheet.intermediate_output_p149, 0.002); end
  def test_intermediate_output_q149; assert_in_delta(0.6275351580752532, worksheet.intermediate_output_q149, 0.002); end
  def test_intermediate_output_c150; assert_equal("Nuke", worksheet.intermediate_output_c150); end
  def test_intermediate_output_g150; assert_in_delta(0.0, (worksheet.intermediate_output_g150||0), 0.002); end
  def test_intermediate_output_h150; assert_in_delta(0.0, (worksheet.intermediate_output_h150||0), 0.002); end
  def test_intermediate_output_i150; assert_in_delta(0.0, (worksheet.intermediate_output_i150||0), 0.002); end
  def test_intermediate_output_j150; assert_in_delta(0.0, (worksheet.intermediate_output_j150||0), 0.002); end
  def test_intermediate_output_k150; assert_in_delta(0.0, (worksheet.intermediate_output_k150||0), 0.002); end
  def test_intermediate_output_l150; assert_in_delta(0.0, (worksheet.intermediate_output_l150||0), 0.002); end
  def test_intermediate_output_m150; assert_in_delta(0.0, (worksheet.intermediate_output_m150||0), 0.002); end
  def test_intermediate_output_n150; assert_in_delta(0.0, (worksheet.intermediate_output_n150||0), 0.002); end
  def test_intermediate_output_o150; assert_in_delta(0.0, (worksheet.intermediate_output_o150||0), 0.002); end
  def test_intermediate_output_p150; assert_in_delta(0.0, (worksheet.intermediate_output_p150||0), 0.002); end
  def test_intermediate_output_q150; assert_in_delta(0.0, (worksheet.intermediate_output_q150||0), 0.002); end
  def test_intermediate_output_c151; assert_equal("RE", worksheet.intermediate_output_c151); end
  def test_intermediate_output_g151; assert_in_delta(0.0, (worksheet.intermediate_output_g151||0), 0.002); end
  def test_intermediate_output_h151; assert_in_delta(0.0, (worksheet.intermediate_output_h151||0), 0.002); end
  def test_intermediate_output_i151; assert_in_delta(0.0, (worksheet.intermediate_output_i151||0), 0.002); end
  def test_intermediate_output_j151; assert_in_delta(0.0, (worksheet.intermediate_output_j151||0), 0.002); end
  def test_intermediate_output_k151; assert_in_delta(0.0, (worksheet.intermediate_output_k151||0), 0.002); end
  def test_intermediate_output_l151; assert_in_delta(0.0, (worksheet.intermediate_output_l151||0), 0.002); end
  def test_intermediate_output_m151; assert_in_delta(0.0, (worksheet.intermediate_output_m151||0), 0.002); end
  def test_intermediate_output_n151; assert_in_delta(0.0, (worksheet.intermediate_output_n151||0), 0.002); end
  def test_intermediate_output_o151; assert_in_delta(0.0, (worksheet.intermediate_output_o151||0), 0.002); end
  def test_intermediate_output_p151; assert_in_delta(0.0, (worksheet.intermediate_output_p151||0), 0.002); end
  def test_intermediate_output_q151; assert_in_delta(0.0, (worksheet.intermediate_output_q151||0), 0.002); end
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
  def test_intermediate_output_c154; assert_equal("AGL", worksheet.intermediate_output_c154); end
  def test_intermediate_output_d154; assert_equal("Land, agricultre and forestry", worksheet.intermediate_output_d154); end
  def test_intermediate_output_g154; assert_in_epsilon(57.01544954146634, worksheet.intermediate_output_g154, 0.002); end
  def test_intermediate_output_h154; assert_in_epsilon(62.48118758278345, worksheet.intermediate_output_h154, 0.002); end
  def test_intermediate_output_i154; assert_in_epsilon(65.9443179084118, worksheet.intermediate_output_i154, 0.002); end
  def test_intermediate_output_j154; assert_in_epsilon(73.52240578167533, worksheet.intermediate_output_j154, 0.002); end
  def test_intermediate_output_k154; assert_in_epsilon(73.46507414888464, worksheet.intermediate_output_k154, 0.002); end
  def test_intermediate_output_l154; assert_in_epsilon(73.85100432326169, worksheet.intermediate_output_l154, 0.002); end
  def test_intermediate_output_m154; assert_in_epsilon(74.53705151201308, worksheet.intermediate_output_m154, 0.002); end
  def test_intermediate_output_n154; assert_in_epsilon(75.3525729621751, worksheet.intermediate_output_n154, 0.002); end
  def test_intermediate_output_o154; assert_in_epsilon(76.23048536044675, worksheet.intermediate_output_o154, 0.002); end
  def test_intermediate_output_p154; assert_in_epsilon(77.09449556689961, worksheet.intermediate_output_p154, 0.002); end
  def test_intermediate_output_q154; assert_in_delta(0.049397867302611004, worksheet.intermediate_output_q154, 0.002); end
  def test_intermediate_output_c155; assert_equal("WST", worksheet.intermediate_output_c155); end
  def test_intermediate_output_d155; assert_equal("Waste emissions", worksheet.intermediate_output_d155); end
  def test_intermediate_output_g155; assert_in_epsilon(12.947484687500001, worksheet.intermediate_output_g155, 0.002); end
  def test_intermediate_output_h155; assert_in_epsilon(16.34336059209492, worksheet.intermediate_output_h155, 0.002); end
  def test_intermediate_output_i155; assert_in_epsilon(18.166415008660113, worksheet.intermediate_output_i155, 0.002); end
  def test_intermediate_output_j155; assert_in_epsilon(21.542390599148376, worksheet.intermediate_output_j155, 0.002); end
  def test_intermediate_output_k155; assert_in_epsilon(25.055044009745735, worksheet.intermediate_output_k155, 0.002); end
  def test_intermediate_output_l155; assert_in_epsilon(28.49836994008631, worksheet.intermediate_output_l155, 0.002); end
  def test_intermediate_output_m155; assert_in_epsilon(31.796815203112075, worksheet.intermediate_output_m155, 0.002); end
  def test_intermediate_output_n155; assert_in_epsilon(34.83386364746201, worksheet.intermediate_output_n155, 0.002); end
  def test_intermediate_output_o155; assert_in_epsilon(37.58765307705178, worksheet.intermediate_output_o155, 0.002); end
  def test_intermediate_output_p155; assert_in_epsilon(40.020111280916495, worksheet.intermediate_output_p155, 0.002); end
  def test_intermediate_output_q155; assert_in_delta(0.025642662708324677, worksheet.intermediate_output_q155, 0.002); end
  def test_intermediate_output_g156; assert_in_delta(0.0, (worksheet.intermediate_output_g156||0), 0.002); end
  def test_intermediate_output_h156; assert_in_delta(0.0, (worksheet.intermediate_output_h156||0), 0.002); end
  def test_intermediate_output_i156; assert_in_delta(0.0, (worksheet.intermediate_output_i156||0), 0.002); end
  def test_intermediate_output_j156; assert_in_delta(0.0, (worksheet.intermediate_output_j156||0), 0.002); end
  def test_intermediate_output_k156; assert_in_delta(0.0, (worksheet.intermediate_output_k156||0), 0.002); end
  def test_intermediate_output_l156; assert_in_delta(0.0, (worksheet.intermediate_output_l156||0), 0.002); end
  def test_intermediate_output_m156; assert_in_delta(0.0, (worksheet.intermediate_output_m156||0), 0.002); end
  def test_intermediate_output_n156; assert_in_delta(0.0, (worksheet.intermediate_output_n156||0), 0.002); end
  def test_intermediate_output_o156; assert_in_delta(0.0, (worksheet.intermediate_output_o156||0), 0.002); end
  def test_intermediate_output_p156; assert_in_delta(0.0, (worksheet.intermediate_output_p156||0), 0.002); end
  def test_intermediate_output_q156; assert_in_delta(0.0, (worksheet.intermediate_output_q156||0), 0.002); end
  def test_intermediate_output_c157; assert_equal("H2prod", worksheet.intermediate_output_c157); end
  def test_intermediate_output_g157; assert_in_delta(0.0, (worksheet.intermediate_output_g157||0), 0.002); end
  def test_intermediate_output_h157; assert_in_delta(0.0, (worksheet.intermediate_output_h157||0), 0.002); end
  def test_intermediate_output_i157; assert_in_delta(0.0, (worksheet.intermediate_output_i157||0), 0.002); end
  def test_intermediate_output_j157; assert_in_delta(0.0, (worksheet.intermediate_output_j157||0), 0.002); end
  def test_intermediate_output_k157; assert_in_delta(0.0, (worksheet.intermediate_output_k157||0), 0.002); end
  def test_intermediate_output_l157; assert_in_delta(0.0, (worksheet.intermediate_output_l157||0), 0.002); end
  def test_intermediate_output_m157; assert_in_delta(0.0, (worksheet.intermediate_output_m157||0), 0.002); end
  def test_intermediate_output_n157; assert_in_delta(0.0, (worksheet.intermediate_output_n157||0), 0.002); end
  def test_intermediate_output_o157; assert_in_delta(0.0, (worksheet.intermediate_output_o157||0), 0.002); end
  def test_intermediate_output_p157; assert_in_delta(0.0, (worksheet.intermediate_output_p157||0), 0.002); end
  def test_intermediate_output_q157; assert_in_delta(0.0, (worksheet.intermediate_output_q157||0), 0.002); end
  def test_intermediate_output_c158; assert_equal("RES", worksheet.intermediate_output_c158); end
  def test_intermediate_output_d158; assert_equal("Household emissions", worksheet.intermediate_output_d158); end
  def test_intermediate_output_g158; assert_in_epsilon(1.182210102019368, worksheet.intermediate_output_g158, 0.002); end
  def test_intermediate_output_h158; assert_in_epsilon(1.142007931595158, worksheet.intermediate_output_h158, 0.002); end
  def test_intermediate_output_i158; assert_in_epsilon(1.1383835516208194, worksheet.intermediate_output_i158, 0.002); end
  def test_intermediate_output_j158; assert_in_epsilon(1.1185220305619519, worksheet.intermediate_output_j158, 0.002); end
  def test_intermediate_output_k158; assert_in_epsilon(1.081954521635173, worksheet.intermediate_output_k158, 0.002); end
  def test_intermediate_output_l158; assert_in_epsilon(1.0273048036856502, worksheet.intermediate_output_l158, 0.002); end
  def test_intermediate_output_m158; assert_in_delta(0.8962095207147571, worksheet.intermediate_output_m158, 0.002); end
  def test_intermediate_output_n158; assert_in_delta(0.7727063260992572, worksheet.intermediate_output_n158, 0.002); end
  def test_intermediate_output_o158; assert_in_delta(0.6422367505583209, worksheet.intermediate_output_o158, 0.002); end
  def test_intermediate_output_p158; assert_in_delta(0.5285438629612572, worksheet.intermediate_output_p158, 0.002); end
  def test_intermediate_output_q158; assert_in_delta(0.00033866152718404227, worksheet.intermediate_output_q158, 0.002); end
  def test_intermediate_output_c159; assert_equal("COM", worksheet.intermediate_output_c159); end
  def test_intermediate_output_d159; assert_equal("Commercial sector emissions", worksheet.intermediate_output_d159); end
  def test_intermediate_output_g159; assert_in_epsilon(8.8862553782154, worksheet.intermediate_output_g159, 0.002); end
  def test_intermediate_output_h159; assert_in_epsilon(9.803310043292498, worksheet.intermediate_output_h159, 0.002); end
  def test_intermediate_output_i159; assert_in_epsilon(10.641299270742575, worksheet.intermediate_output_i159, 0.002); end
  def test_intermediate_output_j159; assert_in_epsilon(11.268624215966138, worksheet.intermediate_output_j159, 0.002); end
  def test_intermediate_output_k159; assert_in_epsilon(11.602058241724189, worksheet.intermediate_output_k159, 0.002); end
  def test_intermediate_output_l159; assert_in_epsilon(11.656808904069896, worksheet.intermediate_output_l159, 0.002); end
  def test_intermediate_output_m159; assert_in_epsilon(11.43647073086813, worksheet.intermediate_output_m159, 0.002); end
  def test_intermediate_output_n159; assert_in_epsilon(10.684763165290654, worksheet.intermediate_output_n159, 0.002); end
  def test_intermediate_output_o159; assert_in_epsilon(9.343853577334306, worksheet.intermediate_output_o159, 0.002); end
  def test_intermediate_output_p159; assert_in_epsilon(5.366101688372341, worksheet.intermediate_output_p159, 0.002); end
  def test_intermediate_output_q159; assert_in_delta(0.003438299676071074, worksheet.intermediate_output_q159, 0.002); end
  def test_intermediate_output_c160; assert_equal("IND", worksheet.intermediate_output_c160); end
  def test_intermediate_output_d160; assert_equal("Industry", worksheet.intermediate_output_d160); end
  def test_intermediate_output_g160; assert_in_epsilon(63.078460679035885, worksheet.intermediate_output_g160, 0.002); end
  def test_intermediate_output_h160; assert_in_epsilon(73.69126572548763, worksheet.intermediate_output_h160, 0.002); end
  def test_intermediate_output_i160; assert_in_epsilon(90.9348477018036, worksheet.intermediate_output_i160, 0.002); end
  def test_intermediate_output_j160; assert_in_epsilon(108.8002293138643, worksheet.intermediate_output_j160, 0.002); end
  def test_intermediate_output_k160; assert_in_epsilon(135.8127149542214, worksheet.intermediate_output_k160, 0.002); end
  def test_intermediate_output_l160; assert_in_epsilon(163.7547905807464, worksheet.intermediate_output_l160, 0.002); end
  def test_intermediate_output_m160; assert_in_epsilon(205.61430873334373, worksheet.intermediate_output_m160, 0.002); end
  def test_intermediate_output_n160; assert_in_epsilon(248.12071838083958, worksheet.intermediate_output_n160, 0.002); end
  def test_intermediate_output_o160; assert_in_epsilon(296.76954193901884, worksheet.intermediate_output_o160, 0.002); end
  def test_intermediate_output_p160; assert_in_epsilon(346.12572457865616, worksheet.intermediate_output_p160, 0.002); end
  def test_intermediate_output_q160; assert_in_delta(0.22177812419720253, worksheet.intermediate_output_q160, 0.002); end
  def test_intermediate_output_c161; assert_equal("TRA", worksheet.intermediate_output_c161); end
  def test_intermediate_output_d161; assert_equal("Transport", worksheet.intermediate_output_d161); end
  def test_intermediate_output_f161; assert_in_delta(0.10937416573947756, worksheet.intermediate_output_f161, 0.002); end
  def test_intermediate_output_g161; assert_in_epsilon(46.61458893702269, worksheet.intermediate_output_g161, 0.002); end
  def test_intermediate_output_h161; assert_in_epsilon(52.223987970216406, worksheet.intermediate_output_h161, 0.002); end
  def test_intermediate_output_i161; assert_in_epsilon(60.303024988296016, worksheet.intermediate_output_i161, 0.002); end
  def test_intermediate_output_j161; assert_in_epsilon(67.74067362543312, worksheet.intermediate_output_j161, 0.002); end
  def test_intermediate_output_k161; assert_in_epsilon(74.96971301116896, worksheet.intermediate_output_k161, 0.002); end
  def test_intermediate_output_l161; assert_in_epsilon(82.12993775962532, worksheet.intermediate_output_l161, 0.002); end
  def test_intermediate_output_m161; assert_in_epsilon(89.24023653566735, worksheet.intermediate_output_m161, 0.002); end
  def test_intermediate_output_n161; assert_in_epsilon(96.19116984365274, worksheet.intermediate_output_n161, 0.002); end
  def test_intermediate_output_o161; assert_in_epsilon(104.0697636537544, worksheet.intermediate_output_o161, 0.002); end
  def test_intermediate_output_p161; assert_in_epsilon(109.60793165540301, worksheet.intermediate_output_p161, 0.002); end
  def test_intermediate_output_q161; assert_in_delta(0.07023066982167163, worksheet.intermediate_output_q161, 0.002); end
  def test_intermediate_output_g162; assert_in_delta(0.0, (worksheet.intermediate_output_g162||0), 0.002); end
  def test_intermediate_output_h162; assert_in_delta(0.0, (worksheet.intermediate_output_h162||0), 0.002); end
  def test_intermediate_output_i162; assert_in_delta(0.0, (worksheet.intermediate_output_i162||0), 0.002); end
  def test_intermediate_output_j162; assert_in_delta(0.0, (worksheet.intermediate_output_j162||0), 0.002); end
  def test_intermediate_output_k162; assert_in_delta(0.0, (worksheet.intermediate_output_k162||0), 0.002); end
  def test_intermediate_output_l162; assert_in_delta(0.0, (worksheet.intermediate_output_l162||0), 0.002); end
  def test_intermediate_output_m162; assert_in_delta(0.0, (worksheet.intermediate_output_m162||0), 0.002); end
  def test_intermediate_output_n162; assert_in_delta(0.0, (worksheet.intermediate_output_n162||0), 0.002); end
  def test_intermediate_output_o162; assert_in_delta(0.0, (worksheet.intermediate_output_o162||0), 0.002); end
  def test_intermediate_output_p162; assert_in_delta(0.0, (worksheet.intermediate_output_p162||0), 0.002); end
  def test_intermediate_output_q162; assert_in_delta(0.0, (worksheet.intermediate_output_q162||0), 0.002); end
  def test_intermediate_output_g163; assert_in_delta(0.0, (worksheet.intermediate_output_g163||0), 0.002); end
  def test_intermediate_output_h163; assert_in_delta(0.0, (worksheet.intermediate_output_h163||0), 0.002); end
  def test_intermediate_output_i163; assert_in_delta(0.0, (worksheet.intermediate_output_i163||0), 0.002); end
  def test_intermediate_output_j163; assert_in_delta(0.0, (worksheet.intermediate_output_j163||0), 0.002); end
  def test_intermediate_output_k163; assert_in_delta(0.0, (worksheet.intermediate_output_k163||0), 0.002); end
  def test_intermediate_output_l163; assert_in_delta(0.0, (worksheet.intermediate_output_l163||0), 0.002); end
  def test_intermediate_output_m163; assert_in_delta(0.0, (worksheet.intermediate_output_m163||0), 0.002); end
  def test_intermediate_output_n163; assert_in_delta(0.0, (worksheet.intermediate_output_n163||0), 0.002); end
  def test_intermediate_output_o163; assert_in_delta(0.0, (worksheet.intermediate_output_o163||0), 0.002); end
  def test_intermediate_output_p163; assert_in_delta(0.0, (worksheet.intermediate_output_p163||0), 0.002); end
  def test_intermediate_output_q163; assert_in_delta(0.0, (worksheet.intermediate_output_q163||0), 0.002); end
  def test_intermediate_output_c164; assert_equal("XV", worksheet.intermediate_output_c164); end
  def test_intermediate_output_g164; assert_in_delta(0.0, (worksheet.intermediate_output_g164||0), 0.002); end
  def test_intermediate_output_h164; assert_in_delta(0.0, (worksheet.intermediate_output_h164||0), 0.002); end
  def test_intermediate_output_i164; assert_in_delta(0.0, (worksheet.intermediate_output_i164||0), 0.002); end
  def test_intermediate_output_j164; assert_in_delta(0.0, (worksheet.intermediate_output_j164||0), 0.002); end
  def test_intermediate_output_k164; assert_in_delta(0.0, (worksheet.intermediate_output_k164||0), 0.002); end
  def test_intermediate_output_l164; assert_in_delta(0.0, (worksheet.intermediate_output_l164||0), 0.002); end
  def test_intermediate_output_m164; assert_in_delta(0.0, (worksheet.intermediate_output_m164||0), 0.002); end
  def test_intermediate_output_n164; assert_in_delta(0.0, (worksheet.intermediate_output_n164||0), 0.002); end
  def test_intermediate_output_o164; assert_in_delta(0.0, (worksheet.intermediate_output_o164||0), 0.002); end
  def test_intermediate_output_p164; assert_in_delta(0.0, (worksheet.intermediate_output_p164||0), 0.002); end
  def test_intermediate_output_q164; assert_in_delta(0.0, (worksheet.intermediate_output_q164||0), 0.002); end
  def test_intermediate_output_c165; assert_equal("XVI", worksheet.intermediate_output_c165); end
  def test_intermediate_output_g165; assert_in_epsilon(1.092662841022116, worksheet.intermediate_output_g165, 0.002); end
  def test_intermediate_output_h165; assert_in_epsilon(1.197214427006403, worksheet.intermediate_output_h165, 0.002); end
  def test_intermediate_output_i165; assert_in_epsilon(1.3267540442285575, worksheet.intermediate_output_i165, 0.002); end
  def test_intermediate_output_j165; assert_in_epsilon(1.4520462101077372, worksheet.intermediate_output_j165, 0.002); end
  def test_intermediate_output_k165; assert_in_epsilon(1.6300414235253478, worksheet.intermediate_output_k165, 0.002); end
  def test_intermediate_output_l165; assert_in_epsilon(1.8027256016559, worksheet.intermediate_output_l165, 0.002); end
  def test_intermediate_output_m165; assert_in_epsilon(1.7183068554953467, worksheet.intermediate_output_m165, 0.002); end
  def test_intermediate_output_n165; assert_in_epsilon(1.9981181011375266, worksheet.intermediate_output_n165, 0.002); end
  def test_intermediate_output_o165; assert_in_epsilon(2.2956463777050686, worksheet.intermediate_output_o165, 0.002); end
  def test_intermediate_output_p165; assert_in_epsilon(2.557270353983323, worksheet.intermediate_output_p165, 0.002); end
  def test_intermediate_output_q165; assert_in_delta(0.0016385566916817097, worksheet.intermediate_output_q165, 0.002); end
  def test_intermediate_output_c166; assert_equal("XVII", worksheet.intermediate_output_c166); end
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
  def test_intermediate_output_g167; assert_in_epsilon(426.1937782278105, worksheet.intermediate_output_g167, 0.002); end
  def test_intermediate_output_h167; assert_in_epsilon(502.5440382325803, worksheet.intermediate_output_h167, 0.002); end
  def test_intermediate_output_i167; assert_in_epsilon(571.8447019313701, worksheet.intermediate_output_i167, 0.002); end
  def test_intermediate_output_j167; assert_in_epsilon(661.0398619634578, worksheet.intermediate_output_j167, 0.002); end
  def test_intermediate_output_k167; assert_in_epsilon(762.0616954137582, worksheet.intermediate_output_k167, 0.002); end
  def test_intermediate_output_l167; assert_in_epsilon(879.4554523588923, worksheet.intermediate_output_l167, 0.002); end
  def test_intermediate_output_m167; assert_in_epsilon(1026.485500233446, worksheet.intermediate_output_m167, 0.002); end
  def test_intermediate_output_n167; assert_in_epsilon(1182.912810485336, worksheet.intermediate_output_n167, 0.002); end
  def test_intermediate_output_o167; assert_in_epsilon(1363.124158352478, worksheet.intermediate_output_o167, 0.002); end
  def test_intermediate_output_p167; assert_in_epsilon(1560.684697066358, worksheet.intermediate_output_p167, 0.002); end
  def test_intermediate_output_c169; assert_equal("Modelled emissions", worksheet.intermediate_output_c169); end
  def test_intermediate_output_d171; assert_equal("IPCC Sector", worksheet.intermediate_output_d171); end
  def test_intermediate_output_p171; assert_equal("Mt CO2e", worksheet.intermediate_output_p171); end
  def test_intermediate_output_c172; assert_equal("1A", worksheet.intermediate_output_c172); end
  def test_intermediate_output_d172; assert_equal("Fuel Combustion", worksheet.intermediate_output_d172); end
  def test_intermediate_output_g172; assert_in_epsilon(373.179411082759, worksheet.intermediate_output_g172, 0.002); end
  def test_intermediate_output_h172; assert_in_epsilon(440.1888189378754, worksheet.intermediate_output_h172, 0.002); end
  def test_intermediate_output_i172; assert_in_epsilon(502.91498147325956, worksheet.intermediate_output_i172, 0.002); end
  def test_intermediate_output_j172; assert_in_epsilon(580.7378420996622, worksheet.intermediate_output_j172, 0.002); end
  def test_intermediate_output_k172; assert_in_epsilon(675.3868983647785, worksheet.intermediate_output_k172, 0.002); end
  def test_intermediate_output_l172; assert_in_epsilon(785.2134895131402, worksheet.intermediate_output_l172, 0.002); end
  def test_intermediate_output_m172; assert_in_epsilon(923.380180150276, worksheet.intermediate_output_m172, 0.002); end
  def test_intermediate_output_n172; assert_in_epsilon(1072.1250165503848, worksheet.intermediate_output_n172, 0.002); end
  def test_intermediate_output_o172; assert_in_epsilon(1243.4866973729615, worksheet.intermediate_output_o172, 0.002); end
  def test_intermediate_output_p172; assert_in_epsilon(1433.3189870134734, worksheet.intermediate_output_p172, 0.002); end
  def test_intermediate_output_c173; assert_equal("1B", worksheet.intermediate_output_c173); end
  def test_intermediate_output_d173; assert_equal("Fugitive Emissions from Fuels", worksheet.intermediate_output_d173); end
  def test_intermediate_output_g173; assert_in_epsilon(1.092662841022116, worksheet.intermediate_output_g173, 0.002); end
  def test_intermediate_output_h173; assert_in_epsilon(1.197214427006403, worksheet.intermediate_output_h173, 0.002); end
  def test_intermediate_output_i173; assert_in_epsilon(1.3267540442285575, worksheet.intermediate_output_i173, 0.002); end
  def test_intermediate_output_j173; assert_in_epsilon(1.4520462101077372, worksheet.intermediate_output_j173, 0.002); end
  def test_intermediate_output_k173; assert_in_epsilon(1.6300414235253478, worksheet.intermediate_output_k173, 0.002); end
  def test_intermediate_output_l173; assert_in_epsilon(1.8027256016559, worksheet.intermediate_output_l173, 0.002); end
  def test_intermediate_output_m173; assert_in_epsilon(1.7183068554953467, worksheet.intermediate_output_m173, 0.002); end
  def test_intermediate_output_n173; assert_in_epsilon(1.9981181011375266, worksheet.intermediate_output_n173, 0.002); end
  def test_intermediate_output_o173; assert_in_epsilon(2.2956463777050686, worksheet.intermediate_output_o173, 0.002); end
  def test_intermediate_output_p173; assert_in_epsilon(2.557270353983323, worksheet.intermediate_output_p173, 0.002); end
  def test_intermediate_output_c174; assert_in_delta(1.0, worksheet.intermediate_output_c174, 0.002); end
  def test_intermediate_output_d174; assert_equal("Fuel Combustion", worksheet.intermediate_output_d174); end
  def test_intermediate_output_g174; assert_in_epsilon(374.2720739237811, worksheet.intermediate_output_g174, 0.002); end
  def test_intermediate_output_h174; assert_in_epsilon(441.3860333648818, worksheet.intermediate_output_h174, 0.002); end
  def test_intermediate_output_i174; assert_in_epsilon(504.2417355174881, worksheet.intermediate_output_i174, 0.002); end
  def test_intermediate_output_j174; assert_in_epsilon(582.1898883097699, worksheet.intermediate_output_j174, 0.002); end
  def test_intermediate_output_k174; assert_in_epsilon(677.0169397883038, worksheet.intermediate_output_k174, 0.002); end
  def test_intermediate_output_l174; assert_in_epsilon(787.0162151147961, worksheet.intermediate_output_l174, 0.002); end
  def test_intermediate_output_m174; assert_in_epsilon(925.0984870057714, worksheet.intermediate_output_m174, 0.002); end
  def test_intermediate_output_n174; assert_in_epsilon(1074.1231346515224, worksheet.intermediate_output_n174, 0.002); end
  def test_intermediate_output_o174; assert_in_epsilon(1245.7823437506665, worksheet.intermediate_output_o174, 0.002); end
  def test_intermediate_output_p174; assert_in_epsilon(1435.8762573674567, worksheet.intermediate_output_p174, 0.002); end
  def test_intermediate_output_c175; assert_in_epsilon(2.0, worksheet.intermediate_output_c175, 0.002); end
  def test_intermediate_output_d175; assert_equal("Industrial Processes", worksheet.intermediate_output_d175); end
  def test_intermediate_output_g175; assert_in_epsilon(62.986052720724636, worksheet.intermediate_output_g175, 0.002); end
  def test_intermediate_output_h175; assert_in_epsilon(63.741262622068966, worksheet.intermediate_output_h175, 0.002); end
  def test_intermediate_output_i175; assert_in_epsilon(65.16132370483909, worksheet.intermediate_output_i175, 0.002); end
  def test_intermediate_output_j175; assert_in_epsilon(66.99571676172657, worksheet.intermediate_output_j175, 0.002); end
  def test_intermediate_output_k175; assert_in_epsilon(69.250978586872, worksheet.intermediate_output_k175, 0.002); end
  def test_intermediate_output_l175; assert_in_epsilon(72.08473591183042, worksheet.intermediate_output_l175, 0.002); end
  def test_intermediate_output_m175; assert_in_epsilon(71.66295262214527, worksheet.intermediate_output_m175, 0.002); end
  def test_intermediate_output_n175; assert_in_epsilon(75.213303716804, worksheet.intermediate_output_n175, 0.002); end
  def test_intermediate_output_o175; assert_in_epsilon(78.91582038284949, worksheet.intermediate_output_o175, 0.002); end
  def test_intermediate_output_p175; assert_in_epsilon(83.0862354526532, worksheet.intermediate_output_p175, 0.002); end
  def test_intermediate_output_c176; assert_in_epsilon(3.0, worksheet.intermediate_output_c176, 0.002); end
  def test_intermediate_output_d176; assert_equal("Solvent and Other Product Use", worksheet.intermediate_output_d176); end
  def test_intermediate_output_g176; assert_in_delta(0.0, (worksheet.intermediate_output_g176||0), 0.002); end
  def test_intermediate_output_h176; assert_in_delta(0.0, (worksheet.intermediate_output_h176||0), 0.002); end
  def test_intermediate_output_i176; assert_in_delta(0.0, (worksheet.intermediate_output_i176||0), 0.002); end
  def test_intermediate_output_j176; assert_in_delta(0.0, (worksheet.intermediate_output_j176||0), 0.002); end
  def test_intermediate_output_k176; assert_in_delta(0.0, (worksheet.intermediate_output_k176||0), 0.002); end
  def test_intermediate_output_l176; assert_in_delta(0.0, (worksheet.intermediate_output_l176||0), 0.002); end
  def test_intermediate_output_m176; assert_in_delta(0.0, (worksheet.intermediate_output_m176||0), 0.002); end
  def test_intermediate_output_n176; assert_in_delta(0.0, (worksheet.intermediate_output_n176||0), 0.002); end
  def test_intermediate_output_o176; assert_in_delta(0.0, (worksheet.intermediate_output_o176||0), 0.002); end
  def test_intermediate_output_p176; assert_in_delta(0.0, (worksheet.intermediate_output_p176||0), 0.002); end
  def test_intermediate_output_c177; assert_in_epsilon(4.0, worksheet.intermediate_output_c177, 0.002); end
  def test_intermediate_output_d177; assert_equal("Agriculture", worksheet.intermediate_output_d177); end
  def test_intermediate_output_g177; assert_in_epsilon(43.61472600399361, worksheet.intermediate_output_g177, 0.002); end
  def test_intermediate_output_h177; assert_in_epsilon(43.04718167837683, worksheet.intermediate_output_h177, 0.002); end
  def test_intermediate_output_i177; assert_in_epsilon(41.90199190246045, worksheet.intermediate_output_i177, 0.002); end
  def test_intermediate_output_j177; assert_in_epsilon(41.83782031340011, worksheet.intermediate_output_j177, 0.002); end
  def test_intermediate_output_k177; assert_in_epsilon(39.37807908147248, worksheet.intermediate_output_k177, 0.002); end
  def test_intermediate_output_l177; assert_in_epsilon(37.1746324932571, worksheet.intermediate_output_l177, 0.002); end
  def test_intermediate_output_m177; assert_in_epsilon(35.19355555437035, worksheet.intermediate_output_m177, 0.002); end
  def test_intermediate_output_n177; assert_in_epsilon(33.407914155526825, worksheet.intermediate_output_n177, 0.002); end
  def test_intermediate_output_o177; assert_in_epsilon(31.795097738118187, worksheet.intermediate_output_o177, 0.002); end
  def test_intermediate_output_p177; assert_in_epsilon(30.335995837662693, worksheet.intermediate_output_p177, 0.002); end
  def test_intermediate_output_c178; assert_in_epsilon(5.0, worksheet.intermediate_output_c178, 0.002); end
  def test_intermediate_output_d178; assert_equal("Land Use, Land-Use Change and Forestry", worksheet.intermediate_output_d178); end
  def test_intermediate_output_g178; assert_in_epsilon(-25.241849417808073, worksheet.intermediate_output_g178, 0.002); end
  def test_intermediate_output_h178; assert_in_epsilon(-23.699770586662464, worksheet.intermediate_output_h178, 0.002); end
  def test_intermediate_output_i178; assert_in_epsilon(-21.534672047730453, worksheet.intermediate_output_i178, 0.002); end
  def test_intermediate_output_j178; assert_in_epsilon(-19.369573508798442, worksheet.intermediate_output_j178, 0.002); end
  def test_intermediate_output_k178; assert_in_epsilon(-18.694953990080784, worksheet.intermediate_output_k178, 0.002); end
  def test_intermediate_output_l178; assert_in_epsilon(-18.02033447136312, worksheet.intermediate_output_l178, 0.002); end
  def test_intermediate_output_m178; assert_in_epsilon(-17.34571495264546, worksheet.intermediate_output_m178, 0.002); end
  def test_intermediate_output_n178; assert_in_epsilon(-16.671095433927796, worksheet.intermediate_output_n178, 0.002); end
  def test_intermediate_output_o178; assert_in_epsilon(-15.996475915210132, worksheet.intermediate_output_o178, 0.002); end
  def test_intermediate_output_p178; assert_in_epsilon(-15.321856396492471, worksheet.intermediate_output_p178, 0.002); end
  def test_intermediate_output_c179; assert_in_epsilon(6.0, worksheet.intermediate_output_c179, 0.002); end
  def test_intermediate_output_d179; assert_equal("Waste", worksheet.intermediate_output_d179); end
  def test_intermediate_output_g179; assert_in_epsilon(12.947484687500001, worksheet.intermediate_output_g179, 0.002); end
  def test_intermediate_output_h179; assert_in_epsilon(16.34336059209492, worksheet.intermediate_output_h179, 0.002); end
  def test_intermediate_output_i179; assert_in_epsilon(18.166415008660113, worksheet.intermediate_output_i179, 0.002); end
  def test_intermediate_output_j179; assert_in_epsilon(21.542390599148376, worksheet.intermediate_output_j179, 0.002); end
  def test_intermediate_output_k179; assert_in_epsilon(25.055044009745735, worksheet.intermediate_output_k179, 0.002); end
  def test_intermediate_output_l179; assert_in_epsilon(28.49836994008631, worksheet.intermediate_output_l179, 0.002); end
  def test_intermediate_output_m179; assert_in_epsilon(31.796815203112075, worksheet.intermediate_output_m179, 0.002); end
  def test_intermediate_output_n179; assert_in_epsilon(34.83386364746201, worksheet.intermediate_output_n179, 0.002); end
  def test_intermediate_output_o179; assert_in_epsilon(37.58765307705178, worksheet.intermediate_output_o179, 0.002); end
  def test_intermediate_output_p179; assert_in_epsilon(40.020111280916495, worksheet.intermediate_output_p179, 0.002); end
  def test_intermediate_output_c180; assert_in_epsilon(7.0, worksheet.intermediate_output_c180, 0.002); end
  def test_intermediate_output_d180; assert_equal("Other", worksheet.intermediate_output_d180); end
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
  def test_intermediate_output_c181; assert_equal("X1", worksheet.intermediate_output_c181); end
  def test_intermediate_output_d181; assert_equal("International Aviation and Shipping", worksheet.intermediate_output_d181); end
  def test_intermediate_output_g181; assert_in_delta(0.0, (worksheet.intermediate_output_g181||0), 0.002); end
  def test_intermediate_output_h181; assert_in_delta(0.0, (worksheet.intermediate_output_h181||0), 0.002); end
  def test_intermediate_output_i181; assert_in_delta(0.0, (worksheet.intermediate_output_i181||0), 0.002); end
  def test_intermediate_output_j181; assert_in_delta(0.0, (worksheet.intermediate_output_j181||0), 0.002); end
  def test_intermediate_output_k181; assert_in_delta(0.0, (worksheet.intermediate_output_k181||0), 0.002); end
  def test_intermediate_output_l181; assert_in_delta(0.0, (worksheet.intermediate_output_l181||0), 0.002); end
  def test_intermediate_output_m181; assert_in_delta(0.0, (worksheet.intermediate_output_m181||0), 0.002); end
  def test_intermediate_output_n181; assert_in_delta(0.0, (worksheet.intermediate_output_n181||0), 0.002); end
  def test_intermediate_output_o181; assert_in_delta(0.0, (worksheet.intermediate_output_o181||0), 0.002); end
  def test_intermediate_output_p181; assert_in_delta(0.0, (worksheet.intermediate_output_p181||0), 0.002); end
  def test_intermediate_output_c182; assert_equal("X2", worksheet.intermediate_output_c182); end
  def test_intermediate_output_d182; assert_equal("Bioenergy credit", worksheet.intermediate_output_d182); end
  def test_intermediate_output_g182; assert_in_delta(-0.0410701605618571, worksheet.intermediate_output_g182, 0.002); end
  def test_intermediate_output_h182; assert_in_delta(-0.10134352774127607, worksheet.intermediate_output_h182, 0.002); end
  def test_intermediate_output_i182; assert_in_delta(-0.2342759180259992, worksheet.intermediate_output_i182, 0.002); end
  def test_intermediate_output_j182; assert_in_delta(-0.4018032817561422, worksheet.intermediate_output_j182, 0.002); end
  def test_intermediate_output_k182; assert_in_delta(-0.6091269148879931, worksheet.intermediate_output_k182, 0.002); end
  def test_intermediate_output_l182; assert_in_delta(-0.8458793505347438, worksheet.intermediate_output_l182, 0.002); end
  def test_intermediate_output_m182; assert_in_epsilon(-1.1086010480702095, worksheet.intermediate_output_m182, 0.002); end
  def test_intermediate_output_n182; assert_in_epsilon(-1.4077861613622575, worksheet.intermediate_output_n182, 0.002); end
  def test_intermediate_output_o182; assert_in_epsilon(-1.7359315428785957, worksheet.intermediate_output_o182, 0.002); end
  def test_intermediate_output_p182; assert_in_epsilon(-2.1002543311385327, worksheet.intermediate_output_p182, 0.002); end
  def test_intermediate_output_c183; assert_equal("X3", worksheet.intermediate_output_c183); end
  def test_intermediate_output_d183; assert_equal("Carbon capture", worksheet.intermediate_output_d183); end
  def test_intermediate_output_g183; assert_in_delta(0.0, (worksheet.intermediate_output_g183||0), 0.002); end
  def test_intermediate_output_h183; assert_in_delta(0.0, (worksheet.intermediate_output_h183||0), 0.002); end
  def test_intermediate_output_i183; assert_in_delta(0.0, (worksheet.intermediate_output_i183||0), 0.002); end
  def test_intermediate_output_j183; assert_in_epsilon(-1.1004808746823787, worksheet.intermediate_output_j183, 0.002); end
  def test_intermediate_output_k183; assert_in_epsilon(-1.1004808746823787, worksheet.intermediate_output_k183, 0.002); end
  def test_intermediate_output_l183; assert_in_epsilon(-1.1004808746823787, worksheet.intermediate_output_l183, 0.002); end
  def test_intermediate_output_m183; assert_in_epsilon(-1.1004808746823787, worksheet.intermediate_output_m183, 0.002); end
  def test_intermediate_output_n183; assert_in_epsilon(-1.1004808746823787, worksheet.intermediate_output_n183, 0.002); end
  def test_intermediate_output_o183; assert_in_epsilon(-1.1004808746823787, worksheet.intermediate_output_o183, 0.002); end
  def test_intermediate_output_p183; assert_in_epsilon(-1.1004808746823787, worksheet.intermediate_output_p183, 0.002); end
  def test_intermediate_output_d184; assert_equal("Total", worksheet.intermediate_output_d184); end
  def test_intermediate_output_f184; assert_in_delta(0.0, (worksheet.intermediate_output_f184||0), 0.002); end
  def test_intermediate_output_g184; assert_in_epsilon(468.5374177576294, worksheet.intermediate_output_g184, 0.002); end
  def test_intermediate_output_h184; assert_in_epsilon(540.7167241430188, worksheet.intermediate_output_h184, 0.002); end
  def test_intermediate_output_i184; assert_in_epsilon(607.7025181676913, worksheet.intermediate_output_i184, 0.002); end
  def test_intermediate_output_j184; assert_in_epsilon(691.6939583188081, worksheet.intermediate_output_j184, 0.002); end
  def test_intermediate_output_k184; assert_in_epsilon(790.2964796867429, worksheet.intermediate_output_k184, 0.002); end
  def test_intermediate_output_l184; assert_in_epsilon(904.8072587633898, worksheet.intermediate_output_l184, 0.002); end
  def test_intermediate_output_m184; assert_in_epsilon(1044.197013510001, worksheet.intermediate_output_m184, 0.002); end
  def test_intermediate_output_n184; assert_in_epsilon(1198.3988537013427, worksheet.intermediate_output_n184, 0.002); end
  def test_intermediate_output_o184; assert_in_epsilon(1375.2480266159146, worksheet.intermediate_output_o184, 0.002); end
  def test_intermediate_output_p184; assert_in_epsilon(1570.7960083363757, worksheet.intermediate_output_p184, 0.002); end
  def test_intermediate_output_c186; assert_equal("Excluding international bunkers", worksheet.intermediate_output_c186); end
  def test_intermediate_output_f186; assert_in_delta(0.0, (worksheet.intermediate_output_f186||0), 0.002); end
  def test_intermediate_output_g186; assert_in_epsilon(468.5374177576294, worksheet.intermediate_output_g186, 0.002); end
  def test_intermediate_output_h186; assert_in_epsilon(540.7167241430188, worksheet.intermediate_output_h186, 0.002); end
  def test_intermediate_output_i186; assert_in_epsilon(607.7025181676913, worksheet.intermediate_output_i186, 0.002); end
  def test_intermediate_output_j186; assert_in_epsilon(691.6939583188081, worksheet.intermediate_output_j186, 0.002); end
  def test_intermediate_output_k186; assert_in_epsilon(790.2964796867429, worksheet.intermediate_output_k186, 0.002); end
  def test_intermediate_output_l186; assert_in_epsilon(904.8072587633898, worksheet.intermediate_output_l186, 0.002); end
  def test_intermediate_output_m186; assert_in_epsilon(1044.197013510001, worksheet.intermediate_output_m186, 0.002); end
  def test_intermediate_output_n186; assert_in_epsilon(1198.3988537013427, worksheet.intermediate_output_n186, 0.002); end
  def test_intermediate_output_o186; assert_in_epsilon(1375.2480266159146, worksheet.intermediate_output_o186, 0.002); end
  def test_intermediate_output_p186; assert_in_epsilon(1570.7960083363757, worksheet.intermediate_output_p186, 0.002); end
  def test_intermediate_output_b190; assert_equal("Electricity Generation Emissions", worksheet.intermediate_output_b190); end
  def test_intermediate_output_c193; assert_equal("Emissions from Electricity Generation, exlcuding CHP", worksheet.intermediate_output_c193); end
  def test_intermediate_output_g193; assert_in_epsilon(2006.0, worksheet.intermediate_output_g193, 0.002); end
  def test_intermediate_output_h193; assert_equal("2010", worksheet.intermediate_output_h193); end
  def test_intermediate_output_i193; assert_equal("2015", worksheet.intermediate_output_i193); end
  def test_intermediate_output_j193; assert_equal("2020", worksheet.intermediate_output_j193); end
  def test_intermediate_output_k193; assert_equal("2025", worksheet.intermediate_output_k193); end
  def test_intermediate_output_l193; assert_equal("2030", worksheet.intermediate_output_l193); end
  def test_intermediate_output_m193; assert_equal("2035", worksheet.intermediate_output_m193); end
  def test_intermediate_output_n193; assert_equal("2040", worksheet.intermediate_output_n193); end
  def test_intermediate_output_o193; assert_equal("2045", worksheet.intermediate_output_o193); end
  def test_intermediate_output_p193; assert_equal("2050", worksheet.intermediate_output_p193); end
  def test_intermediate_output_c194; assert_equal("Power Generation", worksheet.intermediate_output_c194); end
  def test_intermediate_output_g194; assert_in_epsilon(235.37666606152874, worksheet.intermediate_output_g194, 0.002); end
  def test_intermediate_output_h194; assert_in_epsilon(285.6617039601038, worksheet.intermediate_output_h194, 0.002); end
  def test_intermediate_output_i194; assert_in_epsilon(323.3896594576066, worksheet.intermediate_output_i194, 0.002); end
  def test_intermediate_output_j194; assert_in_epsilon(375.59497018670083, worksheet.intermediate_output_j194, 0.002); end
  def test_intermediate_output_k194; assert_in_epsilon(438.44509510285275, worksheet.intermediate_output_k194, 0.002); end
  def test_intermediate_output_l194; assert_in_epsilon(516.7345104457612, worksheet.intermediate_output_l194, 0.002); end
  def test_intermediate_output_m194; assert_in_epsilon(611.2461011422316, worksheet.intermediate_output_m194, 0.002); end
  def test_intermediate_output_n194; assert_in_epsilon(714.9588980586789, worksheet.intermediate_output_n194, 0.002); end
  def test_intermediate_output_o194; assert_in_epsilon(836.1849776166086, worksheet.intermediate_output_o194, 0.002); end
  def test_intermediate_output_p194; assert_in_epsilon(979.3845180791657, worksheet.intermediate_output_p194, 0.002); end
  def test_intermediate_output_d195; assert_equal("CCS in Power", worksheet.intermediate_output_d195); end
  def test_intermediate_output_d196; assert_equal("Bioenergy in Gas Power", worksheet.intermediate_output_d196); end
  def test_intermediate_output_d197; assert_equal("Bioenergy in Solid BM Power", worksheet.intermediate_output_d197); end
  def test_intermediate_output_d198; assert_equal("Bioenergy in Solid HC CCS Power", worksheet.intermediate_output_d198); end
  def test_intermediate_output_d199; assert_equal("Bioenergy in Gas CCS Power", worksheet.intermediate_output_d199); end
  def test_intermediate_output_c200; assert_equal("Total Emissions from Power", worksheet.intermediate_output_c200); end
  def test_intermediate_output_g200; assert_in_epsilon(235.37666606152874, worksheet.intermediate_output_g200, 0.002); end
  def test_intermediate_output_h200; assert_in_epsilon(285.6617039601038, worksheet.intermediate_output_h200, 0.002); end
  def test_intermediate_output_i200; assert_in_epsilon(323.3896594576066, worksheet.intermediate_output_i200, 0.002); end
  def test_intermediate_output_j200; assert_in_epsilon(375.59497018670083, worksheet.intermediate_output_j200, 0.002); end
  def test_intermediate_output_k200; assert_in_epsilon(438.44509510285275, worksheet.intermediate_output_k200, 0.002); end
  def test_intermediate_output_l200; assert_in_epsilon(516.7345104457612, worksheet.intermediate_output_l200, 0.002); end
  def test_intermediate_output_m200; assert_in_epsilon(611.2461011422316, worksheet.intermediate_output_m200, 0.002); end
  def test_intermediate_output_n200; assert_in_epsilon(714.9588980586789, worksheet.intermediate_output_n200, 0.002); end
  def test_intermediate_output_o200; assert_in_epsilon(836.1849776166086, worksheet.intermediate_output_o200, 0.002); end
  def test_intermediate_output_p200; assert_in_epsilon(979.3845180791657, worksheet.intermediate_output_p200, 0.002); end
  def test_intermediate_output_c202; assert_equal("Emissions reclassified", worksheet.intermediate_output_c202); end
  def test_intermediate_output_g202; assert_in_epsilon(2006.0, worksheet.intermediate_output_g202, 0.002); end
  def test_intermediate_output_h202; assert_equal("2010", worksheet.intermediate_output_h202); end
  def test_intermediate_output_i202; assert_equal("2015", worksheet.intermediate_output_i202); end
  def test_intermediate_output_j202; assert_equal("2020", worksheet.intermediate_output_j202); end
  def test_intermediate_output_k202; assert_equal("2025", worksheet.intermediate_output_k202); end
  def test_intermediate_output_l202; assert_equal("2030", worksheet.intermediate_output_l202); end
  def test_intermediate_output_m202; assert_equal("2035", worksheet.intermediate_output_m202); end
  def test_intermediate_output_n202; assert_equal("2040", worksheet.intermediate_output_n202); end
  def test_intermediate_output_o202; assert_equal("2045", worksheet.intermediate_output_o202); end
  def test_intermediate_output_p202; assert_equal("2050", worksheet.intermediate_output_p202); end
  def test_intermediate_output_c203; assert_in_delta(1.0, worksheet.intermediate_output_c203, 0.002); end
  def test_intermediate_output_d203; assert_equal("Fuel Combustion", worksheet.intermediate_output_d203); end
  def test_intermediate_output_g203; assert_in_epsilon(235.37666606152874, worksheet.intermediate_output_g203, 0.002); end
  def test_intermediate_output_h203; assert_in_epsilon(285.6617039601038, worksheet.intermediate_output_h203, 0.002); end
  def test_intermediate_output_i203; assert_in_epsilon(323.3896594576066, worksheet.intermediate_output_i203, 0.002); end
  def test_intermediate_output_j203; assert_in_epsilon(375.59497018670083, worksheet.intermediate_output_j203, 0.002); end
  def test_intermediate_output_k203; assert_in_epsilon(438.44509510285275, worksheet.intermediate_output_k203, 0.002); end
  def test_intermediate_output_l203; assert_in_epsilon(516.7345104457612, worksheet.intermediate_output_l203, 0.002); end
  def test_intermediate_output_m203; assert_in_epsilon(611.2461011422316, worksheet.intermediate_output_m203, 0.002); end
  def test_intermediate_output_n203; assert_in_epsilon(714.9588980586789, worksheet.intermediate_output_n203, 0.002); end
  def test_intermediate_output_o203; assert_in_epsilon(836.1849776166086, worksheet.intermediate_output_o203, 0.002); end
  def test_intermediate_output_p203; assert_in_epsilon(979.3845180791657, worksheet.intermediate_output_p203, 0.002); end
  def test_intermediate_output_c204; assert_equal("X2", worksheet.intermediate_output_c204); end
  def test_intermediate_output_d204; assert_equal("Bioenergy credit", worksheet.intermediate_output_d204); end
  def test_intermediate_output_g204; assert_in_delta(0.0, (worksheet.intermediate_output_g204||0), 0.002); end
  def test_intermediate_output_h204; assert_in_delta(0.0, (worksheet.intermediate_output_h204||0), 0.002); end
  def test_intermediate_output_i204; assert_in_delta(0.0, (worksheet.intermediate_output_i204||0), 0.002); end
  def test_intermediate_output_j204; assert_in_delta(0.0, (worksheet.intermediate_output_j204||0), 0.002); end
  def test_intermediate_output_k204; assert_in_delta(0.0, (worksheet.intermediate_output_k204||0), 0.002); end
  def test_intermediate_output_l204; assert_in_delta(0.0, (worksheet.intermediate_output_l204||0), 0.002); end
  def test_intermediate_output_m204; assert_in_delta(0.0, (worksheet.intermediate_output_m204||0), 0.002); end
  def test_intermediate_output_n204; assert_in_delta(0.0, (worksheet.intermediate_output_n204||0), 0.002); end
  def test_intermediate_output_o204; assert_in_delta(0.0, (worksheet.intermediate_output_o204||0), 0.002); end
  def test_intermediate_output_p204; assert_in_delta(0.0, (worksheet.intermediate_output_p204||0), 0.002); end
  def test_intermediate_output_c205; assert_equal("X3", worksheet.intermediate_output_c205); end
  def test_intermediate_output_d205; assert_equal("Carbon capture", worksheet.intermediate_output_d205); end
  def test_intermediate_output_g205; assert_in_delta(0.0, (worksheet.intermediate_output_g205||0), 0.002); end
  def test_intermediate_output_h205; assert_in_delta(0.0, (worksheet.intermediate_output_h205||0), 0.002); end
  def test_intermediate_output_i205; assert_in_delta(0.0, (worksheet.intermediate_output_i205||0), 0.002); end
  def test_intermediate_output_j205; assert_in_delta(0.0, (worksheet.intermediate_output_j205||0), 0.002); end
  def test_intermediate_output_k205; assert_in_delta(0.0, (worksheet.intermediate_output_k205||0), 0.002); end
  def test_intermediate_output_l205; assert_in_delta(0.0, (worksheet.intermediate_output_l205||0), 0.002); end
  def test_intermediate_output_m205; assert_in_delta(0.0, (worksheet.intermediate_output_m205||0), 0.002); end
  def test_intermediate_output_n205; assert_in_delta(0.0, (worksheet.intermediate_output_n205||0), 0.002); end
  def test_intermediate_output_o205; assert_in_delta(0.0, (worksheet.intermediate_output_o205||0), 0.002); end
  def test_intermediate_output_p205; assert_in_delta(0.0, (worksheet.intermediate_output_p205||0), 0.002); end
  def test_intermediate_output_d206; assert_equal("Total", worksheet.intermediate_output_d206); end
  def test_intermediate_output_g206; assert_in_epsilon(235.37666606152874, worksheet.intermediate_output_g206, 0.002); end
  def test_intermediate_output_h206; assert_in_epsilon(285.6617039601038, worksheet.intermediate_output_h206, 0.002); end
  def test_intermediate_output_i206; assert_in_epsilon(323.3896594576066, worksheet.intermediate_output_i206, 0.002); end
  def test_intermediate_output_j206; assert_in_epsilon(375.59497018670083, worksheet.intermediate_output_j206, 0.002); end
  def test_intermediate_output_k206; assert_in_epsilon(438.44509510285275, worksheet.intermediate_output_k206, 0.002); end
  def test_intermediate_output_l206; assert_in_epsilon(516.7345104457612, worksheet.intermediate_output_l206, 0.002); end
  def test_intermediate_output_m206; assert_in_epsilon(611.2461011422316, worksheet.intermediate_output_m206, 0.002); end
  def test_intermediate_output_n206; assert_in_epsilon(714.9588980586789, worksheet.intermediate_output_n206, 0.002); end
  def test_intermediate_output_o206; assert_in_epsilon(836.1849776166086, worksheet.intermediate_output_o206, 0.002); end
  def test_intermediate_output_p206; assert_in_epsilon(979.3845180791657, worksheet.intermediate_output_p206, 0.002); end
  def test_intermediate_output_c208; assert_equal("Emissions intensity", worksheet.intermediate_output_c208); end
  def test_intermediate_output_e208; assert_equal("MtCO2e/TWh", worksheet.intermediate_output_e208); end
  def test_intermediate_output_g208; assert_in_delta(0.26400542094181095, worksheet.intermediate_output_g208, 0.002); end
  def test_intermediate_output_h208; assert_in_delta(0.2700093429657742, worksheet.intermediate_output_h208, 0.002); end
  def test_intermediate_output_i208; assert_in_delta(0.2600324240774011, worksheet.intermediate_output_i208, 0.002); end
  def test_intermediate_output_j208; assert_in_delta(0.2574827105045474, worksheet.intermediate_output_j208, 0.002); end
  def test_intermediate_output_k208; assert_in_delta(0.2561115773840983, worksheet.intermediate_output_k208, 0.002); end
  def test_intermediate_output_l208; assert_in_delta(0.2550394040902382, worksheet.intermediate_output_l208, 0.002); end
  def test_intermediate_output_m208; assert_in_delta(0.25310482556296554, worksheet.intermediate_output_m208, 0.002); end
  def test_intermediate_output_n208; assert_in_delta(0.2505572808559886, worksheet.intermediate_output_n208, 0.002); end
  def test_intermediate_output_o208; assert_in_delta(0.2520660532489622, worksheet.intermediate_output_o208, 0.002); end
  def test_intermediate_output_p208; assert_in_delta(0.2557690746460373, worksheet.intermediate_output_p208, 0.002); end
  def test_intermediate_output_e209; assert_equal("gCO2e/KWh", worksheet.intermediate_output_e209); end
  def test_intermediate_output_g209; assert_in_epsilon(264.00542094181094, worksheet.intermediate_output_g209, 0.002); end
  def test_intermediate_output_h209; assert_in_epsilon(270.00934296577424, worksheet.intermediate_output_h209, 0.002); end
  def test_intermediate_output_i209; assert_in_epsilon(260.0324240774011, worksheet.intermediate_output_i209, 0.002); end
  def test_intermediate_output_j209; assert_in_epsilon(257.4827105045474, worksheet.intermediate_output_j209, 0.002); end
  def test_intermediate_output_k209; assert_in_epsilon(256.11157738409827, worksheet.intermediate_output_k209, 0.002); end
  def test_intermediate_output_l209; assert_in_epsilon(255.03940409023818, worksheet.intermediate_output_l209, 0.002); end
  def test_intermediate_output_m209; assert_in_epsilon(253.10482556296554, worksheet.intermediate_output_m209, 0.002); end
  def test_intermediate_output_n209; assert_in_epsilon(250.5572808559886, worksheet.intermediate_output_n209, 0.002); end
  def test_intermediate_output_o209; assert_in_epsilon(252.0660532489622, worksheet.intermediate_output_o209, 0.002); end
  def test_intermediate_output_p209; assert_in_epsilon(255.76907464603732, worksheet.intermediate_output_p209, 0.002); end
  def test_intermediate_output_c211; assert_equal("Note: Emissions from CHP are excluded, while emissions from district heating are included.", worksheet.intermediate_output_c211); end
  def test_intermediate_output_b214; assert_equal("Primary supply, format for web-based interface", worksheet.intermediate_output_b214); end
  def test_intermediate_output_c216; assert_equal("N.01", worksheet.intermediate_output_c216); end
  def test_intermediate_output_d216; assert_equal("Nuclear fission", worksheet.intermediate_output_d216); end
  def test_intermediate_output_e216; assert_in_delta(0.0, (worksheet.intermediate_output_e216||0), 0.002); end
  def test_intermediate_output_f216; assert_in_delta(0.0, (worksheet.intermediate_output_f216||0), 0.002); end
  def test_intermediate_output_g216; assert_in_epsilon(110.05713000000002, worksheet.intermediate_output_g216, 0.002); end
  def test_intermediate_output_h216; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_h216, 0.002); end
  def test_intermediate_output_i216; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_i216, 0.002); end
  def test_intermediate_output_j216; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_j216, 0.002); end
  def test_intermediate_output_k216; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_k216, 0.002); end
  def test_intermediate_output_l216; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_l216, 0.002); end
  def test_intermediate_output_m216; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_m216, 0.002); end
  def test_intermediate_output_n216; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_n216, 0.002); end
  def test_intermediate_output_o216; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_o216, 0.002); end
  def test_intermediate_output_p216; assert_in_delta(0.0, (worksheet.intermediate_output_p216||0), 0.002); end
  def test_intermediate_output_c217; assert_equal("R.01", worksheet.intermediate_output_c217); end
  def test_intermediate_output_d217; assert_equal("Solar", worksheet.intermediate_output_d217); end
  def test_intermediate_output_e217; assert_in_delta(0.0, (worksheet.intermediate_output_e217||0), 0.002); end
  def test_intermediate_output_f217; assert_in_delta(0.0, (worksheet.intermediate_output_f217||0), 0.002); end
  def test_intermediate_output_g217; assert_in_delta(0.0, (worksheet.intermediate_output_g217||0), 0.002); end
  def test_intermediate_output_h217; assert_in_delta(0.006712584794189628, worksheet.intermediate_output_h217, 0.002); end
  def test_intermediate_output_i217; assert_in_epsilon(12.049461337908133, worksheet.intermediate_output_i217, 0.002); end
  def test_intermediate_output_j217; assert_in_epsilon(15.364972224801516, worksheet.intermediate_output_j217, 0.002); end
  def test_intermediate_output_k217; assert_in_epsilon(15.367270050567054, worksheet.intermediate_output_k217, 0.002); end
  def test_intermediate_output_l217; assert_in_epsilon(15.370042203043193, worksheet.intermediate_output_l217, 0.002); end
  def test_intermediate_output_m217; assert_in_epsilon(15.373541437865228, worksheet.intermediate_output_m217, 0.002); end
  def test_intermediate_output_n217; assert_in_epsilon(15.377460458127448, worksheet.intermediate_output_n217, 0.002); end
  def test_intermediate_output_o217; assert_in_epsilon(15.381648173386, worksheet.intermediate_output_o217, 0.002); end
  def test_intermediate_output_p217; assert_in_epsilon(15.386189751529962, worksheet.intermediate_output_p217, 0.002); end
  def test_intermediate_output_c218; assert_equal("R.02", worksheet.intermediate_output_c218); end
  def test_intermediate_output_d218; assert_equal("Wind", worksheet.intermediate_output_d218); end
  def test_intermediate_output_e218; assert_in_delta(0.0, (worksheet.intermediate_output_e218||0), 0.002); end
  def test_intermediate_output_f218; assert_in_delta(0.0, (worksheet.intermediate_output_f218||0), 0.002); end
  def test_intermediate_output_g218; assert_in_delta(0.02592772416, worksheet.intermediate_output_g218, 0.002); end
  def test_intermediate_output_h218; assert_in_delta(0.06859359936, worksheet.intermediate_output_h218, 0.002); end
  def test_intermediate_output_i218; assert_in_epsilon(11.57035420224, worksheet.intermediate_output_i218, 0.002); end
  def test_intermediate_output_j218; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_j218, 0.002); end
  def test_intermediate_output_k218; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_k218, 0.002); end
  def test_intermediate_output_l218; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_l218, 0.002); end
  def test_intermediate_output_m218; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_m218, 0.002); end
  def test_intermediate_output_n218; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_n218, 0.002); end
  def test_intermediate_output_o218; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_o218, 0.002); end
  def test_intermediate_output_p218; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_p218, 0.002); end
  def test_intermediate_output_c219; assert_equal("R.06", worksheet.intermediate_output_c219); end
  def test_intermediate_output_d219; assert_equal("Hydro", worksheet.intermediate_output_d219); end
  def test_intermediate_output_e219; assert_in_delta(0.0, (worksheet.intermediate_output_e219||0), 0.002); end
  def test_intermediate_output_f219; assert_in_delta(0.0, (worksheet.intermediate_output_f219||0), 0.002); end
  def test_intermediate_output_g219; assert_in_epsilon(5.285898, worksheet.intermediate_output_g219, 0.002); end
  def test_intermediate_output_h219; assert_in_epsilon(5.285898, worksheet.intermediate_output_h219, 0.002); end
  def test_intermediate_output_i219; assert_in_epsilon(5.317455600000001, worksheet.intermediate_output_i219, 0.002); end
  def test_intermediate_output_j219; assert_in_epsilon(5.396349600000001, worksheet.intermediate_output_j219, 0.002); end
  def test_intermediate_output_k219; assert_in_epsilon(4.8440916, worksheet.intermediate_output_k219, 0.002); end
  def test_intermediate_output_l219; assert_in_epsilon(4.8440916, worksheet.intermediate_output_l219, 0.002); end
  def test_intermediate_output_m219; assert_in_epsilon(4.8440916, worksheet.intermediate_output_m219, 0.002); end
  def test_intermediate_output_n219; assert_in_epsilon(4.8440916, worksheet.intermediate_output_n219, 0.002); end
  def test_intermediate_output_o219; assert_in_epsilon(4.8440916, worksheet.intermediate_output_o219, 0.002); end
  def test_intermediate_output_p219; assert_in_epsilon(4.8440916, worksheet.intermediate_output_p219, 0.002); end
  def test_intermediate_output_c220; assert_equal("Y.02", worksheet.intermediate_output_c220); end
  def test_intermediate_output_d220; assert_equal("Electricity oversupply (imports)", worksheet.intermediate_output_d220); end
  def test_intermediate_output_e220; assert_in_delta(0.0, (worksheet.intermediate_output_e220||0), 0.002); end
  def test_intermediate_output_f220; assert_in_delta(0.0, (worksheet.intermediate_output_f220||0), 0.002); end
  def test_intermediate_output_g220; assert_in_delta(0.0, (worksheet.intermediate_output_g220||0), 0.002); end
  def test_intermediate_output_h220; assert_in_delta(0.0, (worksheet.intermediate_output_h220||0), 0.002); end
  def test_intermediate_output_i220; assert_in_delta(0.0, (worksheet.intermediate_output_i220||0), 0.002); end
  def test_intermediate_output_j220; assert_in_delta(0.0, (worksheet.intermediate_output_j220||0), 0.002); end
  def test_intermediate_output_k220; assert_in_delta(0.0, (worksheet.intermediate_output_k220||0), 0.002); end
  def test_intermediate_output_l220; assert_in_delta(0.0, (worksheet.intermediate_output_l220||0), 0.002); end
  def test_intermediate_output_m220; assert_in_delta(0.0, (worksheet.intermediate_output_m220||0), 0.002); end
  def test_intermediate_output_n220; assert_in_delta(0.0, (worksheet.intermediate_output_n220||0), 0.002); end
  def test_intermediate_output_o220; assert_in_delta(0.0, (worksheet.intermediate_output_o220||0), 0.002); end
  def test_intermediate_output_p220; assert_in_delta(0.0, (worksheet.intermediate_output_p220||0), 0.002); end
  def test_intermediate_output_c221; assert_equal("R.07", worksheet.intermediate_output_c221); end
  def test_intermediate_output_d221; assert_equal("Environmental heat", worksheet.intermediate_output_d221); end
  def test_intermediate_output_e221; assert_in_delta(0.0, (worksheet.intermediate_output_e221||0), 0.002); end
  def test_intermediate_output_f221; assert_in_delta(0.0, (worksheet.intermediate_output_f221||0), 0.002); end
  def test_intermediate_output_g221; assert_in_delta(0.0, (worksheet.intermediate_output_g221||0), 0.002); end
  def test_intermediate_output_h221; assert_in_delta(0.0, (worksheet.intermediate_output_h221||0), 0.002); end
  def test_intermediate_output_i221; assert_in_delta(0.0, (worksheet.intermediate_output_i221||0), 0.002); end
  def test_intermediate_output_j221; assert_in_delta(0.0, (worksheet.intermediate_output_j221||0), 0.002); end
  def test_intermediate_output_k221; assert_in_delta(0.0, (worksheet.intermediate_output_k221||0), 0.002); end
  def test_intermediate_output_l221; assert_in_delta(0.0, (worksheet.intermediate_output_l221||0), 0.002); end
  def test_intermediate_output_m221; assert_in_delta(0.0, (worksheet.intermediate_output_m221||0), 0.002); end
  def test_intermediate_output_n221; assert_in_delta(0.0, (worksheet.intermediate_output_n221||0), 0.002); end
  def test_intermediate_output_o221; assert_in_delta(0.0, (worksheet.intermediate_output_o221||0), 0.002); end
  def test_intermediate_output_p221; assert_in_delta(0.0, (worksheet.intermediate_output_p221||0), 0.002); end
  def test_intermediate_output_d222; assert_equal("Bioenergy", worksheet.intermediate_output_d222); end
  def test_intermediate_output_e222; assert_in_delta(0.0, (worksheet.intermediate_output_e222||0), 0.002); end
  def test_intermediate_output_f222; assert_in_delta(0.0, (worksheet.intermediate_output_f222||0), 0.002); end
  def test_intermediate_output_g222; assert_in_delta(0.5869869821173436, worksheet.intermediate_output_g222, 0.002); end
  def test_intermediate_output_h222; assert_in_delta(0.0, (worksheet.intermediate_output_h222||0), 0.002); end
  def test_intermediate_output_i222; assert_in_delta(0.0, (worksheet.intermediate_output_i222||0), 0.002); end
  def test_intermediate_output_j222; assert_in_delta(0.0, (worksheet.intermediate_output_j222||0), 0.002); end
  def test_intermediate_output_k222; assert_in_delta(0.0, (worksheet.intermediate_output_k222||0), 0.002); end
  def test_intermediate_output_l222; assert_in_delta(0.0, (worksheet.intermediate_output_l222||0), 0.002); end
  def test_intermediate_output_m222; assert_in_delta(0.0, (worksheet.intermediate_output_m222||0), 0.002); end
  def test_intermediate_output_n222; assert_in_delta(0.0, (worksheet.intermediate_output_n222||0), 0.002); end
  def test_intermediate_output_o222; assert_in_delta(0.0, (worksheet.intermediate_output_o222||0), 0.002); end
  def test_intermediate_output_p222; assert_in_delta(0.0, (worksheet.intermediate_output_p222||0), 0.002); end
  def test_intermediate_output_d223; assert_equal("Coal", worksheet.intermediate_output_d223); end
  def test_intermediate_output_e223; assert_in_delta(0.0, (worksheet.intermediate_output_e223||0), 0.002); end
  def test_intermediate_output_f223; assert_in_delta(0.0, (worksheet.intermediate_output_f223||0), 0.002); end
  def test_intermediate_output_g223; assert_in_epsilon(3828.2267258574393, worksheet.intermediate_output_g223, 0.002); end
  def test_intermediate_output_h223; assert_in_epsilon(4449.7199049898145, worksheet.intermediate_output_h223, 0.002); end
  def test_intermediate_output_i223; assert_in_epsilon(4998.970045931257, worksheet.intermediate_output_i223, 0.002); end
  def test_intermediate_output_j223; assert_in_epsilon(5702.334215195748, worksheet.intermediate_output_j223, 0.002); end
  def test_intermediate_output_k223; assert_in_epsilon(6600.118180684277, worksheet.intermediate_output_k223, 0.002); end
  def test_intermediate_output_l223; assert_in_epsilon(7661.061788650826, worksheet.intermediate_output_l223, 0.002); end
  def test_intermediate_output_m223; assert_in_epsilon(9011.927229784807, worksheet.intermediate_output_m223, 0.002); end
  def test_intermediate_output_n223; assert_in_epsilon(10457.405102010125, worksheet.intermediate_output_n223, 0.002); end
  def test_intermediate_output_o223; assert_in_epsilon(12136.890978482726, worksheet.intermediate_output_o223, 0.002); end
  def test_intermediate_output_p223; assert_in_epsilon(14031.31250417394, worksheet.intermediate_output_p223, 0.002); end
  def test_intermediate_output_d224; assert_equal("Oil", worksheet.intermediate_output_d224); end
  def test_intermediate_output_e224; assert_in_delta(0.0, (worksheet.intermediate_output_e224||0), 0.002); end
  def test_intermediate_output_f224; assert_in_delta(0.0, (worksheet.intermediate_output_f224||0), 0.002); end
  def test_intermediate_output_g224; assert_in_epsilon(508.9372192099334, worksheet.intermediate_output_g224, 0.002); end
  def test_intermediate_output_h224; assert_in_epsilon(594.1906644951619, worksheet.intermediate_output_h224, 0.002); end
  def test_intermediate_output_i224; assert_in_epsilon(717.7914263945646, worksheet.intermediate_output_i224, 0.002); end
  def test_intermediate_output_j224; assert_in_epsilon(835.5126687068351, worksheet.intermediate_output_j224, 0.002); end
  def test_intermediate_output_k224; assert_in_epsilon(954.9845768586109, worksheet.intermediate_output_k224, 0.002); end
  def test_intermediate_output_l224; assert_in_epsilon(1078.0283476148047, worksheet.intermediate_output_l224, 0.002); end
  def test_intermediate_output_m224; assert_in_epsilon(1261.2367635922692, worksheet.intermediate_output_m224, 0.002); end
  def test_intermediate_output_n224; assert_in_epsilon(1391.2624207517285, worksheet.intermediate_output_n224, 0.002); end
  def test_intermediate_output_o224; assert_in_epsilon(1536.6460898889306, worksheet.intermediate_output_o224, 0.002); end
  def test_intermediate_output_p224; assert_in_epsilon(1650.925933481074, worksheet.intermediate_output_p224, 0.002); end
  def test_intermediate_output_d225; assert_equal("Natural gas", worksheet.intermediate_output_d225); end
  def test_intermediate_output_e225; assert_in_delta(0.0, (worksheet.intermediate_output_e225||0), 0.002); end
  def test_intermediate_output_f225; assert_in_delta(0.0, (worksheet.intermediate_output_f225||0), 0.002); end
  def test_intermediate_output_g225; assert_in_epsilon(188.35320749834085, worksheet.intermediate_output_g225, 0.002); end
  def test_intermediate_output_h225; assert_in_epsilon(206.37580864286025, worksheet.intermediate_output_h225, 0.002); end
  def test_intermediate_output_i225; assert_in_epsilon(233.94664054299653, worksheet.intermediate_output_i225, 0.002); end
  def test_intermediate_output_j225; assert_in_epsilon(258.44510880899765, worksheet.intermediate_output_j225, 0.002); end
  def test_intermediate_output_k225; assert_in_epsilon(289.99864927180886, worksheet.intermediate_output_k225, 0.002); end
  def test_intermediate_output_l225; assert_in_epsilon(320.8303703406156, worksheet.intermediate_output_l225, 0.002); end
  def test_intermediate_output_m225; assert_in_epsilon(307.58033173173044, worksheet.intermediate_output_m225, 0.002); end
  def test_intermediate_output_n225; assert_in_epsilon(357.04437318894117, worksheet.intermediate_output_n225, 0.002); end
  def test_intermediate_output_o225; assert_in_epsilon(409.9321531695792, worksheet.intermediate_output_o225, 0.002); end
  def test_intermediate_output_p225; assert_in_epsilon(451.2987794548169, worksheet.intermediate_output_p225, 0.002); end
  def test_intermediate_output_d226; assert_equal("Total Primary Supply", worksheet.intermediate_output_d226); end
  def test_intermediate_output_e226; assert_in_delta(0.0, (worksheet.intermediate_output_e226||0), 0.002); end
  def test_intermediate_output_f226; assert_in_delta(0.0, (worksheet.intermediate_output_f226||0), 0.002); end
  def test_intermediate_output_g226; assert_in_epsilon(4616.65451527199, worksheet.intermediate_output_g226, 0.002); end
  def test_intermediate_output_h226; assert_in_epsilon(5374.613317311991, worksheet.intermediate_output_h226, 0.002); end
  def test_intermediate_output_i226; assert_in_epsilon(6104.291487008967, worksheet.intermediate_output_i226, 0.002); end
  def test_intermediate_output_j226; assert_in_epsilon(6964.289054506621, worksheet.intermediate_output_j226, 0.002); end
  def test_intermediate_output_k226; assert_in_epsilon(8012.548508435504, worksheet.intermediate_output_k226, 0.002); end
  def test_intermediate_output_l226; assert_in_epsilon(9227.37038037953, worksheet.intermediate_output_l226, 0.002); end
  def test_intermediate_output_m226; assert_in_epsilon(10748.197698116914, worksheet.intermediate_output_m226, 0.002); end
  def test_intermediate_output_n226; assert_in_epsilon(12373.169187979162, worksheet.intermediate_output_n226, 0.002); end
  def test_intermediate_output_o226; assert_in_epsilon(14250.930701284862, worksheet.intermediate_output_o226, 0.002); end
  def test_intermediate_output_p226; assert_in_epsilon(16157.218923431601, worksheet.intermediate_output_p226, 0.002); end
  def test_intermediate_output_d227; assert_equal("Imported energy", worksheet.intermediate_output_d227); end
  def test_intermediate_output_f227; assert_in_delta(0.0, (worksheet.intermediate_output_f227||0), 0.002); end
  def test_intermediate_output_g227; assert_in_epsilon(746.1325567082743, worksheet.intermediate_output_g227, 0.002); end
  def test_intermediate_output_h227; assert_in_epsilon(899.5507881380221, worksheet.intermediate_output_h227, 0.002); end
  def test_intermediate_output_i227; assert_in_epsilon(1069.0684299375612, worksheet.intermediate_output_i227, 0.002); end
  def test_intermediate_output_j227; assert_in_epsilon(1222.1212983993528, worksheet.intermediate_output_j227, 0.002); end
  def test_intermediate_output_k227; assert_in_epsilon(1388.7675411304199, worksheet.intermediate_output_k227, 0.002); end
  def test_intermediate_output_l227; assert_in_epsilon(1542.6430329554205, worksheet.intermediate_output_l227, 0.002); end
  def test_intermediate_output_m227; assert_in_epsilon(1712.6014103239997, worksheet.intermediate_output_m227, 0.002); end
  def test_intermediate_output_n227; assert_in_epsilon(1892.0911089406698, worksheet.intermediate_output_n227, 0.002); end
  def test_intermediate_output_o227; assert_in_epsilon(2090.36255805851, worksheet.intermediate_output_o227, 0.002); end
  def test_intermediate_output_p227; assert_in_epsilon(2102.224712935891, worksheet.intermediate_output_p227, 0.002); end
  def test_intermediate_output_d229; assert_equal("Primary demand", worksheet.intermediate_output_d229); end
  def test_intermediate_output_f229; assert_in_delta(0.0, (worksheet.intermediate_output_f229||0), 0.002); end
  def test_intermediate_output_g229; assert_in_epsilon(4889.83569041362, worksheet.intermediate_output_g229, 0.002); end
  def test_intermediate_output_h229; assert_in_epsilon(5644.503751252754, worksheet.intermediate_output_h229, 0.002); end
  def test_intermediate_output_i229; assert_in_epsilon(6383.684409954844, worksheet.intermediate_output_i229, 0.002); end
  def test_intermediate_output_j229; assert_in_epsilon(7264.7528855247165, worksheet.intermediate_output_j229, 0.002); end
  def test_intermediate_output_k229; assert_in_epsilon(8327.213676464511, worksheet.intermediate_output_k229, 0.002); end
  def test_intermediate_output_l229; assert_in_epsilon(9551.860171087068, worksheet.intermediate_output_l229, 0.002); end
  def test_intermediate_output_m229; assert_in_epsilon(11016.469330152553, worksheet.intermediate_output_m229, 0.002); end
  def test_intermediate_output_n229; assert_in_epsilon(12664.563634282986, worksheet.intermediate_output_n229, 0.002); end
  def test_intermediate_output_o229; assert_in_epsilon(14551.838808685596, worksheet.intermediate_output_o229, 0.002); end
  def test_intermediate_output_p229; assert_in_epsilon(16485.10540765256, worksheet.intermediate_output_p229, 0.002); end
  def test_intermediate_output_b232; assert_equal("Electricity, format for web-based interface", worksheet.intermediate_output_b232); end
  def test_intermediate_output_c234; assert_equal("Electricity use by sector", worksheet.intermediate_output_c234); end
  def test_intermediate_output_g234; assert_in_epsilon(2006.0, worksheet.intermediate_output_g234, 0.002); end
  def test_intermediate_output_h234; assert_in_epsilon(2010.0, worksheet.intermediate_output_h234, 0.002); end
  def test_intermediate_output_i234; assert_in_epsilon(2015.0, worksheet.intermediate_output_i234, 0.002); end
  def test_intermediate_output_j234; assert_in_epsilon(2020.0, worksheet.intermediate_output_j234, 0.002); end
  def test_intermediate_output_k234; assert_in_epsilon(2025.0, worksheet.intermediate_output_k234, 0.002); end
  def test_intermediate_output_l234; assert_in_epsilon(2030.0, worksheet.intermediate_output_l234, 0.002); end
  def test_intermediate_output_m234; assert_in_epsilon(2035.0, worksheet.intermediate_output_m234, 0.002); end
  def test_intermediate_output_n234; assert_in_epsilon(2040.0, worksheet.intermediate_output_n234, 0.002); end
  def test_intermediate_output_o234; assert_in_epsilon(2045.0, worksheet.intermediate_output_o234, 0.002); end
  def test_intermediate_output_p234; assert_in_epsilon(2050.0, worksheet.intermediate_output_p234, 0.002); end
  def test_intermediate_output_q234; assert_equal("PJ", worksheet.intermediate_output_q234); end
  def test_intermediate_output_c235; assert_equal("V.01", worksheet.intermediate_output_c235); end
  def test_intermediate_output_c236; assert_equal("Res", worksheet.intermediate_output_c236); end
  def test_intermediate_output_d236; assert_equal("Residential", worksheet.intermediate_output_d236); end
  def test_intermediate_output_g236; assert_in_epsilon(151.361911292313, worksheet.intermediate_output_g236, 0.002); end
  def test_intermediate_output_h236; assert_in_epsilon(168.08779508377663, worksheet.intermediate_output_h236, 0.002); end
  def test_intermediate_output_i236; assert_in_epsilon(191.64077104024435, worksheet.intermediate_output_i236, 0.002); end
  def test_intermediate_output_j236; assert_in_epsilon(215.77902794099816, worksheet.intermediate_output_j236, 0.002); end
  def test_intermediate_output_k236; assert_in_epsilon(240.1296244266293, worksheet.intermediate_output_k236, 0.002); end
  def test_intermediate_output_l236; assert_in_epsilon(263.9346129398193, worksheet.intermediate_output_l236, 0.002); end
  def test_intermediate_output_m236; assert_in_epsilon(291.9179712235335, worksheet.intermediate_output_m236, 0.002); end
  def test_intermediate_output_n236; assert_in_epsilon(319.3355462281447, worksheet.intermediate_output_n236, 0.002); end
  def test_intermediate_output_o236; assert_in_epsilon(351.7416100988938, worksheet.intermediate_output_o236, 0.002); end
  def test_intermediate_output_p236; assert_in_epsilon(382.9655471912064, worksheet.intermediate_output_p236, 0.002); end
  def test_intermediate_output_c237; assert_equal("Com", worksheet.intermediate_output_c237); end
  def test_intermediate_output_d237; assert_equal("Commercial", worksheet.intermediate_output_d237); end
  def test_intermediate_output_g237; assert_in_epsilon(107.5932660569133, worksheet.intermediate_output_g237, 0.002); end
  def test_intermediate_output_h237; assert_in_epsilon(118.70825349227917, worksheet.intermediate_output_h237, 0.002); end
  def test_intermediate_output_i237; assert_in_epsilon(133.00823931079958, worksheet.intermediate_output_i237, 0.002); end
  def test_intermediate_output_j237; assert_in_epsilon(151.09104222829083, worksheet.intermediate_output_j237, 0.002); end
  def test_intermediate_output_k237; assert_in_epsilon(172.71831596025368, worksheet.intermediate_output_k237, 0.002); end
  def test_intermediate_output_l237; assert_in_epsilon(199.5101440417422, worksheet.intermediate_output_l237, 0.002); end
  def test_intermediate_output_m237; assert_in_epsilon(234.3304267077057, worksheet.intermediate_output_m237, 0.002); end
  def test_intermediate_output_n237; assert_in_epsilon(272.87145977365105, worksheet.intermediate_output_n237, 0.002); end
  def test_intermediate_output_o237; assert_in_epsilon(313.23016739263426, worksheet.intermediate_output_o237, 0.002); end
  def test_intermediate_output_p237; assert_in_epsilon(366.36400390357056, worksheet.intermediate_output_p237, 0.002); end
  def test_intermediate_output_c238; assert_equal("Ind", worksheet.intermediate_output_c238); end
  def test_intermediate_output_d238; assert_equal("Industry", worksheet.intermediate_output_d238); end
  def test_intermediate_output_g238; assert_in_epsilon(420.195789614721, worksheet.intermediate_output_g238, 0.002); end
  def test_intermediate_output_h238; assert_in_epsilon(490.24315031241656, worksheet.intermediate_output_h238, 0.002); end
  def test_intermediate_output_i238; assert_in_epsilon(596.3425470061676, worksheet.intermediate_output_i238, 0.002); end
  def test_intermediate_output_j238; assert_in_epsilon(733.829151378504, worksheet.intermediate_output_j238, 0.002); end
  def test_intermediate_output_k238; assert_in_epsilon(900.9026774158084, worksheet.intermediate_output_k238, 0.002); end
  def test_intermediate_output_l238; assert_in_epsilon(1114.8558375058033, worksheet.intermediate_output_l238, 0.002); end
  def test_intermediate_output_m238; assert_in_epsilon(1383.4784848808067, worksheet.intermediate_output_m238, 0.002); end
  def test_intermediate_output_n238; assert_in_epsilon(1685.4158194265008, worksheet.intermediate_output_n238, 0.002); end
  def test_intermediate_output_o238; assert_in_epsilon(2003.7065605365333, worksheet.intermediate_output_o238, 0.002); end
  def test_intermediate_output_p238; assert_in_epsilon(2348.810650048444, worksheet.intermediate_output_p238, 0.002); end
  def test_intermediate_output_c239; assert_equal("Tra", worksheet.intermediate_output_c239); end
  def test_intermediate_output_d239; assert_equal("Transport", worksheet.intermediate_output_d239); end
  def test_intermediate_output_g239; assert_in_epsilon(8.202697987420844, worksheet.intermediate_output_g239, 0.002); end
  def test_intermediate_output_h239; assert_in_epsilon(8.090339552907329, worksheet.intermediate_output_h239, 0.002); end
  def test_intermediate_output_i239; assert_in_epsilon(8.680292601369894, worksheet.intermediate_output_i239, 0.002); end
  def test_intermediate_output_j239; assert_in_epsilon(9.367306511536203, worksheet.intermediate_output_j239, 0.002); end
  def test_intermediate_output_k239; assert_in_epsilon(10.252033305943982, worksheet.intermediate_output_k239, 0.002); end
  def test_intermediate_output_l239; assert_in_epsilon(11.341035798164942, worksheet.intermediate_output_l239, 0.002); end
  def test_intermediate_output_m239; assert_in_epsilon(12.493097910381955, worksheet.intermediate_output_m239, 0.002); end
  def test_intermediate_output_n239; assert_in_epsilon(13.774546172987868, worksheet.intermediate_output_n239, 0.002); end
  def test_intermediate_output_o239; assert_in_epsilon(15.133348069654506, worksheet.intermediate_output_o239, 0.002); end
  def test_intermediate_output_p239; assert_in_epsilon(16.619751024205524, worksheet.intermediate_output_p239, 0.002); end
  def test_intermediate_output_c240; assert_equal("Agl", worksheet.intermediate_output_c240); end
  def test_intermediate_output_d240; assert_equal("Agriculture and Land use", worksheet.intermediate_output_d240); end
  def test_intermediate_output_g240; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_g240, 0.002); end
  def test_intermediate_output_h240; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_h240, 0.002); end
  def test_intermediate_output_i240; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_i240, 0.002); end
  def test_intermediate_output_j240; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_j240, 0.002); end
  def test_intermediate_output_k240; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_k240, 0.002); end
  def test_intermediate_output_l240; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_l240, 0.002); end
  def test_intermediate_output_m240; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_m240, 0.002); end
  def test_intermediate_output_n240; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_n240, 0.002); end
  def test_intermediate_output_o240; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_o240, 0.002); end
  def test_intermediate_output_p240; assert_in_epsilon(20.760772499999998, worksheet.intermediate_output_p240, 0.002); end
  def test_intermediate_output_c241; assert_equal("Fos", worksheet.intermediate_output_c241); end
  def test_intermediate_output_d241; assert_equal("Fossil fuel production", worksheet.intermediate_output_d241); end
  def test_intermediate_output_g241; assert_in_epsilon(26.716009598057816, worksheet.intermediate_output_g241, 0.002); end
  def test_intermediate_output_h241; assert_in_epsilon(27.209884621673957, worksheet.intermediate_output_h241, 0.002); end
  def test_intermediate_output_i241; assert_in_epsilon(27.92133094854163, worksheet.intermediate_output_i241, 0.002); end
  def test_intermediate_output_j241; assert_in_epsilon(28.601434993044137, worksheet.intermediate_output_j241, 0.002); end
  def test_intermediate_output_k241; assert_in_epsilon(27.854239367724432, worksheet.intermediate_output_k241, 0.002); end
  def test_intermediate_output_l241; assert_in_epsilon(26.725568594129303, worksheet.intermediate_output_l241, 0.002); end
  def test_intermediate_output_m241; assert_in_epsilon(21.574517067188058, worksheet.intermediate_output_m241, 0.002); end
  def test_intermediate_output_n241; assert_in_epsilon(21.574517067188058, worksheet.intermediate_output_n241, 0.002); end
  def test_intermediate_output_o241; assert_in_epsilon(19.695173750777297, worksheet.intermediate_output_o241, 0.002); end
  def test_intermediate_output_p241; assert_in_epsilon(19.695173750777297, worksheet.intermediate_output_p241, 0.002); end
  def test_intermediate_output_d242; assert_equal("Total PJ", worksheet.intermediate_output_d242); end
  def test_intermediate_output_g242; assert_in_epsilon(734.8304470494259, worksheet.intermediate_output_g242, 0.002); end
  def test_intermediate_output_h242; assert_in_epsilon(833.1001955630537, worksheet.intermediate_output_h242, 0.002); end
  def test_intermediate_output_i242; assert_in_epsilon(978.353953407123, worksheet.intermediate_output_i242, 0.002); end
  def test_intermediate_output_j242; assert_in_epsilon(1159.4287355523736, worksheet.intermediate_output_j242, 0.002); end
  def test_intermediate_output_k242; assert_in_epsilon(1372.61766297636, worksheet.intermediate_output_k242, 0.002); end
  def test_intermediate_output_l242; assert_in_epsilon(1637.1279713796591, worksheet.intermediate_output_l242, 0.002); end
  def test_intermediate_output_m242; assert_in_epsilon(1964.555270289616, worksheet.intermediate_output_m242, 0.002); end
  def test_intermediate_output_n242; assert_in_epsilon(2333.732661168472, worksheet.intermediate_output_n242, 0.002); end
  def test_intermediate_output_o242; assert_in_epsilon(2724.267632348493, worksheet.intermediate_output_o242, 0.002); end
  def test_intermediate_output_p242; assert_in_epsilon(3155.215898418204, worksheet.intermediate_output_p242, 0.002); end
  def test_intermediate_output_d243; assert_equal("GWh", worksheet.intermediate_output_d243); end
  def test_intermediate_output_g243; assert_in_epsilon(204119.56862484053, worksheet.intermediate_output_g243, 0.002); end
  def test_intermediate_output_h243; assert_in_epsilon(231416.72098973714, worksheet.intermediate_output_h243, 0.002); end
  def test_intermediate_output_i243; assert_in_epsilon(271764.98705753416, worksheet.intermediate_output_i243, 0.002); end
  def test_intermediate_output_j243; assert_in_epsilon(322063.5376534371, worksheet.intermediate_output_j243, 0.002); end
  def test_intermediate_output_k243; assert_in_epsilon(381282.6841601, worksheet.intermediate_output_k243, 0.002); end
  def test_intermediate_output_l243; assert_in_epsilon(454757.7698276831, worksheet.intermediate_output_l243, 0.002); end
  def test_intermediate_output_m243; assert_in_epsilon(545709.7973026711, worksheet.intermediate_output_m243, 0.002); end
  def test_intermediate_output_n243; assert_in_epsilon(648259.0725467978, worksheet.intermediate_output_n243, 0.002); end
  def test_intermediate_output_o243; assert_in_epsilon(756741.0089856925, worksheet.intermediate_output_o243, 0.002); end
  def test_intermediate_output_p243; assert_in_epsilon(876448.8606717233, worksheet.intermediate_output_p243, 0.002); end
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
  def test_flows_c6; assert_equal("Coal reserves", worksheet.flows_c6); end
  def test_flows_d6; assert_equal("FOS.SUP", worksheet.flows_d6); end
  def test_flows_e6; assert_equal("Coal", worksheet.flows_e6); end
  def test_flows_f6; assert_equal("Q.01", worksheet.flows_f6); end
  def test_flows_g6; assert_in_epsilon(3828.2267258574393, worksheet.flows_g6, 0.002); end
  def test_flows_h6; assert_in_epsilon(4449.7199049898145, worksheet.flows_h6, 0.002); end
  def test_flows_i6; assert_in_epsilon(4998.970045931257, worksheet.flows_i6, 0.002); end
  def test_flows_j6; assert_in_epsilon(5702.334215195748, worksheet.flows_j6, 0.002); end
  def test_flows_k6; assert_in_epsilon(6600.118180684277, worksheet.flows_k6, 0.002); end
  def test_flows_l6; assert_in_epsilon(7661.061788650826, worksheet.flows_l6, 0.002); end
  def test_flows_m6; assert_in_epsilon(9011.927229784807, worksheet.flows_m6, 0.002); end
  def test_flows_n6; assert_in_epsilon(10457.405102010125, worksheet.flows_n6, 0.002); end
  def test_flows_o6; assert_in_epsilon(12136.890978482726, worksheet.flows_o6, 0.002); end
  def test_flows_p6; assert_in_epsilon(14031.31250417394, worksheet.flows_p6, 0.002); end
  def test_flows_v6; assert_equal("Coal reserves", worksheet.flows_v6); end
  def test_flows_w6; assert_in_epsilon(3828.2267258574393, worksheet.flows_w6, 0.002); end
  def test_flows_x6; assert_in_epsilon(4449.7199049898145, worksheet.flows_x6, 0.002); end
  def test_flows_y6; assert_in_epsilon(4998.970045931257, worksheet.flows_y6, 0.002); end
  def test_flows_z6; assert_in_epsilon(5702.334215195748, worksheet.flows_z6, 0.002); end
  def test_flows_aa6; assert_in_epsilon(6600.118180684277, worksheet.flows_aa6, 0.002); end
  def test_flows_ab6; assert_in_epsilon(7661.061788650826, worksheet.flows_ab6, 0.002); end
  def test_flows_ac6; assert_in_epsilon(9011.927229784807, worksheet.flows_ac6, 0.002); end
  def test_flows_ad6; assert_in_epsilon(10457.405102010125, worksheet.flows_ad6, 0.002); end
  def test_flows_ae6; assert_in_epsilon(12136.890978482726, worksheet.flows_ae6, 0.002); end
  def test_flows_af6; assert_in_epsilon(14031.31250417394, worksheet.flows_af6, 0.002); end
  def test_flows_ah6; assert_in_delta(0.0, (worksheet.flows_ah6||0), 0.002); end
  def test_flows_ai6; assert_in_delta(0.0, (worksheet.flows_ai6||0), 0.002); end
  def test_flows_aj6; assert_in_delta(0.0, (worksheet.flows_aj6||0), 0.002); end
  def test_flows_ak6; assert_in_delta(0.0, (worksheet.flows_ak6||0), 0.002); end
  def test_flows_al6; assert_in_delta(0.0, (worksheet.flows_al6||0), 0.002); end
  def test_flows_am6; assert_in_delta(0.0, (worksheet.flows_am6||0), 0.002); end
  def test_flows_an6; assert_in_delta(0.0, (worksheet.flows_an6||0), 0.002); end
  def test_flows_ao6; assert_in_delta(0.0, (worksheet.flows_ao6||0), 0.002); end
  def test_flows_ap6; assert_in_delta(0.0, (worksheet.flows_ap6||0), 0.002); end
  def test_flows_aq6; assert_in_delta(0.0, (worksheet.flows_aq6||0), 0.002); end
  def test_flows_as6; assert_in_epsilon(3828.2267258574393, worksheet.flows_as6, 0.002); end
  def test_flows_at6; assert_in_epsilon(4449.7199049898145, worksheet.flows_at6, 0.002); end
  def test_flows_au6; assert_in_epsilon(4998.970045931257, worksheet.flows_au6, 0.002); end
  def test_flows_av6; assert_in_epsilon(5702.334215195748, worksheet.flows_av6, 0.002); end
  def test_flows_aw6; assert_in_epsilon(6600.118180684277, worksheet.flows_aw6, 0.002); end
  def test_flows_ax6; assert_in_epsilon(7661.061788650826, worksheet.flows_ax6, 0.002); end
  def test_flows_ay6; assert_in_epsilon(9011.927229784807, worksheet.flows_ay6, 0.002); end
  def test_flows_az6; assert_in_epsilon(10457.405102010125, worksheet.flows_az6, 0.002); end
  def test_flows_ba6; assert_in_epsilon(12136.890978482726, worksheet.flows_ba6, 0.002); end
  def test_flows_bb6; assert_in_epsilon(14031.31250417394, worksheet.flows_bb6, 0.002); end
  def test_flows_c7; assert_equal("Oil imports", worksheet.flows_c7); end
  def test_flows_e7; assert_equal("Oil", worksheet.flows_e7); end
  def test_flows_g7; assert_in_epsilon(508.9372192099334, worksheet.flows_g7, 0.002); end
  def test_flows_h7; assert_in_epsilon(594.1906644951619, worksheet.flows_h7, 0.002); end
  def test_flows_i7; assert_in_epsilon(717.7914263945646, worksheet.flows_i7, 0.002); end
  def test_flows_j7; assert_in_epsilon(835.5126687068351, worksheet.flows_j7, 0.002); end
  def test_flows_k7; assert_in_epsilon(954.9845768586109, worksheet.flows_k7, 0.002); end
  def test_flows_l7; assert_in_epsilon(1078.0283476148047, worksheet.flows_l7, 0.002); end
  def test_flows_m7; assert_in_epsilon(1261.2367635922692, worksheet.flows_m7, 0.002); end
  def test_flows_n7; assert_in_epsilon(1391.2624207517285, worksheet.flows_n7, 0.002); end
  def test_flows_o7; assert_in_epsilon(1536.6460898889306, worksheet.flows_o7, 0.002); end
  def test_flows_p7; assert_in_epsilon(1650.925933481074, worksheet.flows_p7, 0.002); end
  def test_flows_v7; assert_equal("Oil imports", worksheet.flows_v7); end
  def test_flows_w7; assert_in_epsilon(508.9372192099334, worksheet.flows_w7, 0.002); end
  def test_flows_x7; assert_in_epsilon(594.1906644951619, worksheet.flows_x7, 0.002); end
  def test_flows_y7; assert_in_epsilon(717.7914263945646, worksheet.flows_y7, 0.002); end
  def test_flows_z7; assert_in_epsilon(835.5126687068351, worksheet.flows_z7, 0.002); end
  def test_flows_aa7; assert_in_epsilon(954.9845768586109, worksheet.flows_aa7, 0.002); end
  def test_flows_ab7; assert_in_epsilon(1078.0283476148047, worksheet.flows_ab7, 0.002); end
  def test_flows_ac7; assert_in_epsilon(1261.2367635922692, worksheet.flows_ac7, 0.002); end
  def test_flows_ad7; assert_in_epsilon(1391.2624207517285, worksheet.flows_ad7, 0.002); end
  def test_flows_ae7; assert_in_epsilon(1536.6460898889306, worksheet.flows_ae7, 0.002); end
  def test_flows_af7; assert_in_epsilon(1650.925933481074, worksheet.flows_af7, 0.002); end
  def test_flows_ah7; assert_in_delta(0.0, (worksheet.flows_ah7||0), 0.002); end
  def test_flows_ai7; assert_in_delta(0.0, (worksheet.flows_ai7||0), 0.002); end
  def test_flows_aj7; assert_in_delta(0.0, (worksheet.flows_aj7||0), 0.002); end
  def test_flows_ak7; assert_in_delta(0.0, (worksheet.flows_ak7||0), 0.002); end
  def test_flows_al7; assert_in_delta(0.0, (worksheet.flows_al7||0), 0.002); end
  def test_flows_am7; assert_in_delta(0.0, (worksheet.flows_am7||0), 0.002); end
  def test_flows_an7; assert_in_delta(0.0, (worksheet.flows_an7||0), 0.002); end
  def test_flows_ao7; assert_in_delta(0.0, (worksheet.flows_ao7||0), 0.002); end
  def test_flows_ap7; assert_in_delta(0.0, (worksheet.flows_ap7||0), 0.002); end
  def test_flows_aq7; assert_in_delta(0.0, (worksheet.flows_aq7||0), 0.002); end
  def test_flows_as7; assert_in_epsilon(508.9372192099334, worksheet.flows_as7, 0.002); end
  def test_flows_at7; assert_in_epsilon(594.1906644951619, worksheet.flows_at7, 0.002); end
  def test_flows_au7; assert_in_epsilon(717.7914263945646, worksheet.flows_au7, 0.002); end
  def test_flows_av7; assert_in_epsilon(835.5126687068351, worksheet.flows_av7, 0.002); end
  def test_flows_aw7; assert_in_epsilon(954.9845768586109, worksheet.flows_aw7, 0.002); end
  def test_flows_ax7; assert_in_epsilon(1078.0283476148047, worksheet.flows_ax7, 0.002); end
  def test_flows_ay7; assert_in_epsilon(1261.2367635922692, worksheet.flows_ay7, 0.002); end
  def test_flows_az7; assert_in_epsilon(1391.2624207517285, worksheet.flows_az7, 0.002); end
  def test_flows_ba7; assert_in_epsilon(1536.6460898889306, worksheet.flows_ba7, 0.002); end
  def test_flows_bb7; assert_in_epsilon(1650.925933481074, worksheet.flows_bb7, 0.002); end
  def test_flows_c8; assert_equal("Gas reserves", worksheet.flows_c8); end
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
  def test_flows_v8; assert_equal("Gas reserves", worksheet.flows_v8); end
  def test_flows_w8; assert_in_epsilon(61.214999999999996, worksheet.flows_w8, 0.002); end
  def test_flows_x8; assert_in_epsilon(44.8, worksheet.flows_x8, 0.002); end
  def test_flows_y8; assert_in_epsilon(26.453952000000008, worksheet.flows_y8, 0.002); end
  def test_flows_z8; assert_in_epsilon(15.62079411648001, worksheet.flows_z8, 0.002); end
  def test_flows_aa8; assert_in_delta(0.0, (worksheet.flows_aa8||0), 0.002); end
  def test_flows_ab8; assert_in_delta(0.0, (worksheet.flows_ab8||0), 0.002); end
  def test_flows_ac8; assert_in_delta(0.0, (worksheet.flows_ac8||0), 0.002); end
  def test_flows_ad8; assert_in_delta(0.0, (worksheet.flows_ad8||0), 0.002); end
  def test_flows_ae8; assert_in_delta(0.0, (worksheet.flows_ae8||0), 0.002); end
  def test_flows_af8; assert_in_delta(0.0, (worksheet.flows_af8||0), 0.002); end
  def test_flows_ah8; assert_in_delta(0.0, (worksheet.flows_ah8||0), 0.002); end
  def test_flows_ai8; assert_in_delta(0.0, (worksheet.flows_ai8||0), 0.002); end
  def test_flows_aj8; assert_in_delta(0.0, (worksheet.flows_aj8||0), 0.002); end
  def test_flows_ak8; assert_in_delta(0.0, (worksheet.flows_ak8||0), 0.002); end
  def test_flows_al8; assert_in_delta(0.0, (worksheet.flows_al8||0), 0.002); end
  def test_flows_am8; assert_in_delta(0.0, (worksheet.flows_am8||0), 0.002); end
  def test_flows_an8; assert_in_delta(0.0, (worksheet.flows_an8||0), 0.002); end
  def test_flows_ao8; assert_in_delta(0.0, (worksheet.flows_ao8||0), 0.002); end
  def test_flows_ap8; assert_in_delta(0.0, (worksheet.flows_ap8||0), 0.002); end
  def test_flows_aq8; assert_in_delta(0.0, (worksheet.flows_aq8||0), 0.002); end
  def test_flows_as8; assert_in_epsilon(61.214999999999996, worksheet.flows_as8, 0.002); end
  def test_flows_at8; assert_in_epsilon(44.8, worksheet.flows_at8, 0.002); end
  def test_flows_au8; assert_in_epsilon(26.453952000000008, worksheet.flows_au8, 0.002); end
  def test_flows_av8; assert_in_epsilon(15.62079411648001, worksheet.flows_av8, 0.002); end
  def test_flows_aw8; assert_in_delta(0.0, (worksheet.flows_aw8||0), 0.002); end
  def test_flows_ax8; assert_in_delta(0.0, (worksheet.flows_ax8||0), 0.002); end
  def test_flows_ay8; assert_in_delta(0.0, (worksheet.flows_ay8||0), 0.002); end
  def test_flows_az8; assert_in_delta(0.0, (worksheet.flows_az8||0), 0.002); end
  def test_flows_ba8; assert_in_delta(0.0, (worksheet.flows_ba8||0), 0.002); end
  def test_flows_bb8; assert_in_delta(0.0, (worksheet.flows_bb8||0), 0.002); end
  def test_flows_c9; assert_equal("Gas imports", worksheet.flows_c9); end
  def test_flows_d9; assert_equal("FOS.SUP", worksheet.flows_d9); end
  def test_flows_e9; assert_equal("Gas", worksheet.flows_e9); end
  def test_flows_f9; assert_equal("Y.06", worksheet.flows_f9); end
  def test_flows_g9; assert_in_epsilon(127.13820749834085, worksheet.flows_g9, 0.002); end
  def test_flows_h9; assert_in_epsilon(161.5758086428603, worksheet.flows_h9, 0.002); end
  def test_flows_i9; assert_in_epsilon(202.25189431401986, worksheet.flows_i9, 0.002); end
  def test_flows_j9; assert_in_epsilon(234.6829142568757, worksheet.flows_j9, 0.002); end
  def test_flows_k9; assert_in_epsilon(280.9865211385425, worksheet.flows_k9, 0.002); end
  def test_flows_l9; assert_in_epsilon(310.75381770431454, worksheet.flows_l9, 0.002); end
  def test_flows_m9; assert_in_epsilon(296.2017152483964, worksheet.flows_m9, 0.002); end
  def test_flows_n9; assert_in_epsilon(344.43557443364165, worksheet.flows_n9, 0.002); end
  def test_flows_o9; assert_in_epsilon(395.7234951984109, worksheet.flows_o9, 0.002); end
  def test_flows_p9; assert_in_epsilon(440.82223310770314, worksheet.flows_p9, 0.002); end
  def test_flows_v9; assert_equal("Gas imports", worksheet.flows_v9); end
  def test_flows_w9; assert_in_epsilon(127.13820749834085, worksheet.flows_w9, 0.002); end
  def test_flows_x9; assert_in_epsilon(161.5758086428603, worksheet.flows_x9, 0.002); end
  def test_flows_y9; assert_in_epsilon(202.25189431401986, worksheet.flows_y9, 0.002); end
  def test_flows_z9; assert_in_epsilon(234.6829142568757, worksheet.flows_z9, 0.002); end
  def test_flows_aa9; assert_in_epsilon(280.9865211385425, worksheet.flows_aa9, 0.002); end
  def test_flows_ab9; assert_in_epsilon(310.75381770431454, worksheet.flows_ab9, 0.002); end
  def test_flows_ac9; assert_in_epsilon(296.2017152483964, worksheet.flows_ac9, 0.002); end
  def test_flows_ad9; assert_in_epsilon(344.43557443364165, worksheet.flows_ad9, 0.002); end
  def test_flows_ae9; assert_in_epsilon(395.7234951984109, worksheet.flows_ae9, 0.002); end
  def test_flows_af9; assert_in_epsilon(440.82223310770314, worksheet.flows_af9, 0.002); end
  def test_flows_ah9; assert_in_delta(0.0, (worksheet.flows_ah9||0), 0.002); end
  def test_flows_ai9; assert_in_delta(0.0, (worksheet.flows_ai9||0), 0.002); end
  def test_flows_aj9; assert_in_delta(0.0, (worksheet.flows_aj9||0), 0.002); end
  def test_flows_ak9; assert_in_delta(0.0, (worksheet.flows_ak9||0), 0.002); end
  def test_flows_al9; assert_in_delta(0.0, (worksheet.flows_al9||0), 0.002); end
  def test_flows_am9; assert_in_delta(0.0, (worksheet.flows_am9||0), 0.002); end
  def test_flows_an9; assert_in_delta(0.0, (worksheet.flows_an9||0), 0.002); end
  def test_flows_ao9; assert_in_delta(0.0, (worksheet.flows_ao9||0), 0.002); end
  def test_flows_ap9; assert_in_delta(0.0, (worksheet.flows_ap9||0), 0.002); end
  def test_flows_aq9; assert_in_delta(0.0, (worksheet.flows_aq9||0), 0.002); end
  def test_flows_as9; assert_in_epsilon(127.13820749834085, worksheet.flows_as9, 0.002); end
  def test_flows_at9; assert_in_epsilon(161.5758086428603, worksheet.flows_at9, 0.002); end
  def test_flows_au9; assert_in_epsilon(202.25189431401986, worksheet.flows_au9, 0.002); end
  def test_flows_av9; assert_in_epsilon(234.6829142568757, worksheet.flows_av9, 0.002); end
  def test_flows_aw9; assert_in_epsilon(280.9865211385425, worksheet.flows_aw9, 0.002); end
  def test_flows_ax9; assert_in_epsilon(310.75381770431454, worksheet.flows_ax9, 0.002); end
  def test_flows_ay9; assert_in_epsilon(296.2017152483964, worksheet.flows_ay9, 0.002); end
  def test_flows_az9; assert_in_epsilon(344.43557443364165, worksheet.flows_az9, 0.002); end
  def test_flows_ba9; assert_in_epsilon(395.7234951984109, worksheet.flows_ba9, 0.002); end
  def test_flows_bb9; assert_in_epsilon(440.82223310770314, worksheet.flows_bb9, 0.002); end
  def test_flows_c10; assert_equal("Agricultural 'waste'", worksheet.flows_c10); end
  def test_flows_d10; assert_equal("BIO.SUP", worksheet.flows_d10); end
  def test_flows_e10; assert_equal("Bio-conversion", worksheet.flows_e10); end
  def test_flows_f10; assert_equal("V.09", worksheet.flows_f10); end
  def test_flows_g10; assert_in_delta(0.3804646501653157, worksheet.flows_g10, 0.002); end
  def test_flows_h10; assert_in_delta(0.8835713052110845, worksheet.flows_h10, 0.002); end
  def test_flows_i10; assert_in_epsilon(1.5632194717481103, worksheet.flows_i10, 0.002); end
  def test_flows_j10; assert_in_epsilon(2.4457039803768206, worksheet.flows_j10, 0.002); end
  def test_flows_k10; assert_in_epsilon(3.410435900125896, worksheet.flows_k10, 0.002); end
  def test_flows_l10; assert_in_epsilon(4.53910656770522, worksheet.flows_l10, 0.002); end
  def test_flows_m10; assert_in_epsilon(5.700026490969513, worksheet.flows_m10, 0.002); end
  def test_flows_n10; assert_in_epsilon(6.9782737495573235, worksheet.flows_n10, 0.002); end
  def test_flows_o10; assert_in_epsilon(8.272687685777665, worksheet.flows_o10, 0.002); end
  def test_flows_p10; assert_in_epsilon(9.657627703238015, worksheet.flows_p10, 0.002); end
  def test_flows_v10; assert_equal("Agricultural 'waste'", worksheet.flows_v10); end
  def test_flows_w10; assert_in_delta(0.525070893325505, worksheet.flows_w10, 0.002); end
  def test_flows_x10; assert_in_epsilon(1.3257132557880162, worksheet.flows_x10, 0.002); end
  def test_flows_y10; assert_in_epsilon(3.624401018732408, worksheet.flows_y10, 0.002); end
  def test_flows_z10; assert_in_epsilon(6.430776877216059, worksheet.flows_z10, 0.002); end
  def test_flows_aa10; assert_in_epsilon(9.740629225238404, worksheet.flows_aa10, 0.002); end
  def test_flows_ab10; assert_in_epsilon(13.609522925918563, worksheet.flows_ab10, 0.002); end
  def test_flows_ac10; assert_in_epsilon(17.921442367493455, worksheet.flows_ac10, 0.002); end
  def test_flows_ad10; assert_in_epsilon(22.825239902386247, worksheet.flows_ad10, 0.002); end
  def test_flows_ae10; assert_in_epsilon(28.241380447929952, worksheet.flows_ae10, 0.002); end
  def test_flows_af10; assert_in_epsilon(34.25932468316141, worksheet.flows_af10, 0.002); end
  def test_flows_ah10; assert_in_delta(0.0, (worksheet.flows_ah10||0), 0.002); end
  def test_flows_ai10; assert_in_delta(0.0, (worksheet.flows_ai10||0), 0.002); end
  def test_flows_aj10; assert_in_delta(0.0, (worksheet.flows_aj10||0), 0.002); end
  def test_flows_ak10; assert_in_delta(0.0, (worksheet.flows_ak10||0), 0.002); end
  def test_flows_al10; assert_in_delta(0.0, (worksheet.flows_al10||0), 0.002); end
  def test_flows_am10; assert_in_delta(0.0, (worksheet.flows_am10||0), 0.002); end
  def test_flows_an10; assert_in_delta(0.0, (worksheet.flows_an10||0), 0.002); end
  def test_flows_ao10; assert_in_delta(0.0, (worksheet.flows_ao10||0), 0.002); end
  def test_flows_ap10; assert_in_delta(0.0, (worksheet.flows_ap10||0), 0.002); end
  def test_flows_aq10; assert_in_delta(0.0, (worksheet.flows_aq10||0), 0.002); end
  def test_flows_as10; assert_in_delta(0.525070893325505, worksheet.flows_as10, 0.002); end
  def test_flows_at10; assert_in_epsilon(1.3257132557880162, worksheet.flows_at10, 0.002); end
  def test_flows_au10; assert_in_epsilon(3.624401018732408, worksheet.flows_au10, 0.002); end
  def test_flows_av10; assert_in_epsilon(6.430776877216059, worksheet.flows_av10, 0.002); end
  def test_flows_aw10; assert_in_epsilon(9.740629225238404, worksheet.flows_aw10, 0.002); end
  def test_flows_ax10; assert_in_epsilon(13.609522925918563, worksheet.flows_ax10, 0.002); end
  def test_flows_ay10; assert_in_epsilon(17.921442367493455, worksheet.flows_ay10, 0.002); end
  def test_flows_az10; assert_in_epsilon(22.825239902386247, worksheet.flows_az10, 0.002); end
  def test_flows_ba10; assert_in_epsilon(28.241380447929952, worksheet.flows_ba10, 0.002); end
  def test_flows_bb10; assert_in_epsilon(34.25932468316141, worksheet.flows_bb10, 0.002); end
  def test_flows_c11; assert_equal("Agricultural 'waste'", worksheet.flows_c11); end
  def test_flows_d11; assert_equal("BIO.SUP", worksheet.flows_d11); end
  def test_flows_e11; assert_equal("Bio-conversion", worksheet.flows_e11); end
  def test_flows_f11; assert_equal("V.10", worksheet.flows_f11); end
  def test_flows_g11; assert_in_delta(0.0, (worksheet.flows_g11||0), 0.002); end
  def test_flows_h11; assert_in_delta(0.0, (worksheet.flows_h11||0), 0.002); end
  def test_flows_i11; assert_in_epsilon(1.1957399999999956, worksheet.flows_i11, 0.002); end
  def test_flows_j11; assert_in_epsilon(2.3970349416528456, worksheet.flows_j11, 0.002); end
  def test_flows_k11; assert_in_epsilon(3.6921515596456635, worksheet.flows_k11, 0.002); end
  def test_flows_l11; assert_in_epsilon(5.006338109491026, worksheet.flows_l11, 0.002); end
  def test_flows_m11; assert_in_epsilon(6.3088393389499, worksheet.flows_m11, 0.002); end
  def test_flows_n11; assert_in_epsilon(7.640071601323377, worksheet.flows_n11, 0.002); end
  def test_flows_o11; assert_in_epsilon(8.995872714673606, worksheet.flows_o11, 0.002); end
  def test_flows_p11; assert_in_epsilon(10.382608665611675, worksheet.flows_p11, 0.002); end
  def test_flows_v11; assert_equal("Bio-conversion", worksheet.flows_v11); end
  def test_flows_w11; assert_in_delta(0.34241818514878414, worksheet.flows_w11, 0.002); end
  def test_flows_x11; assert_in_delta(0.7952141746899761, worksheet.flows_x11, 0.002); end
  def test_flows_y11; assert_in_epsilon(1.4068975245732993, worksheet.flows_y11, 0.002); end
  def test_flows_z11; assert_in_epsilon(2.2011335823391387, worksheet.flows_z11, 0.002); end
  def test_flows_aa11; assert_in_epsilon(3.0693923101133067, worksheet.flows_aa11, 0.002); end
  def test_flows_ab11; assert_in_epsilon(4.085195910934698, worksheet.flows_ab11, 0.002); end
  def test_flows_ac11; assert_in_epsilon(5.130023841872562, worksheet.flows_ac11, 0.002); end
  def test_flows_ad11; assert_in_epsilon(6.280446374601591, worksheet.flows_ad11, 0.002); end
  def test_flows_ae11; assert_in_epsilon(7.445418917199899, worksheet.flows_ae11, 0.002); end
  def test_flows_af11; assert_in_epsilon(8.691864932914214, worksheet.flows_af11, 0.002); end
  def test_flows_as11; assert_in_delta(0.34241818514878414, worksheet.flows_as11, 0.002); end
  def test_flows_at11; assert_in_delta(0.7952141746899761, worksheet.flows_at11, 0.002); end
  def test_flows_au11; assert_in_epsilon(1.4068975245732993, worksheet.flows_au11, 0.002); end
  def test_flows_av11; assert_in_epsilon(2.2011335823391387, worksheet.flows_av11, 0.002); end
  def test_flows_aw11; assert_in_epsilon(3.0693923101133067, worksheet.flows_aw11, 0.002); end
  def test_flows_ax11; assert_in_epsilon(4.085195910934698, worksheet.flows_ax11, 0.002); end
  def test_flows_ay11; assert_in_epsilon(5.130023841872562, worksheet.flows_ay11, 0.002); end
  def test_flows_az11; assert_in_epsilon(6.280446374601591, worksheet.flows_az11, 0.002); end
  def test_flows_ba11; assert_in_epsilon(7.445418917199899, worksheet.flows_ba11, 0.002); end
  def test_flows_bb11; assert_in_epsilon(8.691864932914214, worksheet.flows_bb11, 0.002); end
  def test_flows_c12; assert_equal("Agricultural 'waste'", worksheet.flows_c12); end
  def test_flows_d12; assert_equal("BIO.SUP", worksheet.flows_d12); end
  def test_flows_e12; assert_equal("Bio-conversion", worksheet.flows_e12); end
  def test_flows_f12; assert_equal("V.15", worksheet.flows_f12); end
  def test_flows_g12; assert_in_delta(0.1446062431601893, worksheet.flows_g12, 0.002); end
  def test_flows_h12; assert_in_delta(0.44214195057693173, worksheet.flows_h12, 0.002); end
  def test_flows_i12; assert_in_delta(0.8654415469843019, worksheet.flows_i12, 0.002); end
  def test_flows_j12; assert_in_epsilon(1.5880379551863928, worksheet.flows_j12, 0.002); end
  def test_flows_k12; assert_in_epsilon(2.6380417654668444, worksheet.flows_k12, 0.002); end
  def test_flows_l12; assert_in_epsilon(4.064078248722316, worksheet.flows_l12, 0.002); end
  def test_flows_m12; assert_in_epsilon(5.912576537574043, worksheet.flows_m12, 0.002); end
  def test_flows_n12; assert_in_epsilon(8.206894551505547, worksheet.flows_n12, 0.002); end
  def test_flows_o12; assert_in_epsilon(10.972820047478681, worksheet.flows_o12, 0.002); end
  def test_flows_p12; assert_in_epsilon(14.21908831431172, worksheet.flows_p12, 0.002); end
  def test_flows_v12; assert_equal("Biofuel imports", worksheet.flows_v12); end
  def test_flows_w12; assert_in_delta(0.0, (worksheet.flows_w12||0), 0.002); end
  def test_flows_x12; assert_in_delta(0.0, (worksheet.flows_x12||0), 0.002); end
  def test_flows_y12; assert_in_delta(0.0, (worksheet.flows_y12||0), 0.002); end
  def test_flows_z12; assert_in_delta(0.0, (worksheet.flows_z12||0), 0.002); end
  def test_flows_aa12; assert_in_delta(0.0, (worksheet.flows_aa12||0), 0.002); end
  def test_flows_ab12; assert_in_delta(0.0, (worksheet.flows_ab12||0), 0.002); end
  def test_flows_ac12; assert_in_delta(0.0, (worksheet.flows_ac12||0), 0.002); end
  def test_flows_ad12; assert_in_delta(0.0, (worksheet.flows_ad12||0), 0.002); end
  def test_flows_ae12; assert_in_delta(0.0, (worksheet.flows_ae12||0), 0.002); end
  def test_flows_af12; assert_in_delta(0.0, (worksheet.flows_af12||0), 0.002); end
  def test_flows_ah12; assert_in_delta(0.0, (worksheet.flows_ah12||0), 0.002); end
  def test_flows_ai12; assert_in_delta(0.0, (worksheet.flows_ai12||0), 0.002); end
  def test_flows_aj12; assert_in_delta(0.0, (worksheet.flows_aj12||0), 0.002); end
  def test_flows_ak12; assert_in_delta(0.0, (worksheet.flows_ak12||0), 0.002); end
  def test_flows_al12; assert_in_delta(0.0, (worksheet.flows_al12||0), 0.002); end
  def test_flows_am12; assert_in_delta(0.0, (worksheet.flows_am12||0), 0.002); end
  def test_flows_an12; assert_in_delta(0.0, (worksheet.flows_an12||0), 0.002); end
  def test_flows_ao12; assert_in_delta(0.0, (worksheet.flows_ao12||0), 0.002); end
  def test_flows_ap12; assert_in_delta(0.0, (worksheet.flows_ap12||0), 0.002); end
  def test_flows_aq12; assert_in_delta(0.0, (worksheet.flows_aq12||0), 0.002); end
  def test_flows_as12; assert_in_delta(0.0, (worksheet.flows_as12||0), 0.002); end
  def test_flows_at12; assert_in_delta(0.0, (worksheet.flows_at12||0), 0.002); end
  def test_flows_au12; assert_in_delta(0.0, (worksheet.flows_au12||0), 0.002); end
  def test_flows_av12; assert_in_delta(0.0, (worksheet.flows_av12||0), 0.002); end
  def test_flows_aw12; assert_in_delta(0.0, (worksheet.flows_aw12||0), 0.002); end
  def test_flows_ax12; assert_in_delta(0.0, (worksheet.flows_ax12||0), 0.002); end
  def test_flows_ay12; assert_in_delta(0.0, (worksheet.flows_ay12||0), 0.002); end
  def test_flows_az12; assert_in_delta(0.0, (worksheet.flows_az12||0), 0.002); end
  def test_flows_ba12; assert_in_delta(0.0, (worksheet.flows_ba12||0), 0.002); end
  def test_flows_bb12; assert_in_delta(0.0, (worksheet.flows_bb12||0), 0.002); end
  def test_flows_c13; assert_equal("Bio-conversion", worksheet.flows_c13); end
  def test_flows_d13; assert_equal("BIO.SUP", worksheet.flows_d13); end
  def test_flows_e13; assert_equal("Solid", worksheet.flows_e13); end
  def test_flows_f13; assert_equal("V.03", worksheet.flows_f13); end
  def test_flows_g13; assert_in_delta(0.34241818514878414, worksheet.flows_g13, 0.002); end
  def test_flows_h13; assert_in_delta(0.7952141746899761, worksheet.flows_h13, 0.002); end
  def test_flows_i13; assert_in_epsilon(1.4068975245732993, worksheet.flows_i13, 0.002); end
  def test_flows_j13; assert_in_epsilon(2.2011335823391387, worksheet.flows_j13, 0.002); end
  def test_flows_k13; assert_in_epsilon(3.0693923101133067, worksheet.flows_k13, 0.002); end
  def test_flows_l13; assert_in_epsilon(4.085195910934698, worksheet.flows_l13, 0.002); end
  def test_flows_m13; assert_in_epsilon(5.130023841872562, worksheet.flows_m13, 0.002); end
  def test_flows_n13; assert_in_epsilon(6.280446374601591, worksheet.flows_n13, 0.002); end
  def test_flows_o13; assert_in_epsilon(7.445418917199899, worksheet.flows_o13, 0.002); end
  def test_flows_p13; assert_in_epsilon(8.691864932914214, worksheet.flows_p13, 0.002); end
  def test_flows_v13; assert_equal("Coal ", worksheet.flows_v13); end
  def test_flows_w13; assert_in_epsilon(722.801431336528, worksheet.flows_w13, 0.002); end
  def test_flows_x13; assert_in_epsilon(722.801431336528, worksheet.flows_x13, 0.002); end
  def test_flows_y13; assert_in_epsilon(722.801431336528, worksheet.flows_y13, 0.002); end
  def test_flows_z13; assert_in_epsilon(722.801431336528, worksheet.flows_z13, 0.002); end
  def test_flows_aa13; assert_in_epsilon(722.801431336528, worksheet.flows_aa13, 0.002); end
  def test_flows_ab13; assert_in_epsilon(722.801431336528, worksheet.flows_ab13, 0.002); end
  def test_flows_ac13; assert_in_epsilon(722.801431336528, worksheet.flows_ac13, 0.002); end
  def test_flows_ad13; assert_in_epsilon(722.801431336528, worksheet.flows_ad13, 0.002); end
  def test_flows_ae13; assert_in_epsilon(722.801431336528, worksheet.flows_ae13, 0.002); end
  def test_flows_af13; assert_in_epsilon(722.801431336528, worksheet.flows_af13, 0.002); end
  def test_flows_ah13; assert_in_delta(0.0, (worksheet.flows_ah13||0), 0.002); end
  def test_flows_ai13; assert_in_delta(0.0, (worksheet.flows_ai13||0), 0.002); end
  def test_flows_aj13; assert_in_delta(0.0, (worksheet.flows_aj13||0), 0.002); end
  def test_flows_ak13; assert_in_delta(0.0, (worksheet.flows_ak13||0), 0.002); end
  def test_flows_al13; assert_in_delta(0.0, (worksheet.flows_al13||0), 0.002); end
  def test_flows_am13; assert_in_delta(0.0, (worksheet.flows_am13||0), 0.002); end
  def test_flows_an13; assert_in_delta(0.0, (worksheet.flows_an13||0), 0.002); end
  def test_flows_ao13; assert_in_delta(0.0, (worksheet.flows_ao13||0), 0.002); end
  def test_flows_ap13; assert_in_delta(0.0, (worksheet.flows_ap13||0), 0.002); end
  def test_flows_aq13; assert_in_delta(0.0, (worksheet.flows_aq13||0), 0.002); end
  def test_flows_as13; assert_in_epsilon(722.801431336528, worksheet.flows_as13, 0.002); end
  def test_flows_at13; assert_in_epsilon(722.801431336528, worksheet.flows_at13, 0.002); end
  def test_flows_au13; assert_in_epsilon(722.801431336528, worksheet.flows_au13, 0.002); end
  def test_flows_av13; assert_in_epsilon(722.801431336528, worksheet.flows_av13, 0.002); end
  def test_flows_aw13; assert_in_epsilon(722.801431336528, worksheet.flows_aw13, 0.002); end
  def test_flows_ax13; assert_in_epsilon(722.801431336528, worksheet.flows_ax13, 0.002); end
  def test_flows_ay13; assert_in_epsilon(722.801431336528, worksheet.flows_ay13, 0.002); end
  def test_flows_az13; assert_in_epsilon(722.801431336528, worksheet.flows_az13, 0.002); end
  def test_flows_ba13; assert_in_epsilon(722.801431336528, worksheet.flows_ba13, 0.002); end
  def test_flows_bb13; assert_in_epsilon(722.801431336528, worksheet.flows_bb13, 0.002); end
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
  def test_flows_v14; assert_equal("Electricity grid", worksheet.flows_v14); end
  def test_flows_w14; assert_equal(:na, worksheet.flows_w14); end
  def test_flows_x14; assert_equal(:na, worksheet.flows_x14); end
  def test_flows_y14; assert_equal(:na, worksheet.flows_y14); end
  def test_flows_z14; assert_equal(:na, worksheet.flows_z14); end
  def test_flows_aa14; assert_equal(:na, worksheet.flows_aa14); end
  def test_flows_ab14; assert_equal(:na, worksheet.flows_ab14); end
  def test_flows_ac14; assert_equal(:na, worksheet.flows_ac14); end
  def test_flows_ad14; assert_equal(:na, worksheet.flows_ad14); end
  def test_flows_ae14; assert_equal(:na, worksheet.flows_ae14); end
  def test_flows_af14; assert_equal(:na, worksheet.flows_af14); end
  def test_flows_ah14; assert_equal(:na, worksheet.flows_ah14); end
  def test_flows_ai14; assert_equal(:na, worksheet.flows_ai14); end
  def test_flows_aj14; assert_equal(:na, worksheet.flows_aj14); end
  def test_flows_ak14; assert_equal(:na, worksheet.flows_ak14); end
  def test_flows_al14; assert_equal(:na, worksheet.flows_al14); end
  def test_flows_am14; assert_equal(:na, worksheet.flows_am14); end
  def test_flows_an14; assert_equal(:na, worksheet.flows_an14); end
  def test_flows_ao14; assert_equal(:na, worksheet.flows_ao14); end
  def test_flows_ap14; assert_equal(:na, worksheet.flows_ap14); end
  def test_flows_aq14; assert_equal(:na, worksheet.flows_aq14); end
  def test_flows_as14; assert_equal(:na, worksheet.flows_as14); end
  def test_flows_at14; assert_equal(:na, worksheet.flows_at14); end
  def test_flows_au14; assert_equal(:na, worksheet.flows_au14); end
  def test_flows_av14; assert_equal(:na, worksheet.flows_av14); end
  def test_flows_aw14; assert_equal(:na, worksheet.flows_aw14); end
  def test_flows_ax14; assert_equal(:na, worksheet.flows_ax14); end
  def test_flows_ay14; assert_equal(:na, worksheet.flows_ay14); end
  def test_flows_az14; assert_equal(:na, worksheet.flows_az14); end
  def test_flows_ba14; assert_equal(:na, worksheet.flows_ba14); end
  def test_flows_bb14; assert_equal(:na, worksheet.flows_bb14); end
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
  def test_flows_v15; assert_equal("Coal to Liquid", worksheet.flows_v15); end
  def test_flows_w15; assert_in_epsilon(199.51181758596977, worksheet.flows_w15, 0.002); end
  def test_flows_x15; assert_in_epsilon(199.51181758596977, worksheet.flows_x15, 0.002); end
  def test_flows_y15; assert_in_epsilon(199.51181758596977, worksheet.flows_y15, 0.002); end
  def test_flows_z15; assert_in_epsilon(199.51181758596977, worksheet.flows_z15, 0.002); end
  def test_flows_aa15; assert_in_epsilon(199.51181758596977, worksheet.flows_aa15, 0.002); end
  def test_flows_ab15; assert_in_epsilon(199.51181758596977, worksheet.flows_ab15, 0.002); end
  def test_flows_ac15; assert_in_epsilon(199.51181758596977, worksheet.flows_ac15, 0.002); end
  def test_flows_ad15; assert_in_epsilon(199.51181758596977, worksheet.flows_ad15, 0.002); end
  def test_flows_ae15; assert_in_epsilon(199.51181758596977, worksheet.flows_ae15, 0.002); end
  def test_flows_af15; assert_in_epsilon(199.51181758596977, worksheet.flows_af15, 0.002); end
  def test_flows_ah15; assert_in_epsilon(762.1917788380825, worksheet.flows_ah15, 0.002); end
  def test_flows_ai15; assert_in_epsilon(762.1917788380825, worksheet.flows_ai15, 0.002); end
  def test_flows_aj15; assert_in_epsilon(762.1917788380825, worksheet.flows_aj15, 0.002); end
  def test_flows_ak15; assert_in_epsilon(762.1917788380825, worksheet.flows_ak15, 0.002); end
  def test_flows_al15; assert_in_epsilon(762.1917788380825, worksheet.flows_al15, 0.002); end
  def test_flows_am15; assert_in_epsilon(762.1917788380825, worksheet.flows_am15, 0.002); end
  def test_flows_an15; assert_in_epsilon(762.1917788380825, worksheet.flows_an15, 0.002); end
  def test_flows_ao15; assert_in_epsilon(762.1917788380825, worksheet.flows_ao15, 0.002); end
  def test_flows_ap15; assert_in_epsilon(762.1917788380825, worksheet.flows_ap15, 0.002); end
  def test_flows_aq15; assert_in_epsilon(762.1917788380825, worksheet.flows_aq15, 0.002); end
  def test_flows_as15; assert_in_epsilon(-562.6799612521128, worksheet.flows_as15, 0.002); end
  def test_flows_at15; assert_in_epsilon(-562.6799612521128, worksheet.flows_at15, 0.002); end
  def test_flows_au15; assert_in_epsilon(-562.6799612521128, worksheet.flows_au15, 0.002); end
  def test_flows_av15; assert_in_epsilon(-562.6799612521128, worksheet.flows_av15, 0.002); end
  def test_flows_aw15; assert_in_epsilon(-562.6799612521128, worksheet.flows_aw15, 0.002); end
  def test_flows_ax15; assert_in_epsilon(-562.6799612521128, worksheet.flows_ax15, 0.002); end
  def test_flows_ay15; assert_in_epsilon(-562.6799612521128, worksheet.flows_ay15, 0.002); end
  def test_flows_az15; assert_in_epsilon(-562.6799612521128, worksheet.flows_az15, 0.002); end
  def test_flows_ba15; assert_in_epsilon(-562.6799612521128, worksheet.flows_ba15, 0.002); end
  def test_flows_bb15; assert_in_epsilon(-562.6799612521128, worksheet.flows_bb15, 0.002); end
  def test_flows_c16; assert_equal("Coal ", worksheet.flows_c16); end
  def test_flows_d16; assert_equal("FOS.CTL", worksheet.flows_d16); end
  def test_flows_e16; assert_equal("Coal to Liquid", worksheet.flows_e16); end
  def test_flows_f16; assert_equal("V.03", worksheet.flows_f16); end
  def test_flows_g16; assert_in_epsilon(722.801431336528, worksheet.flows_g16, 0.002); end
  def test_flows_h16; assert_in_epsilon(722.801431336528, worksheet.flows_h16, 0.002); end
  def test_flows_i16; assert_in_epsilon(722.801431336528, worksheet.flows_i16, 0.002); end
  def test_flows_j16; assert_in_epsilon(722.801431336528, worksheet.flows_j16, 0.002); end
  def test_flows_k16; assert_in_epsilon(722.801431336528, worksheet.flows_k16, 0.002); end
  def test_flows_l16; assert_in_epsilon(722.801431336528, worksheet.flows_l16, 0.002); end
  def test_flows_m16; assert_in_epsilon(722.801431336528, worksheet.flows_m16, 0.002); end
  def test_flows_n16; assert_in_epsilon(722.801431336528, worksheet.flows_n16, 0.002); end
  def test_flows_o16; assert_in_epsilon(722.801431336528, worksheet.flows_o16, 0.002); end
  def test_flows_p16; assert_in_epsilon(722.801431336528, worksheet.flows_p16, 0.002); end
  def test_flows_v16; assert_equal("Gas", worksheet.flows_v16); end
  def test_flows_w16; assert_equal(:na, worksheet.flows_w16); end
  def test_flows_x16; assert_equal(:na, worksheet.flows_x16); end
  def test_flows_y16; assert_equal(:na, worksheet.flows_y16); end
  def test_flows_z16; assert_equal(:na, worksheet.flows_z16); end
  def test_flows_aa16; assert_equal(:na, worksheet.flows_aa16); end
  def test_flows_ab16; assert_equal(:na, worksheet.flows_ab16); end
  def test_flows_ac16; assert_equal(:na, worksheet.flows_ac16); end
  def test_flows_ad16; assert_equal(:na, worksheet.flows_ad16); end
  def test_flows_ae16; assert_equal(:na, worksheet.flows_ae16); end
  def test_flows_af16; assert_equal(:na, worksheet.flows_af16); end
  def test_flows_ah16; assert_in_epsilon(188.35320749834085, worksheet.flows_ah16, 0.002); end
  def test_flows_ai16; assert_in_epsilon(206.3758086428603, worksheet.flows_ai16, 0.002); end
  def test_flows_aj16; assert_in_epsilon(228.70584631401988, worksheet.flows_aj16, 0.002); end
  def test_flows_ak16; assert_in_epsilon(250.3037083733557, worksheet.flows_ak16, 0.002); end
  def test_flows_al16; assert_in_epsilon(280.9865211385425, worksheet.flows_al16, 0.002); end
  def test_flows_am16; assert_in_epsilon(310.75381770431454, worksheet.flows_am16, 0.002); end
  def test_flows_an16; assert_in_epsilon(296.2017152483964, worksheet.flows_an16, 0.002); end
  def test_flows_ao16; assert_in_epsilon(344.43557443364165, worksheet.flows_ao16, 0.002); end
  def test_flows_ap16; assert_in_epsilon(395.7234951984109, worksheet.flows_ap16, 0.002); end
  def test_flows_aq16; assert_in_epsilon(440.82223310770314, worksheet.flows_aq16, 0.002); end
  def test_flows_as16; assert_equal(:na, worksheet.flows_as16); end
  def test_flows_at16; assert_equal(:na, worksheet.flows_at16); end
  def test_flows_au16; assert_equal(:na, worksheet.flows_au16); end
  def test_flows_av16; assert_equal(:na, worksheet.flows_av16); end
  def test_flows_aw16; assert_equal(:na, worksheet.flows_aw16); end
  def test_flows_ax16; assert_equal(:na, worksheet.flows_ax16); end
  def test_flows_ay16; assert_equal(:na, worksheet.flows_ay16); end
  def test_flows_az16; assert_equal(:na, worksheet.flows_az16); end
  def test_flows_ba16; assert_equal(:na, worksheet.flows_ba16); end
  def test_flows_bb16; assert_equal(:na, worksheet.flows_bb16); end
  def test_flows_c17; assert_equal("Electricity grid", worksheet.flows_c17); end
  def test_flows_d17; assert_equal("FOS.CTL", worksheet.flows_d17); end
  def test_flows_e17; assert_equal("Coal to Liquid", worksheet.flows_e17); end
  def test_flows_f17; assert_equal("V.01", worksheet.flows_f17); end
  def test_flows_g17; assert_in_epsilon(19.695173750777297, worksheet.flows_g17, 0.002); end
  def test_flows_h17; assert_in_epsilon(19.695173750777297, worksheet.flows_h17, 0.002); end
  def test_flows_i17; assert_in_epsilon(19.695173750777297, worksheet.flows_i17, 0.002); end
  def test_flows_j17; assert_in_epsilon(19.695173750777297, worksheet.flows_j17, 0.002); end
  def test_flows_k17; assert_in_epsilon(19.695173750777297, worksheet.flows_k17, 0.002); end
  def test_flows_l17; assert_in_epsilon(19.695173750777297, worksheet.flows_l17, 0.002); end
  def test_flows_m17; assert_in_epsilon(19.695173750777297, worksheet.flows_m17, 0.002); end
  def test_flows_n17; assert_in_epsilon(19.695173750777297, worksheet.flows_n17, 0.002); end
  def test_flows_o17; assert_in_epsilon(19.695173750777297, worksheet.flows_o17, 0.002); end
  def test_flows_p17; assert_in_epsilon(19.695173750777297, worksheet.flows_p17, 0.002); end
  def test_flows_v17; assert_equal("Gas to Liquid", worksheet.flows_v17); end
  def test_flows_w17; assert_in_epsilon(54.80695973516084, worksheet.flows_w17, 0.002); end
  def test_flows_x17; assert_in_epsilon(54.80695973516084, worksheet.flows_x17, 0.002); end
  def test_flows_y17; assert_in_epsilon(54.80695973516084, worksheet.flows_y17, 0.002); end
  def test_flows_z17; assert_in_epsilon(54.80695973516084, worksheet.flows_z17, 0.002); end
  def test_flows_aa17; assert_in_epsilon(54.80695973516084, worksheet.flows_aa17, 0.002); end
  def test_flows_ab17; assert_in_epsilon(54.80695973516084, worksheet.flows_ab17, 0.002); end
  def test_flows_ac17; assert_in_delta(0.0, (worksheet.flows_ac17||0), 0.002); end
  def test_flows_ad17; assert_in_delta(0.0, (worksheet.flows_ad17||0), 0.002); end
  def test_flows_ae17; assert_in_delta(0.0, (worksheet.flows_ae17||0), 0.002); end
  def test_flows_af17; assert_in_delta(0.0, (worksheet.flows_af17||0), 0.002); end
  def test_flows_ah17; assert_in_epsilon(68.31993931022905, worksheet.flows_ah17, 0.002); end
  def test_flows_ai17; assert_in_epsilon(68.31993931022905, worksheet.flows_ai17, 0.002); end
  def test_flows_aj17; assert_in_epsilon(68.31993931022905, worksheet.flows_aj17, 0.002); end
  def test_flows_ak17; assert_in_epsilon(68.31993931022905, worksheet.flows_ak17, 0.002); end
  def test_flows_al17; assert_in_epsilon(68.31993931022905, worksheet.flows_al17, 0.002); end
  def test_flows_am17; assert_in_epsilon(68.31993931022905, worksheet.flows_am17, 0.002); end
  def test_flows_an17; assert_in_delta(0.0, (worksheet.flows_an17||0), 0.002); end
  def test_flows_ao17; assert_in_delta(0.0, (worksheet.flows_ao17||0), 0.002); end
  def test_flows_ap17; assert_in_delta(0.0, (worksheet.flows_ap17||0), 0.002); end
  def test_flows_aq17; assert_in_delta(0.0, (worksheet.flows_aq17||0), 0.002); end
  def test_flows_as17; assert_in_epsilon(-13.512979575068208, worksheet.flows_as17, 0.002); end
  def test_flows_at17; assert_in_epsilon(-13.512979575068208, worksheet.flows_at17, 0.002); end
  def test_flows_au17; assert_in_epsilon(-13.512979575068208, worksheet.flows_au17, 0.002); end
  def test_flows_av17; assert_in_epsilon(-13.512979575068208, worksheet.flows_av17, 0.002); end
  def test_flows_aw17; assert_in_epsilon(-13.512979575068208, worksheet.flows_aw17, 0.002); end
  def test_flows_ax17; assert_in_epsilon(-13.512979575068208, worksheet.flows_ax17, 0.002); end
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
  def test_flows_n18; assert_in_epsilon(199.51181758596977, worksheet.flows_n18, 0.002); end
  def test_flows_o18; assert_in_epsilon(199.51181758596977, worksheet.flows_o18, 0.002); end
  def test_flows_p18; assert_in_epsilon(199.51181758596977, worksheet.flows_p18, 0.002); end
  def test_flows_v18; assert_equal("Coal", worksheet.flows_v18); end
  def test_flows_w18; assert_in_epsilon(3105.4252945209114, worksheet.flows_w18, 0.002); end
  def test_flows_x18; assert_in_epsilon(3726.9184736532866, worksheet.flows_x18, 0.002); end
  def test_flows_y18; assert_in_epsilon(4276.168614594729, worksheet.flows_y18, 0.002); end
  def test_flows_z18; assert_in_epsilon(4979.532783859219, worksheet.flows_z18, 0.002); end
  def test_flows_aa18; assert_in_epsilon(5877.316749347749, worksheet.flows_aa18, 0.002); end
  def test_flows_ab18; assert_in_epsilon(6938.260357314298, worksheet.flows_ab18, 0.002); end
  def test_flows_ac18; assert_in_epsilon(8289.12579844828, worksheet.flows_ac18, 0.002); end
  def test_flows_ad18; assert_in_epsilon(9734.603670673598, worksheet.flows_ad18, 0.002); end
  def test_flows_ae18; assert_in_epsilon(11414.089547146199, worksheet.flows_ae18, 0.002); end
  def test_flows_af18; assert_in_epsilon(13308.511072837413, worksheet.flows_af18, 0.002); end
  def test_flows_ah18; assert_in_epsilon(3828.2267258574393, worksheet.flows_ah18, 0.002); end
  def test_flows_ai18; assert_in_epsilon(4449.7199049898145, worksheet.flows_ai18, 0.002); end
  def test_flows_aj18; assert_in_epsilon(4998.970045931257, worksheet.flows_aj18, 0.002); end
  def test_flows_ak18; assert_in_epsilon(5702.334215195748, worksheet.flows_ak18, 0.002); end
  def test_flows_al18; assert_in_epsilon(6600.118180684277, worksheet.flows_al18, 0.002); end
  def test_flows_am18; assert_in_epsilon(7661.061788650826, worksheet.flows_am18, 0.002); end
  def test_flows_an18; assert_in_epsilon(9011.927229784807, worksheet.flows_an18, 0.002); end
  def test_flows_ao18; assert_in_epsilon(10457.405102010125, worksheet.flows_ao18, 0.002); end
  def test_flows_ap18; assert_in_epsilon(12136.890978482726, worksheet.flows_ap18, 0.002); end
  def test_flows_aq18; assert_in_epsilon(14031.31250417394, worksheet.flows_aq18, 0.002); end
  def test_flows_as18; assert_in_epsilon(-722.8014313365279, worksheet.flows_as18, 0.002); end
  def test_flows_at18; assert_in_epsilon(-722.8014313365279, worksheet.flows_at18, 0.002); end
  def test_flows_au18; assert_in_epsilon(-722.8014313365284, worksheet.flows_au18, 0.002); end
  def test_flows_av18; assert_in_epsilon(-722.8014313365284, worksheet.flows_av18, 0.002); end
  def test_flows_aw18; assert_in_epsilon(-722.8014313365284, worksheet.flows_aw18, 0.002); end
  def test_flows_ax18; assert_in_epsilon(-722.8014313365284, worksheet.flows_ax18, 0.002); end
  def test_flows_ay18; assert_in_epsilon(-722.8014313365275, worksheet.flows_ay18, 0.002); end
  def test_flows_az18; assert_in_epsilon(-722.8014313365275, worksheet.flows_az18, 0.002); end
  def test_flows_ba18; assert_in_epsilon(-722.8014313365275, worksheet.flows_ba18, 0.002); end
  def test_flows_bb18; assert_in_epsilon(-722.8014313365275, worksheet.flows_bb18, 0.002); end
  def test_flows_c19; assert_equal("Electricity grid", worksheet.flows_c19); end
  def test_flows_d19; assert_equal("FOS.CTL", worksheet.flows_d19); end
  def test_flows_e19; assert_equal("Coal to Liquid", worksheet.flows_e19); end
  def test_flows_f19; assert_equal("V.01", worksheet.flows_f19); end
  def test_flows_g19; assert_in_epsilon(19.695173750777297, worksheet.flows_g19, 0.002); end
  def test_flows_h19; assert_in_epsilon(19.695173750777297, worksheet.flows_h19, 0.002); end
  def test_flows_i19; assert_in_epsilon(19.695173750777297, worksheet.flows_i19, 0.002); end
  def test_flows_j19; assert_in_epsilon(19.695173750777297, worksheet.flows_j19, 0.002); end
  def test_flows_k19; assert_in_epsilon(19.695173750777297, worksheet.flows_k19, 0.002); end
  def test_flows_l19; assert_in_epsilon(19.695173750777297, worksheet.flows_l19, 0.002); end
  def test_flows_m19; assert_in_epsilon(19.695173750777297, worksheet.flows_m19, 0.002); end
  def test_flows_n19; assert_in_epsilon(19.695173750777297, worksheet.flows_n19, 0.002); end
  def test_flows_o19; assert_in_epsilon(19.695173750777297, worksheet.flows_o19, 0.002); end
  def test_flows_p19; assert_in_epsilon(19.695173750777297, worksheet.flows_p19, 0.002); end
  def test_flows_v19; assert_equal("Solar", worksheet.flows_v19); end
  def test_flows_w19; assert_in_delta(0.0, (worksheet.flows_w19||0), 0.002); end
  def test_flows_x19; assert_in_delta(0.006712584794189628, worksheet.flows_x19, 0.002); end
  def test_flows_y19; assert_in_epsilon(12.049461337908133, worksheet.flows_y19, 0.002); end
  def test_flows_z19; assert_in_epsilon(15.364972224801516, worksheet.flows_z19, 0.002); end
  def test_flows_aa19; assert_in_epsilon(15.367270050567054, worksheet.flows_aa19, 0.002); end
  def test_flows_ab19; assert_in_epsilon(15.370042203043193, worksheet.flows_ab19, 0.002); end
  def test_flows_ac19; assert_in_epsilon(15.373541437865228, worksheet.flows_ac19, 0.002); end
  def test_flows_ad19; assert_in_epsilon(15.377460458127448, worksheet.flows_ad19, 0.002); end
  def test_flows_ae19; assert_in_epsilon(15.381648173386, worksheet.flows_ae19, 0.002); end
  def test_flows_af19; assert_in_epsilon(15.386189751529962, worksheet.flows_af19, 0.002); end
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
  def test_flows_at19; assert_in_delta(0.006712584794189628, worksheet.flows_at19, 0.002); end
  def test_flows_au19; assert_in_epsilon(12.049461337908133, worksheet.flows_au19, 0.002); end
  def test_flows_av19; assert_in_epsilon(15.364972224801516, worksheet.flows_av19, 0.002); end
  def test_flows_aw19; assert_in_epsilon(15.367270050567054, worksheet.flows_aw19, 0.002); end
  def test_flows_ax19; assert_in_epsilon(15.370042203043193, worksheet.flows_ax19, 0.002); end
  def test_flows_ay19; assert_in_epsilon(15.373541437865228, worksheet.flows_ay19, 0.002); end
  def test_flows_az19; assert_in_epsilon(15.377460458127448, worksheet.flows_az19, 0.002); end
  def test_flows_ba19; assert_in_epsilon(15.381648173386, worksheet.flows_ba19, 0.002); end
  def test_flows_bb19; assert_in_epsilon(15.386189751529962, worksheet.flows_bb19, 0.002); end
  def test_flows_c20; assert_equal("Gas", worksheet.flows_c20); end
  def test_flows_d20; assert_equal("FOS.GTL", worksheet.flows_d20); end
  def test_flows_e20; assert_equal("Gas to Liquid", worksheet.flows_e20); end
  def test_flows_f20; assert_equal("V.05", worksheet.flows_f20); end
  def test_flows_g20; assert_in_epsilon(64.22834761321909, worksheet.flows_g20, 0.002); end
  def test_flows_h20; assert_in_epsilon(64.22834761321909, worksheet.flows_h20, 0.002); end
  def test_flows_i20; assert_in_epsilon(64.22834761321909, worksheet.flows_i20, 0.002); end
  def test_flows_j20; assert_in_epsilon(64.22834761321909, worksheet.flows_j20, 0.002); end
  def test_flows_k20; assert_in_epsilon(64.22834761321909, worksheet.flows_k20, 0.002); end
  def test_flows_l20; assert_in_epsilon(64.22834761321909, worksheet.flows_l20, 0.002); end
  def test_flows_m20; assert_in_delta(0.0, (worksheet.flows_m20||0), 0.002); end
  def test_flows_n20; assert_in_delta(0.0, (worksheet.flows_n20||0), 0.002); end
  def test_flows_o20; assert_in_delta(0.0, (worksheet.flows_o20||0), 0.002); end
  def test_flows_p20; assert_in_delta(0.0, (worksheet.flows_p20||0), 0.002); end
  def test_flows_v20; assert_equal("Liquid", worksheet.flows_v20); end
  def test_flows_w20; assert_equal(:na, worksheet.flows_w20); end
  def test_flows_x20; assert_equal(:na, worksheet.flows_x20); end
  def test_flows_y20; assert_equal(:na, worksheet.flows_y20); end
  def test_flows_z20; assert_equal(:na, worksheet.flows_z20); end
  def test_flows_aa20; assert_equal(:na, worksheet.flows_aa20); end
  def test_flows_ab20; assert_equal(:na, worksheet.flows_ab20); end
  def test_flows_ac20; assert_equal(:na, worksheet.flows_ac20); end
  def test_flows_ad20; assert_equal(:na, worksheet.flows_ad20); end
  def test_flows_ae20; assert_equal(:na, worksheet.flows_ae20); end
  def test_flows_af20; assert_equal(:na, worksheet.flows_af20); end
  def test_flows_ah20; assert_in_epsilon(254.3187773211306, worksheet.flows_ah20, 0.002); end
  def test_flows_ai20; assert_in_epsilon(254.3187773211306, worksheet.flows_ai20, 0.002); end
  def test_flows_aj20; assert_in_epsilon(254.3187773211306, worksheet.flows_aj20, 0.002); end
  def test_flows_ak20; assert_in_epsilon(254.3187773211306, worksheet.flows_ak20, 0.002); end
  def test_flows_al20; assert_in_epsilon(254.3187773211306, worksheet.flows_al20, 0.002); end
  def test_flows_am20; assert_in_epsilon(254.3187773211306, worksheet.flows_am20, 0.002); end
  def test_flows_an20; assert_in_epsilon(199.51181758596977, worksheet.flows_an20, 0.002); end
  def test_flows_ao20; assert_in_epsilon(199.51181758596977, worksheet.flows_ao20, 0.002); end
  def test_flows_ap20; assert_in_epsilon(199.51181758596977, worksheet.flows_ap20, 0.002); end
  def test_flows_aq20; assert_in_epsilon(199.51181758596977, worksheet.flows_aq20, 0.002); end
  def test_flows_as20; assert_equal(:na, worksheet.flows_as20); end
  def test_flows_at20; assert_equal(:na, worksheet.flows_at20); end
  def test_flows_au20; assert_equal(:na, worksheet.flows_au20); end
  def test_flows_av20; assert_equal(:na, worksheet.flows_av20); end
  def test_flows_aw20; assert_equal(:na, worksheet.flows_aw20); end
  def test_flows_ax20; assert_equal(:na, worksheet.flows_ax20); end
  def test_flows_ay20; assert_equal(:na, worksheet.flows_ay20); end
  def test_flows_az20; assert_equal(:na, worksheet.flows_az20); end
  def test_flows_ba20; assert_equal(:na, worksheet.flows_ba20); end
  def test_flows_bb20; assert_equal(:na, worksheet.flows_bb20); end
  def test_flows_c21; assert_equal("Gas to Liquid", worksheet.flows_c21); end
  def test_flows_d21; assert_equal("FOS.GTL", worksheet.flows_d21); end
  def test_flows_e21; assert_equal("Liquid", worksheet.flows_e21); end
  def test_flows_f21; assert_equal("C.02", worksheet.flows_f21); end
  def test_flows_g21; assert_in_epsilon(54.80695973516084, worksheet.flows_g21, 0.002); end
  def test_flows_h21; assert_in_epsilon(54.80695973516084, worksheet.flows_h21, 0.002); end
  def test_flows_i21; assert_in_epsilon(54.80695973516084, worksheet.flows_i21, 0.002); end
  def test_flows_j21; assert_in_epsilon(54.80695973516084, worksheet.flows_j21, 0.002); end
  def test_flows_k21; assert_in_epsilon(54.80695973516084, worksheet.flows_k21, 0.002); end
  def test_flows_l21; assert_in_epsilon(54.80695973516084, worksheet.flows_l21, 0.002); end
  def test_flows_m21; assert_in_delta(0.0, (worksheet.flows_m21||0), 0.002); end
  def test_flows_n21; assert_in_delta(0.0, (worksheet.flows_n21||0), 0.002); end
  def test_flows_o21; assert_in_delta(0.0, (worksheet.flows_o21||0), 0.002); end
  def test_flows_p21; assert_in_delta(0.0, (worksheet.flows_p21||0), 0.002); end
  def test_flows_v21; assert_equal("Solid", worksheet.flows_v21); end
  def test_flows_w21; assert_in_epsilon(3105.76771270606, worksheet.flows_w21, 0.002); end
  def test_flows_x21; assert_in_epsilon(3727.713687827976, worksheet.flows_x21, 0.002); end
  def test_flows_y21; assert_in_epsilon(4277.575512119303, worksheet.flows_y21, 0.002); end
  def test_flows_z21; assert_in_epsilon(4981.733917441559, worksheet.flows_z21, 0.002); end
  def test_flows_aa21; assert_in_epsilon(5880.386141657862, worksheet.flows_aa21, 0.002); end
  def test_flows_ab21; assert_in_epsilon(6942.345553225234, worksheet.flows_ab21, 0.002); end
  def test_flows_ac21; assert_in_epsilon(8294.25582229015, worksheet.flows_ac21, 0.002); end
  def test_flows_ad21; assert_in_epsilon(9740.884117048197, worksheet.flows_ad21, 0.002); end
  def test_flows_ae21; assert_in_epsilon(11421.5349660634, worksheet.flows_ae21, 0.002); end
  def test_flows_af21; assert_in_epsilon(13317.202937770326, worksheet.flows_af21, 0.002); end
  def test_flows_ah21; assert_in_epsilon(3105.76771270606, worksheet.flows_ah21, 0.002); end
  def test_flows_ai21; assert_in_epsilon(3727.7136878279766, worksheet.flows_ai21, 0.002); end
  def test_flows_aj21; assert_in_epsilon(4277.575512119302, worksheet.flows_aj21, 0.002); end
  def test_flows_ak21; assert_in_epsilon(4981.733917441558, worksheet.flows_ak21, 0.002); end
  def test_flows_al21; assert_in_epsilon(5880.386141657862, worksheet.flows_al21, 0.002); end
  def test_flows_am21; assert_in_epsilon(6942.345553225233, worksheet.flows_am21, 0.002); end
  def test_flows_an21; assert_in_epsilon(8294.255822290152, worksheet.flows_an21, 0.002); end
  def test_flows_ao21; assert_in_epsilon(9740.8841170482, worksheet.flows_ao21, 0.002); end
  def test_flows_ap21; assert_in_epsilon(11421.534966063398, worksheet.flows_ap21, 0.002); end
  def test_flows_aq21; assert_in_epsilon(13317.202937770327, worksheet.flows_aq21, 0.002); end
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
  def test_flows_g22; assert_in_epsilon(4.091591697009966, worksheet.flows_g22, 0.002); end
  def test_flows_h22; assert_in_epsilon(4.091591697009966, worksheet.flows_h22, 0.002); end
  def test_flows_i22; assert_in_epsilon(4.091591697009966, worksheet.flows_i22, 0.002); end
  def test_flows_j22; assert_in_epsilon(4.091591697009966, worksheet.flows_j22, 0.002); end
  def test_flows_k22; assert_in_epsilon(4.091591697009966, worksheet.flows_k22, 0.002); end
  def test_flows_l22; assert_in_epsilon(4.091591697009966, worksheet.flows_l22, 0.002); end
  def test_flows_m22; assert_in_delta(0.0, (worksheet.flows_m22||0), 0.002); end
  def test_flows_n22; assert_in_delta(0.0, (worksheet.flows_n22||0), 0.002); end
  def test_flows_o22; assert_in_delta(0.0, (worksheet.flows_o22||0), 0.002); end
  def test_flows_p22; assert_in_delta(0.0, (worksheet.flows_p22||0), 0.002); end
  def test_flows_v22; assert_equal("Nuclear", worksheet.flows_v22); end
  def test_flows_w22; assert_in_epsilon(110.05713000000002, worksheet.flows_w22, 0.002); end
  def test_flows_x22; assert_in_epsilon(143.78431500000002, worksheet.flows_x22, 0.002); end
  def test_flows_y22; assert_in_epsilon(143.78431500000002, worksheet.flows_y22, 0.002); end
  def test_flows_z22; assert_in_epsilon(143.78431500000002, worksheet.flows_z22, 0.002); end
  def test_flows_aa22; assert_in_epsilon(143.78431500000002, worksheet.flows_aa22, 0.002); end
  def test_flows_ab22; assert_in_epsilon(143.78431500000002, worksheet.flows_ab22, 0.002); end
  def test_flows_ac22; assert_in_epsilon(143.78431500000002, worksheet.flows_ac22, 0.002); end
  def test_flows_ad22; assert_in_epsilon(143.78431500000002, worksheet.flows_ad22, 0.002); end
  def test_flows_ae22; assert_in_epsilon(143.78431500000002, worksheet.flows_ae22, 0.002); end
  def test_flows_af22; assert_in_delta(0.0, (worksheet.flows_af22||0), 0.002); end
  def test_flows_ah22; assert_in_delta(0.0, (worksheet.flows_ah22||0), 0.002); end
  def test_flows_ai22; assert_in_delta(0.0, (worksheet.flows_ai22||0), 0.002); end
  def test_flows_aj22; assert_in_delta(0.0, (worksheet.flows_aj22||0), 0.002); end
  def test_flows_ak22; assert_in_delta(0.0, (worksheet.flows_ak22||0), 0.002); end
  def test_flows_al22; assert_in_delta(0.0, (worksheet.flows_al22||0), 0.002); end
  def test_flows_am22; assert_in_delta(0.0, (worksheet.flows_am22||0), 0.002); end
  def test_flows_an22; assert_in_delta(0.0, (worksheet.flows_an22||0), 0.002); end
  def test_flows_ao22; assert_in_delta(0.0, (worksheet.flows_ao22||0), 0.002); end
  def test_flows_ap22; assert_in_delta(0.0, (worksheet.flows_ap22||0), 0.002); end
  def test_flows_aq22; assert_in_delta(0.0, (worksheet.flows_aq22||0), 0.002); end
  def test_flows_as22; assert_in_epsilon(110.05713000000002, worksheet.flows_as22, 0.002); end
  def test_flows_at22; assert_in_epsilon(143.78431500000002, worksheet.flows_at22, 0.002); end
  def test_flows_au22; assert_in_epsilon(143.78431500000002, worksheet.flows_au22, 0.002); end
  def test_flows_av22; assert_in_epsilon(143.78431500000002, worksheet.flows_av22, 0.002); end
  def test_flows_aw22; assert_in_epsilon(143.78431500000002, worksheet.flows_aw22, 0.002); end
  def test_flows_ax22; assert_in_epsilon(143.78431500000002, worksheet.flows_ax22, 0.002); end
  def test_flows_ay22; assert_in_epsilon(143.78431500000002, worksheet.flows_ay22, 0.002); end
  def test_flows_az22; assert_in_epsilon(143.78431500000002, worksheet.flows_az22, 0.002); end
  def test_flows_ba22; assert_in_epsilon(143.78431500000002, worksheet.flows_ba22, 0.002); end
  def test_flows_bb22; assert_in_delta(0.0, (worksheet.flows_bb22||0), 0.002); end
  def test_flows_c23; assert_equal("Coal", worksheet.flows_c23); end
  def test_flows_e23; assert_equal("Solid", worksheet.flows_e23); end
  def test_flows_g23; assert_in_epsilon(3105.4252945209114, worksheet.flows_g23, 0.002); end
  def test_flows_h23; assert_in_epsilon(3726.9184736532866, worksheet.flows_h23, 0.002); end
  def test_flows_i23; assert_in_epsilon(4276.168614594729, worksheet.flows_i23, 0.002); end
  def test_flows_j23; assert_in_epsilon(4979.532783859219, worksheet.flows_j23, 0.002); end
  def test_flows_k23; assert_in_epsilon(5877.316749347749, worksheet.flows_k23, 0.002); end
  def test_flows_l23; assert_in_epsilon(6938.260357314298, worksheet.flows_l23, 0.002); end
  def test_flows_m23; assert_in_epsilon(8289.12579844828, worksheet.flows_m23, 0.002); end
  def test_flows_n23; assert_in_epsilon(9734.603670673598, worksheet.flows_n23, 0.002); end
  def test_flows_o23; assert_in_epsilon(11414.089547146199, worksheet.flows_o23, 0.002); end
  def test_flows_p23; assert_in_epsilon(13308.511072837413, worksheet.flows_p23, 0.002); end
  def test_flows_v23; assert_equal("Thermal generation", worksheet.flows_v23); end
  def test_flows_w23; assert_equal(:na, worksheet.flows_w23); end
  def test_flows_x23; assert_equal(:na, worksheet.flows_x23); end
  def test_flows_y23; assert_equal(:na, worksheet.flows_y23); end
  def test_flows_z23; assert_equal(:na, worksheet.flows_z23); end
  def test_flows_aa23; assert_equal(:na, worksheet.flows_aa23); end
  def test_flows_ab23; assert_equal(:na, worksheet.flows_ab23); end
  def test_flows_ac23; assert_equal(:na, worksheet.flows_ac23); end
  def test_flows_ad23; assert_equal(:na, worksheet.flows_ad23); end
  def test_flows_ae23; assert_equal(:na, worksheet.flows_ae23); end
  def test_flows_af23; assert_equal(:na, worksheet.flows_af23); end
  def test_flows_ah23; assert_equal(:na, worksheet.flows_ah23); end
  def test_flows_ai23; assert_equal(:na, worksheet.flows_ai23); end
  def test_flows_aj23; assert_equal(:na, worksheet.flows_aj23); end
  def test_flows_ak23; assert_equal(:na, worksheet.flows_ak23); end
  def test_flows_al23; assert_equal(:na, worksheet.flows_al23); end
  def test_flows_am23; assert_equal(:na, worksheet.flows_am23); end
  def test_flows_an23; assert_equal(:na, worksheet.flows_an23); end
  def test_flows_ao23; assert_equal(:na, worksheet.flows_ao23); end
  def test_flows_ap23; assert_equal(:na, worksheet.flows_ap23); end
  def test_flows_aq23; assert_equal(:na, worksheet.flows_aq23); end
  def test_flows_as23; assert_equal(:na, worksheet.flows_as23); end
  def test_flows_at23; assert_equal(:na, worksheet.flows_at23); end
  def test_flows_au23; assert_equal(:na, worksheet.flows_au23); end
  def test_flows_av23; assert_equal(:na, worksheet.flows_av23); end
  def test_flows_aw23; assert_equal(:na, worksheet.flows_aw23); end
  def test_flows_ax23; assert_equal(:na, worksheet.flows_ax23); end
  def test_flows_ay23; assert_equal(:na, worksheet.flows_ay23); end
  def test_flows_az23; assert_equal(:na, worksheet.flows_az23); end
  def test_flows_ba23; assert_equal(:na, worksheet.flows_ba23); end
  def test_flows_bb23; assert_equal(:na, worksheet.flows_bb23); end
  def test_flows_c24; assert_equal("Solar", worksheet.flows_c24); end
  def test_flows_d24; assert_equal("Re.d", worksheet.flows_d24); end
  def test_flows_e24; assert_equal("Electricity end use", worksheet.flows_e24); end
  def test_flows_f24; assert_equal("R.01", worksheet.flows_f24); end
  def test_flows_g24; assert_in_delta(0.0, (worksheet.flows_g24||0), 0.002); end
  def test_flows_h24; assert_in_delta(0.006712584794189628, worksheet.flows_h24, 0.002); end
  def test_flows_i24; assert_in_delta(0.008343481908130715, worksheet.flows_i24, 0.002); end
  def test_flows_j24; assert_in_delta(0.01030636880151314, worksheet.flows_j24, 0.002); end
  def test_flows_k24; assert_in_delta(0.012604194567051186, worksheet.flows_k24, 0.002); end
  def test_flows_l24; assert_in_delta(0.015376347043190616, worksheet.flows_l24, 0.002); end
  def test_flows_m24; assert_in_delta(0.018875581865225786, worksheet.flows_m24, 0.002); end
  def test_flows_n24; assert_in_delta(0.0227946021274454, worksheet.flows_n24, 0.002); end
  def test_flows_o24; assert_in_delta(0.02698231738599941, worksheet.flows_o24, 0.002); end
  def test_flows_p24; assert_in_delta(0.031523895529958705, worksheet.flows_p24, 0.002); end
  def test_flows_v24; assert_equal("Electricity imports", worksheet.flows_v24); end
  def test_flows_w24; assert_equal(:na, worksheet.flows_w24); end
  def test_flows_x24; assert_equal(:na, worksheet.flows_x24); end
  def test_flows_y24; assert_equal(:na, worksheet.flows_y24); end
  def test_flows_z24; assert_equal(:na, worksheet.flows_z24); end
  def test_flows_aa24; assert_equal(:na, worksheet.flows_aa24); end
  def test_flows_ab24; assert_equal(:na, worksheet.flows_ab24); end
  def test_flows_ac24; assert_equal(:na, worksheet.flows_ac24); end
  def test_flows_ad24; assert_equal(:na, worksheet.flows_ad24); end
  def test_flows_ae24; assert_equal(:na, worksheet.flows_ae24); end
  def test_flows_af24; assert_equal(:na, worksheet.flows_af24); end
  def test_flows_ah24; assert_in_delta(0.0, (worksheet.flows_ah24||0), 0.002); end
  def test_flows_ai24; assert_in_delta(0.0, (worksheet.flows_ai24||0), 0.002); end
  def test_flows_aj24; assert_in_delta(0.0, (worksheet.flows_aj24||0), 0.002); end
  def test_flows_ak24; assert_in_delta(0.0, (worksheet.flows_ak24||0), 0.002); end
  def test_flows_al24; assert_in_delta(0.0, (worksheet.flows_al24||0), 0.002); end
  def test_flows_am24; assert_in_delta(0.0, (worksheet.flows_am24||0), 0.002); end
  def test_flows_an24; assert_in_delta(0.0, (worksheet.flows_an24||0), 0.002); end
  def test_flows_ao24; assert_in_delta(0.0, (worksheet.flows_ao24||0), 0.002); end
  def test_flows_ap24; assert_in_delta(0.0, (worksheet.flows_ap24||0), 0.002); end
  def test_flows_aq24; assert_in_delta(0.0, (worksheet.flows_aq24||0), 0.002); end
  def test_flows_as24; assert_equal(:na, worksheet.flows_as24); end
  def test_flows_at24; assert_equal(:na, worksheet.flows_at24); end
  def test_flows_au24; assert_equal(:na, worksheet.flows_au24); end
  def test_flows_av24; assert_equal(:na, worksheet.flows_av24); end
  def test_flows_aw24; assert_equal(:na, worksheet.flows_aw24); end
  def test_flows_ax24; assert_equal(:na, worksheet.flows_ax24); end
  def test_flows_ay24; assert_equal(:na, worksheet.flows_ay24); end
  def test_flows_az24; assert_equal(:na, worksheet.flows_az24); end
  def test_flows_ba24; assert_equal(:na, worksheet.flows_ba24); end
  def test_flows_bb24; assert_equal(:na, worksheet.flows_bb24); end
  def test_flows_c25; assert_equal("Solar", worksheet.flows_c25); end
  def test_flows_d25; assert_equal("Re.e", worksheet.flows_d25); end
  def test_flows_e25; assert_equal("Electricity grid", worksheet.flows_e25); end
  def test_flows_f25; assert_equal("R.01", worksheet.flows_f25); end
  def test_flows_g25; assert_in_delta(0.0, (worksheet.flows_g25||0), 0.002); end
  def test_flows_h25; assert_in_delta(0.0, (worksheet.flows_h25||0), 0.002); end
  def test_flows_i25; assert_in_epsilon(10.052989056000001, worksheet.flows_i25, 0.002); end
  def test_flows_j25; assert_in_epsilon(10.052989056000001, worksheet.flows_j25, 0.002); end
  def test_flows_k25; assert_in_epsilon(10.052989056000001, worksheet.flows_k25, 0.002); end
  def test_flows_l25; assert_in_epsilon(10.052989056000001, worksheet.flows_l25, 0.002); end
  def test_flows_m25; assert_in_epsilon(10.052989056000001, worksheet.flows_m25, 0.002); end
  def test_flows_n25; assert_in_epsilon(10.052989056000001, worksheet.flows_n25, 0.002); end
  def test_flows_o25; assert_in_epsilon(10.052989056000001, worksheet.flows_o25, 0.002); end
  def test_flows_p25; assert_in_epsilon(10.052989056000001, worksheet.flows_p25, 0.002); end
  def test_flows_v25; assert_equal("Wind", worksheet.flows_v25); end
  def test_flows_w25; assert_in_delta(0.02592772416, worksheet.flows_w25, 0.002); end
  def test_flows_x25; assert_in_delta(0.06859359936, worksheet.flows_x25, 0.002); end
  def test_flows_y25; assert_in_epsilon(11.57035420224, worksheet.flows_y25, 0.002); end
  def test_flows_z25; assert_in_epsilon(22.589636970240004, worksheet.flows_z25, 0.002); end
  def test_flows_aa25; assert_in_epsilon(22.589636970240004, worksheet.flows_aa25, 0.002); end
  def test_flows_ab25; assert_in_epsilon(22.589636970240004, worksheet.flows_ab25, 0.002); end
  def test_flows_ac25; assert_in_epsilon(22.589636970240004, worksheet.flows_ac25, 0.002); end
  def test_flows_ad25; assert_in_epsilon(22.589636970240004, worksheet.flows_ad25, 0.002); end
  def test_flows_ae25; assert_in_epsilon(22.589636970240004, worksheet.flows_ae25, 0.002); end
  def test_flows_af25; assert_in_epsilon(22.589636970240004, worksheet.flows_af25, 0.002); end
  def test_flows_ah25; assert_in_delta(0.0, (worksheet.flows_ah25||0), 0.002); end
  def test_flows_ai25; assert_in_delta(0.0, (worksheet.flows_ai25||0), 0.002); end
  def test_flows_aj25; assert_in_delta(0.0, (worksheet.flows_aj25||0), 0.002); end
  def test_flows_ak25; assert_in_delta(0.0, (worksheet.flows_ak25||0), 0.002); end
  def test_flows_al25; assert_in_delta(0.0, (worksheet.flows_al25||0), 0.002); end
  def test_flows_am25; assert_in_delta(0.0, (worksheet.flows_am25||0), 0.002); end
  def test_flows_an25; assert_in_delta(0.0, (worksheet.flows_an25||0), 0.002); end
  def test_flows_ao25; assert_in_delta(0.0, (worksheet.flows_ao25||0), 0.002); end
  def test_flows_ap25; assert_in_delta(0.0, (worksheet.flows_ap25||0), 0.002); end
  def test_flows_aq25; assert_in_delta(0.0, (worksheet.flows_aq25||0), 0.002); end
  def test_flows_as25; assert_in_delta(0.02592772416, worksheet.flows_as25, 0.002); end
  def test_flows_at25; assert_in_delta(0.06859359936, worksheet.flows_at25, 0.002); end
  def test_flows_au25; assert_in_epsilon(11.57035420224, worksheet.flows_au25, 0.002); end
  def test_flows_av25; assert_in_epsilon(22.589636970240004, worksheet.flows_av25, 0.002); end
  def test_flows_aw25; assert_in_epsilon(22.589636970240004, worksheet.flows_aw25, 0.002); end
  def test_flows_ax25; assert_in_epsilon(22.589636970240004, worksheet.flows_ax25, 0.002); end
  def test_flows_ay25; assert_in_epsilon(22.589636970240004, worksheet.flows_ay25, 0.002); end
  def test_flows_az25; assert_in_epsilon(22.589636970240004, worksheet.flows_az25, 0.002); end
  def test_flows_ba25; assert_in_epsilon(22.589636970240004, worksheet.flows_ba25, 0.002); end
  def test_flows_bb25; assert_in_epsilon(22.589636970240004, worksheet.flows_bb25, 0.002); end
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
  def test_flows_v26; assert_equal("Hydro", worksheet.flows_v26); end
  def test_flows_w26; assert_in_epsilon(5.285898, worksheet.flows_w26, 0.002); end
  def test_flows_x26; assert_in_epsilon(5.285898, worksheet.flows_x26, 0.002); end
  def test_flows_y26; assert_in_epsilon(5.317455600000001, worksheet.flows_y26, 0.002); end
  def test_flows_z26; assert_in_epsilon(5.396349600000001, worksheet.flows_z26, 0.002); end
  def test_flows_aa26; assert_in_epsilon(4.8440916, worksheet.flows_aa26, 0.002); end
  def test_flows_ab26; assert_in_epsilon(4.8440916, worksheet.flows_ab26, 0.002); end
  def test_flows_ac26; assert_in_epsilon(4.8440916, worksheet.flows_ac26, 0.002); end
  def test_flows_ad26; assert_in_epsilon(4.8440916, worksheet.flows_ad26, 0.002); end
  def test_flows_ae26; assert_in_epsilon(4.8440916, worksheet.flows_ae26, 0.002); end
  def test_flows_af26; assert_in_epsilon(4.8440916, worksheet.flows_af26, 0.002); end
  def test_flows_ah26; assert_in_delta(0.0, (worksheet.flows_ah26||0), 0.002); end
  def test_flows_ai26; assert_in_delta(0.0, (worksheet.flows_ai26||0), 0.002); end
  def test_flows_aj26; assert_in_delta(0.0, (worksheet.flows_aj26||0), 0.002); end
  def test_flows_ak26; assert_in_delta(0.0, (worksheet.flows_ak26||0), 0.002); end
  def test_flows_al26; assert_in_delta(0.0, (worksheet.flows_al26||0), 0.002); end
  def test_flows_am26; assert_in_delta(0.0, (worksheet.flows_am26||0), 0.002); end
  def test_flows_an26; assert_in_delta(0.0, (worksheet.flows_an26||0), 0.002); end
  def test_flows_ao26; assert_in_delta(0.0, (worksheet.flows_ao26||0), 0.002); end
  def test_flows_ap26; assert_in_delta(0.0, (worksheet.flows_ap26||0), 0.002); end
  def test_flows_aq26; assert_in_delta(0.0, (worksheet.flows_aq26||0), 0.002); end
  def test_flows_as26; assert_in_epsilon(5.285898, worksheet.flows_as26, 0.002); end
  def test_flows_at26; assert_in_epsilon(5.285898, worksheet.flows_at26, 0.002); end
  def test_flows_au26; assert_in_epsilon(5.317455600000001, worksheet.flows_au26, 0.002); end
  def test_flows_av26; assert_in_epsilon(5.396349600000001, worksheet.flows_av26, 0.002); end
  def test_flows_aw26; assert_in_epsilon(4.8440916, worksheet.flows_aw26, 0.002); end
  def test_flows_ax26; assert_in_epsilon(4.8440916, worksheet.flows_ax26, 0.002); end
  def test_flows_ay26; assert_in_epsilon(4.8440916, worksheet.flows_ay26, 0.002); end
  def test_flows_az26; assert_in_epsilon(4.8440916, worksheet.flows_az26, 0.002); end
  def test_flows_ba26; assert_in_epsilon(4.8440916, worksheet.flows_ba26, 0.002); end
  def test_flows_bb26; assert_in_epsilon(4.8440916, worksheet.flows_bb26, 0.002); end
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
  def test_flows_v27; assert_equal("H2 conversion", worksheet.flows_v27); end
  def test_flows_w27; assert_in_delta(0.0, (worksheet.flows_w27||0), 0.002); end
  def test_flows_x27; assert_in_delta(0.0, (worksheet.flows_x27||0), 0.002); end
  def test_flows_y27; assert_in_delta(0.0, (worksheet.flows_y27||0), 0.002); end
  def test_flows_z27; assert_in_delta(0.0, (worksheet.flows_z27||0), 0.002); end
  def test_flows_aa27; assert_in_delta(0.0, (worksheet.flows_aa27||0), 0.002); end
  def test_flows_ab27; assert_in_delta(0.0, (worksheet.flows_ab27||0), 0.002); end
  def test_flows_ac27; assert_in_delta(0.0, (worksheet.flows_ac27||0), 0.002); end
  def test_flows_ad27; assert_in_delta(0.0, (worksheet.flows_ad27||0), 0.002); end
  def test_flows_ae27; assert_in_delta(0.0, (worksheet.flows_ae27||0), 0.002); end
  def test_flows_af27; assert_in_delta(0.0, (worksheet.flows_af27||0), 0.002); end
  def test_flows_ah27; assert_in_delta(0.0, (worksheet.flows_ah27||0), 0.002); end
  def test_flows_ai27; assert_in_delta(0.0, (worksheet.flows_ai27||0), 0.002); end
  def test_flows_aj27; assert_in_delta(0.0, (worksheet.flows_aj27||0), 0.002); end
  def test_flows_ak27; assert_in_delta(0.0, (worksheet.flows_ak27||0), 0.002); end
  def test_flows_al27; assert_in_delta(0.0, (worksheet.flows_al27||0), 0.002); end
  def test_flows_am27; assert_in_delta(0.0, (worksheet.flows_am27||0), 0.002); end
  def test_flows_an27; assert_in_delta(0.0, (worksheet.flows_an27||0), 0.002); end
  def test_flows_ao27; assert_in_delta(0.0, (worksheet.flows_ao27||0), 0.002); end
  def test_flows_ap27; assert_in_delta(0.0, (worksheet.flows_ap27||0), 0.002); end
  def test_flows_aq27; assert_in_delta(0.0, (worksheet.flows_aq27||0), 0.002); end
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
  def test_flows_v28; assert_equal("Biomass", worksheet.flows_v28); end
  def test_flows_w28; assert_in_epsilon(163.2199006445324, worksheet.flows_w28, 0.002); end
  def test_flows_x28; assert_in_epsilon(168.52376120703116, worksheet.flows_x28, 0.002); end
  def test_flows_y28; assert_in_epsilon(182.76461114323592, worksheet.flows_y28, 0.002); end
  def test_flows_z28; assert_in_epsilon(195.7323413160981, worksheet.flows_z28, 0.002); end
  def test_flows_aa28; assert_in_epsilon(213.44519059153808, worksheet.flows_aa28, 0.002); end
  def test_flows_ab28; assert_in_epsilon(229.63575872059695, worksheet.flows_ab28, 0.002); end
  def test_flows_ac28; assert_in_epsilon(248.1803158357144, worksheet.flows_ac28, 0.002); end
  def test_flows_ad28; assert_in_epsilon(266.91606947991374, worksheet.flows_ad28, 0.002); end
  def test_flows_ae28; assert_in_epsilon(287.6532088356317, worksheet.flows_ae28, 0.002); end
  def test_flows_af28; assert_in_epsilon(309.16696461673274, worksheet.flows_af28, 0.002); end
  def test_flows_ah28; assert_in_delta(0.0, (worksheet.flows_ah28||0), 0.002); end
  def test_flows_ai28; assert_in_delta(0.0, (worksheet.flows_ai28||0), 0.002); end
  def test_flows_aj28; assert_in_delta(0.0, (worksheet.flows_aj28||0), 0.002); end
  def test_flows_ak28; assert_in_delta(0.0, (worksheet.flows_ak28||0), 0.002); end
  def test_flows_al28; assert_in_delta(0.0, (worksheet.flows_al28||0), 0.002); end
  def test_flows_am28; assert_in_delta(0.0, (worksheet.flows_am28||0), 0.002); end
  def test_flows_an28; assert_in_delta(0.0, (worksheet.flows_an28||0), 0.002); end
  def test_flows_ao28; assert_in_delta(0.0, (worksheet.flows_ao28||0), 0.002); end
  def test_flows_ap28; assert_in_delta(0.0, (worksheet.flows_ap28||0), 0.002); end
  def test_flows_aq28; assert_in_delta(0.0, (worksheet.flows_aq28||0), 0.002); end
  def test_flows_as28; assert_in_epsilon(163.2199006445324, worksheet.flows_as28, 0.002); end
  def test_flows_at28; assert_in_epsilon(168.52376120703116, worksheet.flows_at28, 0.002); end
  def test_flows_au28; assert_in_epsilon(182.76461114323592, worksheet.flows_au28, 0.002); end
  def test_flows_av28; assert_in_epsilon(195.7323413160981, worksheet.flows_av28, 0.002); end
  def test_flows_aw28; assert_in_epsilon(213.44519059153808, worksheet.flows_aw28, 0.002); end
  def test_flows_ax28; assert_in_epsilon(229.63575872059695, worksheet.flows_ax28, 0.002); end
  def test_flows_ay28; assert_in_epsilon(248.1803158357144, worksheet.flows_ay28, 0.002); end
  def test_flows_az28; assert_in_epsilon(266.91606947991374, worksheet.flows_az28, 0.002); end
  def test_flows_ba28; assert_in_epsilon(287.6532088356317, worksheet.flows_ba28, 0.002); end
  def test_flows_bb28; assert_in_epsilon(309.16696461673274, worksheet.flows_bb28, 0.002); end
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
  def test_flows_v29; assert_equal("H2", worksheet.flows_v29); end
  def test_flows_w29; assert_in_delta(0.0, (worksheet.flows_w29||0), 0.002); end
  def test_flows_x29; assert_in_delta(0.0, (worksheet.flows_x29||0), 0.002); end
  def test_flows_y29; assert_in_delta(0.0, (worksheet.flows_y29||0), 0.002); end
  def test_flows_z29; assert_in_delta(0.0, (worksheet.flows_z29||0), 0.002); end
  def test_flows_aa29; assert_in_delta(0.0, (worksheet.flows_aa29||0), 0.002); end
  def test_flows_ab29; assert_in_delta(0.0, (worksheet.flows_ab29||0), 0.002); end
  def test_flows_ac29; assert_in_delta(0.0, (worksheet.flows_ac29||0), 0.002); end
  def test_flows_ad29; assert_in_delta(0.0, (worksheet.flows_ad29||0), 0.002); end
  def test_flows_ae29; assert_in_delta(0.0, (worksheet.flows_ae29||0), 0.002); end
  def test_flows_af29; assert_in_delta(0.0, (worksheet.flows_af29||0), 0.002); end
  def test_flows_ah29; assert_in_delta(0.0, (worksheet.flows_ah29||0), 0.002); end
  def test_flows_ai29; assert_in_delta(0.0, (worksheet.flows_ai29||0), 0.002); end
  def test_flows_aj29; assert_in_delta(0.0, (worksheet.flows_aj29||0), 0.002); end
  def test_flows_ak29; assert_in_delta(0.0, (worksheet.flows_ak29||0), 0.002); end
  def test_flows_al29; assert_in_delta(0.0, (worksheet.flows_al29||0), 0.002); end
  def test_flows_am29; assert_in_delta(0.0, (worksheet.flows_am29||0), 0.002); end
  def test_flows_an29; assert_in_delta(0.0, (worksheet.flows_an29||0), 0.002); end
  def test_flows_ao29; assert_in_delta(0.0, (worksheet.flows_ao29||0), 0.002); end
  def test_flows_ap29; assert_in_delta(0.0, (worksheet.flows_ap29||0), 0.002); end
  def test_flows_aq29; assert_in_delta(0.0, (worksheet.flows_aq29||0), 0.002); end
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
  def test_flows_h30; assert_in_epsilon(2953.538318683469, worksheet.flows_h30, 0.002); end
  def test_flows_i30; assert_in_epsilon(3339.499939777273, worksheet.flows_i30, 0.002); end
  def test_flows_j30; assert_in_epsilon(3877.2385483592484, worksheet.flows_j30, 0.002); end
  def test_flows_k30; assert_in_epsilon(4526.616219019146, worksheet.flows_k30, 0.002); end
  def test_flows_l30; assert_in_epsilon(5335.569013425854, worksheet.flows_l30, 0.002); end
  def test_flows_m30; assert_in_epsilon(6312.003138046904, worksheet.flows_m30, 0.002); end
  def test_flows_n30; assert_in_epsilon(7383.534935533378, worksheet.flows_n30, 0.002); end
  def test_flows_o30; assert_in_epsilon(8635.880535968327, worksheet.flows_o30, 0.002); end
  def test_flows_p30; assert_in_epsilon(10119.539097466995, worksheet.flows_p30, 0.002); end
  def test_flows_c31; assert_equal("Liquid", worksheet.flows_c31); end
  def test_flows_d31; assert_equal("Therm.a", worksheet.flows_d31); end
  def test_flows_e31; assert_equal("Thermal generation", worksheet.flows_e31); end
  def test_flows_f31; assert_equal("C.02", worksheet.flows_f31); end
  def test_flows_g31; assert_equal(:na, worksheet.flows_g31); end
  def test_flows_h31; assert_equal(:na, worksheet.flows_h31); end
  def test_flows_i31; assert_equal(:na, worksheet.flows_i31); end
  def test_flows_j31; assert_equal(:na, worksheet.flows_j31); end
  def test_flows_k31; assert_equal(:na, worksheet.flows_k31); end
  def test_flows_l31; assert_equal(:na, worksheet.flows_l31); end
  def test_flows_m31; assert_equal(:na, worksheet.flows_m31); end
  def test_flows_n31; assert_equal(:na, worksheet.flows_n31); end
  def test_flows_o31; assert_equal(:na, worksheet.flows_o31); end
  def test_flows_p31; assert_equal(:na, worksheet.flows_p31); end
  def test_flows_c32; assert_equal("Gas", worksheet.flows_c32); end
  def test_flows_d32; assert_equal("Therm.a", worksheet.flows_d32); end
  def test_flows_e32; assert_equal("Thermal generation", worksheet.flows_e32); end
  def test_flows_f32; assert_equal("C.03", worksheet.flows_f32); end
  def test_flows_g32; assert_equal(:na, worksheet.flows_g32); end
  def test_flows_h32; assert_equal(:na, worksheet.flows_h32); end
  def test_flows_i32; assert_equal(:na, worksheet.flows_i32); end
  def test_flows_j32; assert_equal(:na, worksheet.flows_j32); end
  def test_flows_k32; assert_equal(:na, worksheet.flows_k32); end
  def test_flows_l32; assert_equal(:na, worksheet.flows_l32); end
  def test_flows_m32; assert_equal(:na, worksheet.flows_m32); end
  def test_flows_n32; assert_equal(:na, worksheet.flows_n32); end
  def test_flows_o32; assert_equal(:na, worksheet.flows_o32); end
  def test_flows_p32; assert_equal(:na, worksheet.flows_p32); end
  def test_flows_c33; assert_equal("Gas", worksheet.flows_c33); end
  def test_flows_d33; assert_equal("Therm.b", worksheet.flows_d33); end
  def test_flows_e33; assert_equal("Thermal generation", worksheet.flows_e33); end
  def test_flows_f33; assert_equal("C.03", worksheet.flows_f33); end
  def test_flows_g33; assert_in_delta(0.0, (worksheet.flows_g33||0), 0.002); end
  def test_flows_h33; assert_in_delta(0.0, (worksheet.flows_h33||0), 0.002); end
  def test_flows_i33; assert_in_epsilon(5.218838100000001, worksheet.flows_i33, 0.002); end
  def test_flows_j33; assert_in_epsilon(8.102650872450816, worksheet.flows_j33, 0.002); end
  def test_flows_k33; assert_in_epsilon(8.953796231536266, worksheet.flows_k33, 0.002); end
  def test_flows_l33; assert_in_epsilon(9.997575382966621, worksheet.flows_l33, 0.002); end
  def test_flows_m33; assert_in_epsilon(11.283781755976317, worksheet.flows_m33, 0.002); end
  def test_flows_n33; assert_in_epsilon(12.499062517885834, worksheet.flows_n33, 0.002); end
  def test_flows_o33; assert_in_epsilon(14.086859818698361, worksheet.flows_o33, 0.002); end
  def test_flows_p33; assert_in_epsilon(10.343835219685745, worksheet.flows_p33, 0.002); end
  def test_flows_c34; assert_equal("Nuclear", worksheet.flows_c34); end
  def test_flows_d34; assert_equal("Nuke", worksheet.flows_d34); end
  def test_flows_e34; assert_equal("Thermal generation", worksheet.flows_e34); end
  def test_flows_f34; assert_equal("N.01", worksheet.flows_f34); end
  def test_flows_g34; assert_in_epsilon(110.05713000000002, worksheet.flows_g34, 0.002); end
  def test_flows_h34; assert_in_epsilon(143.78431500000002, worksheet.flows_h34, 0.002); end
  def test_flows_i34; assert_in_epsilon(143.78431500000002, worksheet.flows_i34, 0.002); end
  def test_flows_j34; assert_in_epsilon(143.78431500000002, worksheet.flows_j34, 0.002); end
  def test_flows_k34; assert_in_epsilon(143.78431500000002, worksheet.flows_k34, 0.002); end
  def test_flows_l34; assert_in_epsilon(143.78431500000002, worksheet.flows_l34, 0.002); end
  def test_flows_m34; assert_in_epsilon(143.78431500000002, worksheet.flows_m34, 0.002); end
  def test_flows_n34; assert_in_epsilon(143.78431500000002, worksheet.flows_n34, 0.002); end
  def test_flows_o34; assert_in_epsilon(143.78431500000002, worksheet.flows_o34, 0.002); end
  def test_flows_p34; assert_in_delta(0.0, (worksheet.flows_p34||0), 0.002); end
  def test_flows_c35; assert_equal("Thermal generation", worksheet.flows_c35); end
  def test_flows_d35; assert_equal("Therm.a", worksheet.flows_d35); end
  def test_flows_e35; assert_equal("Electricity grid", worksheet.flows_e35); end
  def test_flows_f35; assert_equal("V.02", worksheet.flows_f35); end
  def test_flows_g35; assert_in_epsilon(824.7142358557012, worksheet.flows_g35, 0.002); end
  def test_flows_h35; assert_in_epsilon(980.3853136682282, worksheet.flows_h35, 0.002); end
  def test_flows_i35; assert_in_epsilon(1134.2304029242412, worksheet.flows_i35, 0.002); end
  def test_flows_j35; assert_in_epsilon(1334.084607236435, worksheet.flows_j35, 0.002); end
  def test_flows_k35; assert_in_epsilon(1587.6345427350327, worksheet.flows_k35, 0.002); end
  def test_flows_l35; assert_in_epsilon(1901.5595730885907, worksheet.flows_l35, 0.002); end
  def test_flows_m35; assert_in_epsilon(2290.1047878475647, worksheet.flows_m35, 0.002); end
  def test_flows_n35; assert_in_epsilon(2728.2180235899664, worksheet.flows_n35, 0.002); end
  def test_flows_o35; assert_in_epsilon(3191.585895750897, worksheet.flows_o35, 0.002); end
  def test_flows_p35; assert_in_epsilon(3751.5032151559085, worksheet.flows_p35, 0.002); end
  def test_flows_c36; assert_equal("Thermal generation", worksheet.flows_c36); end
  def test_flows_d36; assert_equal("Therm.b", worksheet.flows_d36); end
  def test_flows_e36; assert_equal("Electricity grid", worksheet.flows_e36); end
  def test_flows_f36; assert_equal("V.02", worksheet.flows_f36); end
  def test_flows_g36; assert_in_epsilon(35.49889177920001, worksheet.flows_g36, 0.002); end
  def test_flows_h36; assert_in_epsilon(46.188163575000004, worksheet.flows_h36, 0.002); end
  def test_flows_i36; assert_in_epsilon(48.768227212315075, worksheet.flows_i36, 0.002); end
  def test_flows_j36; assert_in_epsilon(49.56823317417277, worksheet.flows_j36, 0.002); end
  def test_flows_k36; assert_in_epsilon(49.779080138824156, worksheet.flows_k36, 0.002); end
  def test_flows_l36; assert_in_epsilon(50.018028711366235, worksheet.flows_l36, 0.002); end
  def test_flows_m36; assert_in_epsilon(50.36444449124184, worksheet.flows_m36, 0.002); end
  def test_flows_n36; assert_in_epsilon(50.730244000576604, worksheet.flows_n36, 0.002); end
  def test_flows_o36; assert_in_epsilon(51.208170988121175, worksheet.flows_o36, 0.002); end
  def test_flows_p36; assert_in_epsilon(3.136367763918374, worksheet.flows_p36, 0.002); end
  def test_flows_c37; assert_equal("Thermal generation", worksheet.flows_c37); end
  def test_flows_e37; assert_equal("Losses", worksheet.flows_e37); end
  def test_flows_g37; assert_equal(:na, worksheet.flows_g37); end
  def test_flows_h37; assert_equal(:na, worksheet.flows_h37); end
  def test_flows_i37; assert_equal(:na, worksheet.flows_i37); end
  def test_flows_j37; assert_equal(:na, worksheet.flows_j37); end
  def test_flows_k37; assert_equal(:na, worksheet.flows_k37); end
  def test_flows_l37; assert_equal(:na, worksheet.flows_l37); end
  def test_flows_m37; assert_equal(:na, worksheet.flows_m37); end
  def test_flows_n37; assert_equal(:na, worksheet.flows_n37); end
  def test_flows_o37; assert_equal(:na, worksheet.flows_o37); end
  def test_flows_p37; assert_equal(:na, worksheet.flows_p37); end
  def test_flows_c38; assert_equal("Electricity imports", worksheet.flows_c38); end
  def test_flows_d38; assert_equal("ElcDSB.i", worksheet.flows_d38); end
  def test_flows_e38; assert_equal("Electricity grid", worksheet.flows_e38); end
  def test_flows_f38; assert_equal("Y.02", worksheet.flows_f38); end
  def test_flows_g38; assert_equal(:na, worksheet.flows_g38); end
  def test_flows_h38; assert_equal(:na, worksheet.flows_h38); end
  def test_flows_i38; assert_equal(:na, worksheet.flows_i38); end
  def test_flows_j38; assert_equal(:na, worksheet.flows_j38); end
  def test_flows_k38; assert_equal(:na, worksheet.flows_k38); end
  def test_flows_l38; assert_equal(:na, worksheet.flows_l38); end
  def test_flows_m38; assert_equal(:na, worksheet.flows_m38); end
  def test_flows_n38; assert_equal(:na, worksheet.flows_n38); end
  def test_flows_o38; assert_equal(:na, worksheet.flows_o38); end
  def test_flows_p38; assert_equal(:na, worksheet.flows_p38); end
  def test_flows_c39; assert_equal("Wind", worksheet.flows_c39); end
  def test_flows_d39; assert_equal("Re.a", worksheet.flows_d39); end
  def test_flows_e39; assert_equal("Electricity grid", worksheet.flows_e39); end
  def test_flows_f39; assert_equal("V.02", worksheet.flows_f39); end
  def test_flows_g39; assert_in_delta(0.02592772416, worksheet.flows_g39, 0.002); end
  def test_flows_h39; assert_in_delta(0.06859359936, worksheet.flows_h39, 0.002); end
  def test_flows_i39; assert_in_epsilon(11.57035420224, worksheet.flows_i39, 0.002); end
  def test_flows_j39; assert_in_epsilon(22.589636970240004, worksheet.flows_j39, 0.002); end
  def test_flows_k39; assert_in_epsilon(22.589636970240004, worksheet.flows_k39, 0.002); end
  def test_flows_l39; assert_in_epsilon(22.589636970240004, worksheet.flows_l39, 0.002); end
  def test_flows_m39; assert_in_epsilon(22.589636970240004, worksheet.flows_m39, 0.002); end
  def test_flows_n39; assert_in_epsilon(22.589636970240004, worksheet.flows_n39, 0.002); end
  def test_flows_o39; assert_in_epsilon(22.589636970240004, worksheet.flows_o39, 0.002); end
  def test_flows_p39; assert_in_epsilon(22.589636970240004, worksheet.flows_p39, 0.002); end
  def test_flows_c40; assert_equal("Hydro", worksheet.flows_c40); end
  def test_flows_d40; assert_equal("Re.b", worksheet.flows_d40); end
  def test_flows_e40; assert_equal("Electricity grid", worksheet.flows_e40); end
  def test_flows_f40; assert_equal("R.06", worksheet.flows_f40); end
  def test_flows_g40; assert_in_epsilon(5.285898, worksheet.flows_g40, 0.002); end
  def test_flows_h40; assert_in_epsilon(5.285898, worksheet.flows_h40, 0.002); end
  def test_flows_i40; assert_in_epsilon(5.317455600000001, worksheet.flows_i40, 0.002); end
  def test_flows_j40; assert_in_epsilon(5.396349600000001, worksheet.flows_j40, 0.002); end
  def test_flows_k40; assert_in_epsilon(4.8440916, worksheet.flows_k40, 0.002); end
  def test_flows_l40; assert_in_epsilon(4.8440916, worksheet.flows_l40, 0.002); end
  def test_flows_m40; assert_in_epsilon(4.8440916, worksheet.flows_m40, 0.002); end
  def test_flows_n40; assert_in_epsilon(4.8440916, worksheet.flows_n40, 0.002); end
  def test_flows_o40; assert_in_epsilon(4.8440916, worksheet.flows_o40, 0.002); end
  def test_flows_p40; assert_in_epsilon(4.8440916, worksheet.flows_p40, 0.002); end
  def test_flows_c41; assert_equal("Electricity grid", worksheet.flows_c41); end
  def test_flows_e41; assert_equal("Over generation / exports", worksheet.flows_e41); end
  def test_flows_g41; assert_equal(:na, worksheet.flows_g41); end
  def test_flows_h41; assert_equal(:na, worksheet.flows_h41); end
  def test_flows_i41; assert_equal(:na, worksheet.flows_i41); end
  def test_flows_j41; assert_equal(:na, worksheet.flows_j41); end
  def test_flows_k41; assert_equal(:na, worksheet.flows_k41); end
  def test_flows_l41; assert_equal(:na, worksheet.flows_l41); end
  def test_flows_m41; assert_equal(:na, worksheet.flows_m41); end
  def test_flows_n41; assert_equal(:na, worksheet.flows_n41); end
  def test_flows_o41; assert_equal(:na, worksheet.flows_o41); end
  def test_flows_p41; assert_equal(:na, worksheet.flows_p41); end
  def test_flows_c42; assert_equal("Electricity grid", worksheet.flows_c42); end
  def test_flows_d42; assert_equal("ElcDSB.d", worksheet.flows_d42); end
  def test_flows_e42; assert_equal("Losses", worksheet.flows_e42); end
  def test_flows_f42; assert_equal("X.02", worksheet.flows_f42); end
  def test_flows_g42; assert_in_epsilon(90.84932115895033, worksheet.flows_g42, 0.002); end
  def test_flows_h42; assert_in_epsilon(158.9995858643287, worksheet.flows_h42, 0.002); end
  def test_flows_i42; assert_in_epsilon(186.76808786958173, worksheet.flows_i42, 0.002); end
  def test_flows_j42; assert_in_epsilon(220.76120365327574, worksheet.flows_j42, 0.002); end
  def test_flows_k42; assert_in_epsilon(260.78309851830403, worksheet.flows_k42, 0.002); end
  def test_flows_l42; assert_in_epsilon(310.43954119358096, worksheet.flows_l42, 0.002); end
  def test_flows_m42; assert_in_epsilon(371.9073720572961, worksheet.flows_m42, 0.002); end
  def test_flows_n42; assert_in_epsilon(441.2129354504381, worksheet.flows_n42, 0.002); end
  def test_flows_o42; assert_in_epsilon(514.5279511341514, worksheet.flows_o42, 0.002); end
  def test_flows_p42; assert_in_epsilon(595.4297428233928, worksheet.flows_p42, 0.002); end
  def test_flows_c43; assert_equal("Gas", worksheet.flows_c43); end
  def test_flows_d43; assert_equal("H2prod", worksheet.flows_d43); end
  def test_flows_e43; assert_equal("H2 conversion", worksheet.flows_e43); end
  def test_flows_f43; assert_equal("V.05", worksheet.flows_f43); end
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
  def test_flows_c44; assert_equal("Electricity grid", worksheet.flows_c44); end
  def test_flows_d44; assert_equal("H2prod", worksheet.flows_d44); end
  def test_flows_e44; assert_equal("H2 conversion", worksheet.flows_e44); end
  def test_flows_f44; assert_equal("V.01", worksheet.flows_f44); end
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
  def test_flows_e45; assert_equal("H2", worksheet.flows_e45); end
  def test_flows_f45; assert_equal("V.12", worksheet.flows_f45); end
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
  def test_flows_c46; assert_equal("H2 conversion", worksheet.flows_c46); end
  def test_flows_d46; assert_equal("H2prod", worksheet.flows_d46); end
  def test_flows_e46; assert_equal("Losses", worksheet.flows_e46); end
  def test_flows_f46; assert_equal("X.01", worksheet.flows_f46); end
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
  def test_flows_c47; assert_equal("H2", worksheet.flows_c47); end
  def test_flows_d47; assert_equal("TRA.a", worksheet.flows_d47); end
  def test_flows_e47; assert_equal("Road transport", worksheet.flows_e47); end
  def test_flows_f47; assert_equal("V.12", worksheet.flows_f47); end
  def test_flows_g47; assert_in_delta(0.0, (worksheet.flows_g47||0), 0.002); end
  def test_flows_h47; assert_in_delta(0.0, (worksheet.flows_h47||0), 0.002); end
  def test_flows_i47; assert_in_delta(0.0, (worksheet.flows_i47||0), 0.002); end
  def test_flows_j47; assert_in_delta(0.0, (worksheet.flows_j47||0), 0.002); end
  def test_flows_k47; assert_in_delta(0.0, (worksheet.flows_k47||0), 0.002); end
  def test_flows_l47; assert_in_delta(0.0, (worksheet.flows_l47||0), 0.002); end
  def test_flows_m47; assert_in_delta(0.0, (worksheet.flows_m47||0), 0.002); end
  def test_flows_n47; assert_in_delta(0.0, (worksheet.flows_n47||0), 0.002); end
  def test_flows_o47; assert_in_delta(0.0, (worksheet.flows_o47||0), 0.002); end
  def test_flows_p47; assert_in_delta(0.0, (worksheet.flows_p47||0), 0.002); end
  def test_flows_c48; assert_equal("Electricity grid", worksheet.flows_c48); end
  def test_flows_e48; assert_equal("Heating - homes", worksheet.flows_e48); end
  def test_flows_f48; assert_equal("V.01", worksheet.flows_f48); end
  def test_flows_g48; assert_in_epsilon(18.278014600654977, worksheet.flows_g48, 0.002); end
  def test_flows_h48; assert_in_epsilon(20.443606211346424, worksheet.flows_h48, 0.002); end
  def test_flows_i48; assert_in_epsilon(23.17406759376472, worksheet.flows_i48, 0.002); end
  def test_flows_j48; assert_in_epsilon(25.964592711263727, worksheet.flows_j48, 0.002); end
  def test_flows_k48; assert_in_epsilon(28.772210690549997, worksheet.flows_k48, 0.002); end
  def test_flows_l48; assert_in_epsilon(31.508300263582537, worksheet.flows_l48, 0.002); end
  def test_flows_m48; assert_in_epsilon(34.59353444729231, worksheet.flows_m48, 0.002); end
  def test_flows_n48; assert_in_epsilon(37.64426158470966, worksheet.flows_n48, 0.002); end
  def test_flows_o48; assert_in_epsilon(41.225484013215876, worksheet.flows_o48, 0.002); end
  def test_flows_p48; assert_in_epsilon(44.72029362447997, worksheet.flows_p48, 0.002); end
  def test_flows_c49; assert_equal("Solid", worksheet.flows_c49); end
  def test_flows_e49; assert_equal("Heating - homes", worksheet.flows_e49); end
  def test_flows_f49; assert_equal("V.03", worksheet.flows_f49); end
  def test_flows_g49; assert_in_epsilon(21.32467675301719, worksheet.flows_g49, 0.002); end
  def test_flows_h49; assert_in_epsilon(22.145699101366496, worksheet.flows_h49, 0.002); end
  def test_flows_i49; assert_in_epsilon(23.299658471439724, worksheet.flows_i49, 0.002); end
  def test_flows_j49; assert_in_epsilon(24.37399126921341, worksheet.flows_j49, 0.002); end
  def test_flows_k49; assert_in_epsilon(25.351911192696033, worksheet.flows_k49, 0.002); end
  def test_flows_l49; assert_in_epsilon(26.182475259720988, worksheet.flows_l49, 0.002); end
  def test_flows_m49; assert_in_epsilon(24.440349856320147, worksheet.flows_m49, 0.002); end
  def test_flows_n49; assert_in_epsilon(22.62257453811536, worksheet.flows_n49, 0.002); end
  def test_flows_o49; assert_in_epsilon(20.073036727201576, worksheet.flows_o49, 0.002); end
  def test_flows_p49; assert_in_epsilon(17.514287536624373, worksheet.flows_p49, 0.002); end
  def test_flows_s49; assert_equal("For referencing", worksheet.flows_s49); end
  def test_flows_c50; assert_equal("Liquid", worksheet.flows_c50); end
  def test_flows_e50; assert_equal("Heating - homes", worksheet.flows_e50); end
  def test_flows_f50; assert_equal("V.04", worksheet.flows_f50); end
  def test_flows_g50; assert_in_epsilon(5.3342914487858675, worksheet.flows_g50, 0.002); end
  def test_flows_h50; assert_in_epsilon(5.358170678566345, worksheet.flows_h50, 0.002); end
  def test_flows_i50; assert_in_epsilon(5.428703537355805, worksheet.flows_i50, 0.002); end
  def test_flows_j50; assert_in_epsilon(5.4606820467496275, worksheet.flows_j50, 0.002); end
  def test_flows_k50; assert_in_epsilon(5.453295885140176, worksheet.flows_k50, 0.002); end
  def test_flows_l50; assert_in_epsilon(5.399359158334526, worksheet.flows_l50, 0.002); end
  def test_flows_m50; assert_in_epsilon(5.004554464813791, worksheet.flows_m50, 0.002); end
  def test_flows_n50; assert_in_epsilon(4.627484595515089, worksheet.flows_n50, 0.002); end
  def test_flows_o50; assert_in_epsilon(4.195337238597847, worksheet.flows_o50, 0.002); end
  def test_flows_p50; assert_in_epsilon(3.809312551429139, worksheet.flows_p50, 0.002); end
  def test_flows_s50; assert_equal("RES.L", worksheet.flows_s50); end
  def test_flows_t50; assert_equal("RES.W", worksheet.flows_t50); end
  def test_flows_c51; assert_equal("Gas", worksheet.flows_c51); end
  def test_flows_e51; assert_equal("Heating - homes", worksheet.flows_e51); end
  def test_flows_f51; assert_equal("V.05", worksheet.flows_f51); end
  def test_flows_g51; assert_in_delta(0.015068956280176871, worksheet.flows_g51, 0.002); end
  def test_flows_h51; assert_in_delta(0.014386689741063219, worksheet.flows_h51, 0.002); end
  def test_flows_i51; assert_in_delta(0.013127949088388866, worksheet.flows_i51, 0.002); end
  def test_flows_j51; assert_in_delta(0.01147314941568747, worksheet.flows_j51, 0.002); end
  def test_flows_k51; assert_in_delta(0.009427891121885067, worksheet.flows_k51, 0.002); end
  def test_flows_l51; assert_in_delta(0.007000887302485457, worksheet.flows_l51, 0.002); end
  def test_flows_m51; assert_in_delta(0.005891673284144599, worksheet.flows_m51, 0.002); end
  def test_flows_n51; assert_in_delta(0.004638897568401214, worksheet.flows_n51, 0.002); end
  def test_flows_o51; assert_in_delta(0.002896073900201351, worksheet.flows_o51, 0.002); end
  def test_flows_p51; assert_in_delta(0.0010107417237876924, worksheet.flows_p51, 0.002); end
  def test_flows_s51; assert_equal("RES.R", worksheet.flows_s51); end
  def test_flows_t51; assert_equal("RES.H", worksheet.flows_t51); end
  def test_flows_c52; assert_equal("Biomass", worksheet.flows_c52); end
  def test_flows_e52; assert_equal("Heating - homes", worksheet.flows_e52); end
  def test_flows_f52; assert_equal("V.09", worksheet.flows_f52); end
  def test_flows_g52; assert_in_epsilon(16.266345503722842, worksheet.flows_g52, 0.002); end
  def test_flows_h52; assert_in_epsilon(15.58958607998778, worksheet.flows_h52, 0.002); end
  def test_flows_i52; assert_in_epsilon(14.894940505817708, worksheet.flows_i52, 0.002); end
  def test_flows_j52; assert_in_epsilon(14.06956899348285, worksheet.flows_j52, 0.002); end
  def test_flows_k52; assert_in_epsilon(13.131051287420403, worksheet.flows_k52, 0.002); end
  def test_flows_l52; assert_in_epsilon(12.083649399995991, worksheet.flows_l52, 0.002); end
  def test_flows_m52; assert_in_epsilon(10.468906059672689, worksheet.flows_m52, 0.002); end
  def test_flows_n52; assert_in_epsilon(8.936512238393204, worksheet.flows_n52, 0.002); end
  def test_flows_o52; assert_in_epsilon(7.231605011555197, worksheet.flows_o52, 0.002); end
  def test_flows_p52; assert_in_epsilon(5.708576313928643, worksheet.flows_p52, 0.002); end
  def test_flows_s52; assert_equal("RES.N", worksheet.flows_s52); end
  def test_flows_t52; assert_equal("RES.K", worksheet.flows_t52); end
  def test_flows_c53; assert_equal("Electricity grid", worksheet.flows_c53); end
  def test_flows_e53; assert_equal("Cooking and appliances - homes", worksheet.flows_e53); end
  def test_flows_f53; assert_equal("V.01", worksheet.flows_f53); end
  def test_flows_g53; assert_in_epsilon(79.26102235893828, worksheet.flows_g53, 0.002); end
  def test_flows_h53; assert_in_epsilon(89.16183296764322, worksheet.flows_h53, 0.002); end
  def test_flows_i53; assert_in_epsilon(101.82336579955468, worksheet.flows_i53, 0.002); end
  def test_flows_j53; assert_in_epsilon(114.83023537819896, worksheet.flows_j53, 0.002); end
  def test_flows_k53; assert_in_epsilon(127.98401319022592, worksheet.flows_k53, 0.002); end
  def test_flows_l53; assert_in_epsilon(140.8796783052747, worksheet.flows_l53, 0.002); end
  def test_flows_m53; assert_in_epsilon(154.44751851667368, worksheet.flows_m53, 0.002); end
  def test_flows_n53; assert_in_epsilon(167.72542419446054, worksheet.flows_n53, 0.002); end
  def test_flows_o53; assert_in_epsilon(183.15376441971847, worksheet.flows_o53, 0.002); end
  def test_flows_p53; assert_in_epsilon(198.00795846995516, worksheet.flows_p53, 0.002); end
  def test_flows_s53; assert_equal("RES.O", worksheet.flows_s53); end
  def test_flows_c54; assert_equal("Solid", worksheet.flows_c54); end
  def test_flows_e54; assert_equal("Cooking and appliances - homes", worksheet.flows_e54); end
  def test_flows_f54; assert_equal("V.03", worksheet.flows_f54); end
  def test_flows_g54; assert_in_epsilon(15.100491858366102, worksheet.flows_g54, 0.002); end
  def test_flows_h54; assert_in_epsilon(13.052335372611548, worksheet.flows_h54, 0.002); end
  def test_flows_i54; assert_in_epsilon(10.88372808003203, worksheet.flows_i54, 0.002); end
  def test_flows_j54; assert_in_epsilon(8.720652454072175, worksheet.flows_j54, 0.002); end
  def test_flows_k54; assert_in_epsilon(6.626708937591596, worksheet.flows_k54, 0.002); end
  def test_flows_l54; assert_in_epsilon(4.65693925995718, worksheet.flows_l54, 0.002); end
  def test_flows_m54; assert_in_epsilon(3.174382263600136, worksheet.flows_m54, 0.002); end
  def test_flows_n54; assert_in_epsilon(1.9011172762556503, worksheet.flows_n54, 0.002); end
  def test_flows_o54; assert_in_delta(0.7863965403610562, worksheet.flows_o54, 0.002); end
  def test_flows_p54; assert_in_delta(0.0, (worksheet.flows_p54||0), 0.002); end
  def test_flows_c55; assert_equal("Liquid", worksheet.flows_c55); end
  def test_flows_e55; assert_equal("Cooking and appliances - homes", worksheet.flows_e55); end
  def test_flows_f55; assert_equal("V.04", worksheet.flows_f55); end
  def test_flows_g55; assert_in_epsilon(3.4511677094739746, worksheet.flows_g55, 0.002); end
  def test_flows_h55; assert_in_epsilon(3.4798161996520305, worksheet.flows_h55, 0.002); end
  def test_flows_i55; assert_in_epsilon(3.521730295180215, worksheet.flows_i55, 0.002); end
  def test_flows_j55; assert_in_epsilon(3.548776171765986, worksheet.flows_j55, 0.002); end
  def test_flows_k55; assert_in_epsilon(3.561452632411384, worksheet.flows_k55, 0.002); end
  def test_flows_l55; assert_in_epsilon(3.5556785954963654, worksheet.flows_l55, 0.002); end
  def test_flows_m55; assert_in_epsilon(3.3173770930263062, worksheet.flows_m55, 0.002); end
  def test_flows_n55; assert_in_epsilon(3.056749307015346, worksheet.flows_n55, 0.002); end
  def test_flows_o55; assert_in_epsilon(2.666014727721953, worksheet.flows_o55, 0.002); end
  def test_flows_p55; assert_in_epsilon(2.256719705100393, worksheet.flows_p55, 0.002); end
  def test_flows_c56; assert_equal("Gas", worksheet.flows_c56); end
  def test_flows_e56; assert_equal("Cooking and appliances - homes", worksheet.flows_e56); end
  def test_flows_f56; assert_equal("V.05", worksheet.flows_f56); end
  def test_flows_g56; assert_in_epsilon(2.4633649553347055, worksheet.flows_g56, 0.002); end
  def test_flows_h56; assert_in_epsilon(2.5137752989703186, worksheet.flows_h56, 0.002); end
  def test_flows_i56; assert_in_epsilon(2.5974927341070035, worksheet.flows_i56, 0.002); end
  def test_flows_j56; assert_in_epsilon(2.6758840620915763, worksheet.flows_j56, 0.002); end
  def test_flows_k56; assert_in_epsilon(2.748522930975043, worksheet.flows_k56, 0.002); end
  def test_flows_l56; assert_in_epsilon(2.8111697221347667, worksheet.flows_l56, 0.002); end
  def test_flows_m56; assert_in_epsilon(2.8447971148211133, worksheet.flows_m56, 0.002); end
  def test_flows_n56; assert_in_epsilon(2.8779691876578735, worksheet.flows_n56, 0.002); end
  def test_flows_o56; assert_in_epsilon(2.9180932601088565, worksheet.flows_o56, 0.002); end
  def test_flows_p56; assert_in_epsilon(2.960900363107184, worksheet.flows_p56, 0.002); end
  def test_flows_c57; assert_equal("Biomass", worksheet.flows_c57); end
  def test_flows_e57; assert_equal("Cooking and appliances - homes", worksheet.flows_e57); end
  def test_flows_f57; assert_equal("V.09", worksheet.flows_f57); end
  def test_flows_g57; assert_in_epsilon(47.457671511457704, worksheet.flows_g57, 0.002); end
  def test_flows_h57; assert_in_epsilon(50.0527522376054, worksheet.flows_h57, 0.002); end
  def test_flows_i57; assert_in_epsilon(52.897024468055974, worksheet.flows_i57, 0.002); end
  def test_flows_j57; assert_in_epsilon(54.664715353633504, worksheet.flows_j57, 0.002); end
  def test_flows_k57; assert_in_epsilon(55.2291122942373, worksheet.flows_k57, 0.002); end
  def test_flows_l57; assert_in_epsilon(54.425451988779976, worksheet.flows_l57, 0.002); end
  def test_flows_m57; assert_in_epsilon(47.371637838405945, worksheet.flows_m57, 0.002); end
  def test_flows_n57; assert_in_epsilon(40.28965286496314, worksheet.flows_n57, 0.002); end
  def test_flows_o57; assert_in_epsilon(31.716023401114626, worksheet.flows_o57, 0.002); end
  def test_flows_p57; assert_in_epsilon(23.465518541594438, worksheet.flows_p57, 0.002); end
  def test_flows_c58; assert_equal("Electricity grid", worksheet.flows_c58); end
  def test_flows_e58; assert_equal("Water Heating - homes", worksheet.flows_e58); end
  def test_flows_f58; assert_equal("V.01", worksheet.flows_f58); end
  def test_flows_g58; assert_in_epsilon(53.82287433271977, worksheet.flows_g58, 0.002); end
  def test_flows_h58; assert_in_epsilon(58.482355904786985, worksheet.flows_h58, 0.002); end
  def test_flows_i58; assert_in_epsilon(66.64333764692498, worksheet.flows_i58, 0.002); end
  def test_flows_j58; assert_in_epsilon(74.98419985153545, worksheet.flows_j58, 0.002); end
  def test_flows_k58; assert_in_epsilon(83.37340054585337, worksheet.flows_k58, 0.002); end
  def test_flows_l58; assert_in_epsilon(91.54663437096207, worksheet.flows_l58, 0.002); end
  def test_flows_m58; assert_in_epsilon(102.87691825956753, worksheet.flows_m58, 0.002); end
  def test_flows_n58; assert_in_epsilon(113.96586044897447, worksheet.flows_n58, 0.002); end
  def test_flows_o58; assert_in_epsilon(127.36236166595938, worksheet.flows_o58, 0.002); end
  def test_flows_p58; assert_in_epsilon(140.23729509677128, worksheet.flows_p58, 0.002); end
  def test_flows_c59; assert_equal("Solid", worksheet.flows_c59); end
  def test_flows_e59; assert_equal("Water Heating - homes", worksheet.flows_e59); end
  def test_flows_f59; assert_equal("V.03", worksheet.flows_f59); end
  def test_flows_g59; assert_in_delta(0.0, (worksheet.flows_g59||0), 0.002); end
  def test_flows_h59; assert_in_delta(0.0, (worksheet.flows_h59||0), 0.002); end
  def test_flows_i59; assert_in_delta(0.0, (worksheet.flows_i59||0), 0.002); end
  def test_flows_j59; assert_in_delta(0.0, (worksheet.flows_j59||0), 0.002); end
  def test_flows_k59; assert_in_delta(0.0, (worksheet.flows_k59||0), 0.002); end
  def test_flows_l59; assert_in_delta(0.0, (worksheet.flows_l59||0), 0.002); end
  def test_flows_m59; assert_in_delta(0.0, (worksheet.flows_m59||0), 0.002); end
  def test_flows_n59; assert_in_delta(0.0, (worksheet.flows_n59||0), 0.002); end
  def test_flows_o59; assert_in_delta(0.0, (worksheet.flows_o59||0), 0.002); end
  def test_flows_p59; assert_in_delta(0.0, (worksheet.flows_p59||0), 0.002); end
  def test_flows_c60; assert_equal("Liquid", worksheet.flows_c60); end
  def test_flows_e60; assert_equal("Water Heating - homes", worksheet.flows_e60); end
  def test_flows_f60; assert_equal("V.04", worksheet.flows_f60); end
  def test_flows_g60; assert_in_epsilon(5.644927673044796, worksheet.flows_g60, 0.002); end
  def test_flows_h60; assert_in_epsilon(4.929798226715382, worksheet.flows_h60, 0.002); end
  def test_flows_i60; assert_in_epsilon(4.636912281430522, worksheet.flows_i60, 0.002); end
  def test_flows_j60; assert_in_epsilon(4.300666103926695, worksheet.flows_j60, 0.002); end
  def test_flows_k60; assert_in_epsilon(3.9281921175097665, worksheet.flows_k60, 0.002); end
  def test_flows_l60; assert_in_epsilon(3.5228599374014946, worksheet.flows_l60, 0.002); end
  def test_flows_m60; assert_in_epsilon(2.9269535797251782, worksheet.flows_m60, 0.002); end
  def test_flows_n60; assert_in_epsilon(2.371564865839861, worksheet.flows_n60, 0.002); end
  def test_flows_o60; assert_in_epsilon(1.78287817925808, worksheet.flows_o60, 0.002); end
  def test_flows_p60; assert_in_epsilon(1.2737664576625272, worksheet.flows_p60, 0.002); end
  def test_flows_c61; assert_equal("Gas", worksheet.flows_c61); end
  def test_flows_e61; assert_equal("Water Heating - homes", worksheet.flows_e61); end
  def test_flows_f61; assert_equal("V.05", worksheet.flows_f61); end
  def test_flows_g61; assert_in_delta(0.6349425066792579, worksheet.flows_g61, 0.002); end
  def test_flows_h61; assert_in_delta(0.6507114506982068, worksheet.flows_h61, 0.002); end
  def test_flows_i61; assert_in_delta(0.6721165687913535, worksheet.flows_i61, 0.002); end
  def test_flows_j61; assert_in_delta(0.6892764109593555, worksheet.flows_j61, 0.002); end
  def test_flows_k61; assert_in_delta(0.7018216426120365, worksheet.flows_k61, 0.002); end
  def test_flows_l61; assert_in_delta(0.7085260153714574, worksheet.flows_l61, 0.002); end
  def test_flows_m61; assert_in_delta(0.7105691737703769, worksheet.flows_m61, 0.002); end
  def test_flows_n61; assert_in_delta(0.7127420622845735, worksheet.flows_n61, 0.002); end
  def test_flows_o61; assert_in_delta(0.717455285275314, worksheet.flows_o61, 0.002); end
  def test_flows_p61; assert_in_delta(0.7235615077015787, worksheet.flows_p61, 0.002); end
  def test_flows_c62; assert_equal("Biomass", worksheet.flows_c62); end
  def test_flows_e62; assert_equal("Water Heating - homes", worksheet.flows_e62); end
  def test_flows_f62; assert_equal("V.09", worksheet.flows_f62); end
  def test_flows_g62; assert_in_epsilon(22.876873050465257, worksheet.flows_g62, 0.002); end
  def test_flows_h62; assert_in_epsilon(18.03286473348595, worksheet.flows_h62, 0.002); end
  def test_flows_i62; assert_in_epsilon(17.544490627103755, worksheet.flows_i62, 0.002); end
  def test_flows_j62; assert_in_epsilon(16.990304040416728, worksheet.flows_j62, 0.002); end
  def test_flows_k62; assert_in_epsilon(16.39093519490917, worksheet.flows_k62, 0.002); end
  def test_flows_l62; assert_in_epsilon(15.74622663044358, worksheet.flows_l62, 0.002); end
  def test_flows_m62; assert_in_epsilon(13.743640602363831, worksheet.flows_m62, 0.002); end
  def test_flows_n62; assert_in_epsilon(11.878072407390926, worksheet.flows_n62, 0.002); end
  def test_flows_o62; assert_in_epsilon(9.844298615891867, worksheet.flows_o62, 0.002); end
  def test_flows_p62; assert_in_epsilon(8.082138116236152, worksheet.flows_p62, 0.002); end
  def test_flows_c63; assert_equal("Electricity grid", worksheet.flows_c63); end
  def test_flows_d63; assert_equal("COM.A.Info.Coolingandheating", worksheet.flows_d63); end
  def test_flows_e63; assert_equal("Commercial cooling and heating", worksheet.flows_e63); end
  def test_flows_f63; assert_equal("V.01", worksheet.flows_f63); end
  def test_flows_g63; assert_in_epsilon(41.27443955742615, worksheet.flows_g63, 0.002); end
  def test_flows_h63; assert_in_epsilon(45.43290967520784, worksheet.flows_h63, 0.002); end
  def test_flows_i63; assert_in_epsilon(49.97541766824158, worksheet.flows_i63, 0.002); end
  def test_flows_j63; assert_in_epsilon(55.25611670132003, worksheet.flows_j63, 0.002); end
  def test_flows_k63; assert_in_epsilon(61.109684944358335, worksheet.flows_k63, 0.002); end
  def test_flows_l63; assert_in_epsilon(67.97364535851872, worksheet.flows_l63, 0.002); end
  def test_flows_m63; assert_in_epsilon(76.59416238418046, worksheet.flows_m63, 0.002); end
  def test_flows_n63; assert_in_epsilon(85.53516990573578, worksheet.flows_n63, 0.002); end
  def test_flows_o63; assert_in_epsilon(94.22808352877422, worksheet.flows_o63, 0.002); end
  def test_flows_p63; assert_in_epsilon(103.50680730946596, worksheet.flows_p63, 0.002); end
  def test_flows_c64; assert_equal("Solid", worksheet.flows_c64); end
  def test_flows_d64; assert_equal("COM.A.Info.Coolingandheating", worksheet.flows_d64); end
  def test_flows_e64; assert_equal("Commercial cooling and heating", worksheet.flows_e64); end
  def test_flows_f64; assert_equal("V.03", worksheet.flows_f64); end
  def test_flows_g64; assert_in_epsilon(37.609830101872745, worksheet.flows_g64, 0.002); end
  def test_flows_h64; assert_in_epsilon(41.39908457244845, worksheet.flows_h64, 0.002); end
  def test_flows_i64; assert_in_epsilon(44.23597169492584, worksheet.flows_i64, 0.002); end
  def test_flows_j64; assert_in_epsilon(46.22153983693279, worksheet.flows_j64, 0.002); end
  def test_flows_k64; assert_in_epsilon(47.041617557984424, worksheet.flows_k64, 0.002); end
  def test_flows_l64; assert_in_epsilon(46.75378831454535, worksheet.flows_l64, 0.002); end
  def test_flows_m64; assert_in_epsilon(45.36349022922884, worksheet.flows_m64, 0.002); end
  def test_flows_n64; assert_in_epsilon(41.920469625922834, worksheet.flows_n64, 0.002); end
  def test_flows_o64; assert_in_epsilon(36.229295558067896, worksheet.flows_o64, 0.002); end
  def test_flows_p64; assert_in_epsilon(20.429659711337262, worksheet.flows_p64, 0.002); end
  def test_flows_c65; assert_equal("Electricity grid", worksheet.flows_c65); end
  def test_flows_d65; assert_equal("COM.A.Info.Lightingandappliances", worksheet.flows_d65); end
  def test_flows_e65; assert_equal("Commercial Lighting and appliances", worksheet.flows_e65); end
  def test_flows_f65; assert_equal("V.01", worksheet.flows_f65); end
  def test_flows_g65; assert_in_epsilon(66.31882649948713, worksheet.flows_g65, 0.002); end
  def test_flows_h65; assert_in_epsilon(73.27534381707133, worksheet.flows_h65, 0.002); end
  def test_flows_i65; assert_in_epsilon(83.032821642558, worksheet.flows_i65, 0.002); end
  def test_flows_j65; assert_in_epsilon(95.83492552697079, worksheet.flows_j65, 0.002); end
  def test_flows_k65; assert_in_epsilon(111.60863101589538, worksheet.flows_k65, 0.002); end
  def test_flows_l65; assert_in_epsilon(131.53649868322344, worksheet.flows_l65, 0.002); end
  def test_flows_m65; assert_in_epsilon(157.73626432352526, worksheet.flows_m65, 0.002); end
  def test_flows_n65; assert_in_epsilon(187.33628986791524, worksheet.flows_n65, 0.002); end
  def test_flows_o65; assert_in_epsilon(219.0020838638601, worksheet.flows_o65, 0.002); end
  def test_flows_p65; assert_in_epsilon(262.85719659410455, worksheet.flows_p65, 0.002); end
  def test_flows_c66; assert_equal("Solid", worksheet.flows_c66); end
  def test_flows_d66; assert_equal("COM.A.Info.Lightingandappliances", worksheet.flows_d66); end
  def test_flows_e66; assert_equal("Commercial Lighting and appliances", worksheet.flows_e66); end
  def test_flows_f66; assert_equal("V.03", worksheet.flows_f66); end
  def test_flows_g66; assert_in_epsilon(34.802490336309795, worksheet.flows_g66, 0.002); end
  def test_flows_h66; assert_in_epsilon(38.45309966549429, worksheet.flows_h66, 0.002); end
  def test_flows_i66; assert_in_epsilon(42.14171264491727, worksheet.flows_i66, 0.002); end
  def test_flows_j66; assert_in_epsilon(44.91788848604287, worksheet.flows_j66, 0.002); end
  def test_flows_k66; assert_in_epsilon(46.42397334865243, worksheet.flows_k66, 0.002); end
  def test_flows_l66; assert_in_epsilon(46.70929203131664, worksheet.flows_l66, 0.002); end
  def test_flows_m66; assert_in_epsilon(45.76585130281139, worksheet.flows_m66, 0.002); end
  def test_flows_n66; assert_in_epsilon(42.51706952498352, worksheet.flows_n66, 0.002); end
  def test_flows_o66; assert_in_epsilon(36.716872633092365, worksheet.flows_o66, 0.002); end
  def test_flows_p66; assert_in_epsilon(19.48939458833347, worksheet.flows_p66, 0.002); end
  def test_flows_c67; assert_equal("Liquid", worksheet.flows_c67); end
  def test_flows_d67; assert_equal("COM.A.Info.Lightingandappliances", worksheet.flows_d67); end
  def test_flows_e67; assert_equal("Commercial Lighting and appliances", worksheet.flows_e67); end
  def test_flows_f67; assert_equal("V.04", worksheet.flows_f67); end
  def test_flows_g67; assert_in_epsilon(3.3138531529945108, worksheet.flows_g67, 0.002); end
  def test_flows_h67; assert_in_epsilon(3.6614599799475727, worksheet.flows_h67, 0.002); end
  def test_flows_i67; assert_in_epsilon(4.012685470822414, worksheet.flows_i67, 0.002); end
  def test_flows_j67; assert_in_epsilon(4.277029745484361, worksheet.flows_j67, 0.002); end
  def test_flows_k67; assert_in_epsilon(4.420437416096624, worksheet.flows_k67, 0.002); end
  def test_flows_l67; assert_in_epsilon(4.44760513332083, worksheet.flows_l67, 0.002); end
  def test_flows_m67; assert_in_epsilon(4.357771790861463, worksheet.flows_m67, 0.002); end
  def test_flows_n67; assert_in_epsilon(4.048426521778412, worksheet.flows_n67, 0.002); end
  def test_flows_o67; assert_in_epsilon(3.4961384362867536, worksheet.flows_o67, 0.002); end
  def test_flows_p67; assert_in_epsilon(1.8557577656769244, worksheet.flows_p67, 0.002); end
  def test_flows_c68; assert_equal("Gas", worksheet.flows_c68); end
  def test_flows_d68; assert_equal("COM.A.Info.Lightingandappliances", worksheet.flows_d68); end
  def test_flows_e68; assert_equal("Commercial Lighting and appliances", worksheet.flows_e68); end
  def test_flows_f68; assert_equal("V.05", worksheet.flows_f68); end
  def test_flows_g68; assert_in_epsilon(21.953965566336375, worksheet.flows_g68, 0.002); end
  def test_flows_h68; assert_in_epsilon(24.25682811251016, worksheet.flows_h68, 0.002); end
  def test_flows_i68; assert_in_epsilon(26.712122207235183, worksheet.flows_i68, 0.002); end
  def test_flows_j68; assert_in_epsilon(28.755175603985855, worksheet.flows_j68, 0.002); end
  def test_flows_k68; assert_in_epsilon(30.17972090238496, worksheet.flows_k68, 0.002); end
  def test_flows_l68; assert_in_epsilon(31.055568968973702, worksheet.flows_l68, 0.002); end
  def test_flows_m68; assert_in_epsilon(31.45287879141929, worksheet.flows_m68, 0.002); end
  def test_flows_n68; assert_in_epsilon(30.657206988956716, worksheet.flows_n68, 0.002); end
  def test_flows_o68; assert_in_epsilon(28.481330014006495, worksheet.flows_o68, 0.002); end
  def test_flows_p68; assert_in_epsilon(20.227407792680506, worksheet.flows_p68, 0.002); end
  def test_flows_c69; assert_equal("Electricity grid", worksheet.flows_c69); end
  def test_flows_d69; assert_equal("IND.a", worksheet.flows_d69); end
  def test_flows_e69; assert_equal("Industry", worksheet.flows_e69); end
  def test_flows_f69; assert_equal("V.01", worksheet.flows_f69); end
  def test_flows_g69; assert_in_epsilon(420.195789614721, worksheet.flows_g69, 0.002); end
  def test_flows_h69; assert_in_epsilon(490.24315031241656, worksheet.flows_h69, 0.002); end
  def test_flows_i69; assert_in_epsilon(596.3425470061676, worksheet.flows_i69, 0.002); end
  def test_flows_j69; assert_in_epsilon(733.829151378504, worksheet.flows_j69, 0.002); end
  def test_flows_k69; assert_in_epsilon(900.9026774158084, worksheet.flows_k69, 0.002); end
  def test_flows_l69; assert_in_epsilon(1114.8558375058033, worksheet.flows_l69, 0.002); end
  def test_flows_m69; assert_in_epsilon(1383.4784848808067, worksheet.flows_m69, 0.002); end
  def test_flows_n69; assert_in_epsilon(1685.4158194265008, worksheet.flows_n69, 0.002); end
  def test_flows_o69; assert_in_epsilon(2003.7065605365333, worksheet.flows_o69, 0.002); end
  def test_flows_p69; assert_in_epsilon(2348.810650048444, worksheet.flows_p69, 0.002); end
  def test_flows_c70; assert_equal("Solid", worksheet.flows_c70); end
  def test_flows_d70; assert_equal("IND.a", worksheet.flows_d70); end
  def test_flows_e70; assert_equal("Industry", worksheet.flows_e70); end
  def test_flows_f70; assert_equal("V.03", worksheet.flows_f70); end
  def test_flows_g70; assert_in_epsilon(563.1529939635911, worksheet.flows_g70, 0.002); end
  def test_flows_h70; assert_in_epsilon(658.5973341825863, worksheet.flows_h70, 0.002); end
  def test_flows_i70; assert_in_epsilon(816.9866852007149, worksheet.flows_i70, 0.002); end
  def test_flows_j70; assert_in_epsilon(979.7334807860495, worksheet.flows_j70, 0.002); end
  def test_flows_k70; assert_in_epsilon(1227.7978953517913, worksheet.flows_k70, 0.002); end
  def test_flows_l70; assert_in_epsilon(1481.9462286838393, worksheet.flows_l70, 0.002); end
  def test_flows_m70; assert_in_epsilon(1862.980794341287, worksheet.flows_m70, 0.002); end
  def test_flows_n70; assert_in_epsilon(2247.8601342995416, worksheet.flows_n70, 0.002); end
  def test_flows_o70; assert_in_epsilon(2691.3210123863496, worksheet.flows_o70, 0.002); end
  def test_flows_p70; assert_in_epsilon(3139.7026822170346, worksheet.flows_p70, 0.002); end
  def test_flows_c71; assert_equal("Liquid", worksheet.flows_c71); end
  def test_flows_d71; assert_equal("IND.a", worksheet.flows_d71); end
  def test_flows_e71; assert_equal("Industry", worksheet.flows_e71); end
  def test_flows_f71; assert_equal("V.04", worksheet.flows_f71); end
  def test_flows_g71; assert_in_epsilon(40.045856161100005, worksheet.flows_g71, 0.002); end
  def test_flows_h71; assert_in_epsilon(46.941163250667834, worksheet.flows_h71, 0.002); end
  def test_flows_i71; assert_in_epsilon(57.559459584101035, worksheet.flows_i71, 0.002); end
  def test_flows_j71; assert_in_epsilon(70.9694629407787, worksheet.flows_j71, 0.002); end
  def test_flows_k71; assert_in_epsilon(88.64215735762144, worksheet.flows_k71, 0.002); end
  def test_flows_l71; assert_in_epsilon(111.03921669809255, worksheet.flows_l71, 0.002); end
  def test_flows_m71; assert_in_epsilon(140.04263246009776, worksheet.flows_m71, 0.002); end
  def test_flows_n71; assert_in_epsilon(172.83134911723067, worksheet.flows_n71, 0.002); end
  def test_flows_o71; assert_in_epsilon(208.13531091969085, worksheet.flows_o71, 0.002); end
  def test_flows_p71; assert_in_epsilon(246.6614811881929, worksheet.flows_p71, 0.002); end
  def test_flows_c72; assert_equal("Gas", worksheet.flows_c72); end
  def test_flows_d72; assert_equal("IND.a", worksheet.flows_d72); end
  def test_flows_e72; assert_equal("Industry", worksheet.flows_e72); end
  def test_flows_f72; assert_equal("V.05", worksheet.flows_f72); end
  def test_flows_g72; assert_in_epsilon(102.69422191550348, worksheet.flows_g72, 0.002); end
  def test_flows_h72; assert_in_epsilon(118.54350547630284, worksheet.flows_h72, 0.002); end
  def test_flows_i72; assert_in_epsilon(139.48684361055598, worksheet.flows_i72, 0.002); end
  def test_flows_j72; assert_in_epsilon(160.4301817448091, worksheet.flows_j72, 0.002); end
  def test_flows_k72; assert_in_epsilon(191.9663244874638, worksheet.flows_k72, 0.002); end
  def test_flows_l72; assert_in_epsilon(223.50246723011853, worksheet.flows_l72, 0.002); end
  def test_flows_m72; assert_in_epsilon(275.8572098560213, worksheet.flows_m72, 0.002); end
  def test_flows_n72; assert_in_epsilon(328.2119524819242, worksheet.flows_n72, 0.002); end
  def test_flows_o72; assert_in_epsilon(385.8732416468778, worksheet.flows_o72, 0.002); end
  def test_flows_p72; assert_in_epsilon(443.5345308118313, worksheet.flows_p72, 0.002); end
  def test_flows_c73; assert_equal("Biomass", worksheet.flows_c73); end
  def test_flows_d73; assert_equal("IND.a", worksheet.flows_d73); end
  def test_flows_e73; assert_equal("Industry", worksheet.flows_e73); end
  def test_flows_f73; assert_equal("V.09", worksheet.flows_f73); end
  def test_flows_g73; assert_in_epsilon(76.61901057888659, worksheet.flows_g73, 0.002); end
  def test_flows_h73; assert_in_epsilon(84.84855815595202, worksheet.flows_h73, 0.002); end
  def test_flows_i73; assert_in_epsilon(97.4281555422585, worksheet.flows_i73, 0.002); end
  def test_flows_j73; assert_in_epsilon(110.00775292856498, worksheet.flows_j73, 0.002); end
  def test_flows_k73; assert_in_epsilon(128.69409181497122, worksheet.flows_k73, 0.002); end
  def test_flows_l73; assert_in_epsilon(147.3804307013774, worksheet.flows_l73, 0.002); end
  def test_flows_m73; assert_in_epsilon(176.59613133527193, worksheet.flows_m73, 0.002); end
  def test_flows_n73; assert_in_epsilon(205.81183196916646, worksheet.flows_n73, 0.002); end
  def test_flows_o73; assert_in_epsilon(238.86128180707001, worksheet.flows_o73, 0.002); end
  def test_flows_p73; assert_in_epsilon(271.9107316449735, worksheet.flows_p73, 0.002); end
  def test_flows_c74; assert_equal("Electricity grid", worksheet.flows_c74); end
  def test_flows_d74; assert_equal("AGL", worksheet.flows_d74); end
  def test_flows_e74; assert_equal("Agriculture", worksheet.flows_e74); end
  def test_flows_f74; assert_equal("V.01", worksheet.flows_f74); end
  def test_flows_g74; assert_in_epsilon(20.760772499999998, worksheet.flows_g74, 0.002); end
  def test_flows_h74; assert_in_epsilon(20.760772499999998, worksheet.flows_h74, 0.002); end
  def test_flows_i74; assert_in_epsilon(20.760772499999998, worksheet.flows_i74, 0.002); end
  def test_flows_j74; assert_in_epsilon(20.760772499999998, worksheet.flows_j74, 0.002); end
  def test_flows_k74; assert_in_epsilon(20.760772499999998, worksheet.flows_k74, 0.002); end
  def test_flows_l74; assert_in_epsilon(20.760772499999998, worksheet.flows_l74, 0.002); end
  def test_flows_m74; assert_in_epsilon(20.760772499999998, worksheet.flows_m74, 0.002); end
  def test_flows_n74; assert_in_epsilon(20.760772499999998, worksheet.flows_n74, 0.002); end
  def test_flows_o74; assert_in_epsilon(20.760772499999998, worksheet.flows_o74, 0.002); end
  def test_flows_p74; assert_in_epsilon(20.760772499999998, worksheet.flows_p74, 0.002); end
  def test_flows_c75; assert_equal("Solid", worksheet.flows_c75); end
  def test_flows_d75; assert_equal("AGL", worksheet.flows_d75); end
  def test_flows_e75; assert_equal("Agriculture", worksheet.flows_e75); end
  def test_flows_f75; assert_equal("V.03", worksheet.flows_f75); end
  def test_flows_g75; assert_in_delta(0.52781625, worksheet.flows_g75, 0.002); end
  def test_flows_h75; assert_in_delta(0.52781625, worksheet.flows_h75, 0.002); end
  def test_flows_i75; assert_in_delta(0.52781625, worksheet.flows_i75, 0.002); end
  def test_flows_j75; assert_in_delta(0.52781625, worksheet.flows_j75, 0.002); end
  def test_flows_k75; assert_in_delta(0.52781625, worksheet.flows_k75, 0.002); end
  def test_flows_l75; assert_in_delta(0.52781625, worksheet.flows_l75, 0.002); end
  def test_flows_m75; assert_in_delta(0.52781625, worksheet.flows_m75, 0.002); end
  def test_flows_n75; assert_in_delta(0.52781625, worksheet.flows_n75, 0.002); end
  def test_flows_o75; assert_in_delta(0.52781625, worksheet.flows_o75, 0.002); end
  def test_flows_p75; assert_in_delta(0.52781625, worksheet.flows_p75, 0.002); end
  def test_flows_c76; assert_equal("Liquid", worksheet.flows_c76); end
  def test_flows_d76; assert_equal("AGL", worksheet.flows_d76); end
  def test_flows_e76; assert_equal("Agriculture", worksheet.flows_e76); end
  def test_flows_f76; assert_equal("V.04", worksheet.flows_f76); end
  def test_flows_g76; assert_in_epsilon(49.08691125, worksheet.flows_g76, 0.002); end
  def test_flows_h76; assert_in_epsilon(49.08691125, worksheet.flows_h76, 0.002); end
  def test_flows_i76; assert_in_epsilon(49.08691125, worksheet.flows_i76, 0.002); end
  def test_flows_j76; assert_in_epsilon(49.08691125, worksheet.flows_j76, 0.002); end
  def test_flows_k76; assert_in_epsilon(49.08691125, worksheet.flows_k76, 0.002); end
  def test_flows_l76; assert_in_epsilon(49.08691125, worksheet.flows_l76, 0.002); end
  def test_flows_m76; assert_in_epsilon(49.08691125, worksheet.flows_m76, 0.002); end
  def test_flows_n76; assert_in_epsilon(49.08691125, worksheet.flows_n76, 0.002); end
  def test_flows_o76; assert_in_epsilon(49.08691125, worksheet.flows_o76, 0.002); end
  def test_flows_p76; assert_in_epsilon(49.08691125, worksheet.flows_p76, 0.002); end
  def test_flows_c77; assert_equal("Gas", worksheet.flows_c77); end
  def test_flows_d77; assert_equal("AGL", worksheet.flows_d77); end
  def test_flows_e77; assert_equal("Agriculture", worksheet.flows_e77); end
  def test_flows_f77; assert_equal("V.05", worksheet.flows_f77); end
  def test_flows_g77; assert_in_delta(0.0, (worksheet.flows_g77||0), 0.002); end
  def test_flows_h77; assert_in_delta(0.0, (worksheet.flows_h77||0), 0.002); end
  def test_flows_i77; assert_in_delta(0.0, (worksheet.flows_i77||0), 0.002); end
  def test_flows_j77; assert_in_delta(0.0, (worksheet.flows_j77||0), 0.002); end
  def test_flows_k77; assert_in_delta(0.0, (worksheet.flows_k77||0), 0.002); end
  def test_flows_l77; assert_in_delta(0.0, (worksheet.flows_l77||0), 0.002); end
  def test_flows_m77; assert_in_delta(0.0, (worksheet.flows_m77||0), 0.002); end
  def test_flows_n77; assert_in_delta(0.0, (worksheet.flows_n77||0), 0.002); end
  def test_flows_o77; assert_in_delta(0.0, (worksheet.flows_o77||0), 0.002); end
  def test_flows_p77; assert_in_delta(0.0, (worksheet.flows_p77||0), 0.002); end
  def test_flows_c78; assert_equal("Electricity grid", worksheet.flows_c78); end
  def test_flows_d78; assert_equal("TRA.a", worksheet.flows_d78); end
  def test_flows_e78; assert_equal("Passenger transport", worksheet.flows_e78); end
  def test_flows_f78; assert_equal("V.01", worksheet.flows_f78); end
  def test_flows_g78; assert_in_epsilon(2.3417856574208473, worksheet.flows_g78, 0.002); end
  def test_flows_h78; assert_in_epsilon(2.309235036045927, worksheet.flows_h78, 0.002); end
  def test_flows_i78; assert_in_epsilon(3.0250038673040685, worksheet.flows_i78, 0.002); end
  def test_flows_j78; assert_in_epsilon(3.833323721650289, worksheet.flows_j78, 0.002); end
  def test_flows_k78; assert_in_epsilon(4.840822479646932, worksheet.flows_k78, 0.002); end
  def test_flows_l78; assert_in_epsilon(6.041979224770328, worksheet.flows_l78, 0.002); end
  def test_flows_m78; assert_in_epsilon(7.3024514575625, worksheet.flows_m78, 0.002); end
  def test_flows_n78; assert_in_epsilon(8.706924156218129, worksheet.flows_n78, 0.002); end
  def test_flows_o78; assert_in_epsilon(10.207205273228853, worksheet.flows_o78, 0.002); end
  def test_flows_p78; assert_in_epsilon(11.844406440498357, worksheet.flows_p78, 0.002); end
  def test_flows_c79; assert_equal("Liquid", worksheet.flows_c79); end
  def test_flows_d79; assert_equal("TRA.a", worksheet.flows_d79); end
  def test_flows_e79; assert_equal("Passenger transport", worksheet.flows_e79); end
  def test_flows_f79; assert_equal("V.04", worksheet.flows_f79); end
  def test_flows_g79; assert_in_epsilon(354.3107275713987, worksheet.flows_g79, 0.002); end
  def test_flows_h79; assert_in_epsilon(419.2848449013526, worksheet.flows_h79, 0.002); end
  def test_flows_i79; assert_in_epsilon(515.8795003494731, worksheet.flows_i79, 0.002); end
  def test_flows_j79; assert_in_epsilon(603.4737386131837, worksheet.flows_j79, 0.002); end
  def test_flows_k79; assert_in_epsilon(688.0592354302449, worksheet.flows_k79, 0.002); end
  def test_flows_l79; assert_in_epsilon(770.2905362739511, worksheet.flows_l79, 0.002); end
  def test_flows_m79; assert_in_epsilon(850.890597058647, worksheet.flows_m79, 0.002); end
  def test_flows_n79; assert_in_epsilon(929.6689919736149, worksheet.flows_n79, 0.002); end
  def test_flows_o79; assert_in_epsilon(1022.6351421486141, worksheet.flows_o79, 0.002); end
  def test_flows_p79; assert_in_epsilon(1082.6219502755273, worksheet.flows_p79, 0.002); end
  def test_flows_c80; assert_equal("Gas", worksheet.flows_c80); end
  def test_flows_d80; assert_equal("TRA.a", worksheet.flows_d80); end
  def test_flows_e80; assert_equal("Passenger transport", worksheet.flows_e80); end
  def test_flows_f80; assert_equal("C.03", worksheet.flows_f80); end
  def test_flows_g80; assert_in_delta(0.0, (worksheet.flows_g80||0), 0.002); end
  def test_flows_h80; assert_in_delta(0.0, (worksheet.flows_h80||0), 0.002); end
  def test_flows_i80; assert_in_delta(0.021956128976644503, worksheet.flows_i80, 0.002); end
  def test_flows_j80; assert_in_delta(0.038749563191097, worksheet.flows_j80, 0.002); end
  def test_flows_k80; assert_in_delta(0.058331901730078746, worksheet.flows_k80, 0.002); end
  def test_flows_l80; assert_in_delta(0.07897725333448978, worksheet.flows_l80, 0.002); end
  def test_flows_m80; assert_in_delta(0.09483472735775825, worksheet.flows_m80, 0.002); end
  def test_flows_n80; assert_in_delta(0.10973623741372204, worksheet.flows_n80, 0.002); end
  def test_flows_o80; assert_in_delta(0.12179815246991614, worksheet.flows_o80, 0.002); end
  def test_flows_p80; assert_in_delta(0.13271112742800026, worksheet.flows_p80, 0.002); end
  def test_flows_c81; assert_equal("H2", worksheet.flows_c81); end
  def test_flows_d81; assert_equal("TRA.a", worksheet.flows_d81); end
  def test_flows_e81; assert_equal("Passenger transport", worksheet.flows_e81); end
  def test_flows_f81; assert_equal("V.12", worksheet.flows_f81); end
  def test_flows_g81; assert_in_delta(0.0, (worksheet.flows_g81||0), 0.002); end
  def test_flows_h81; assert_in_delta(0.0, (worksheet.flows_h81||0), 0.002); end
  def test_flows_i81; assert_in_delta(0.0, (worksheet.flows_i81||0), 0.002); end
  def test_flows_j81; assert_in_delta(0.0, (worksheet.flows_j81||0), 0.002); end
  def test_flows_k81; assert_in_delta(0.0, (worksheet.flows_k81||0), 0.002); end
  def test_flows_l81; assert_in_delta(0.0, (worksheet.flows_l81||0), 0.002); end
  def test_flows_m81; assert_in_delta(0.0, (worksheet.flows_m81||0), 0.002); end
  def test_flows_n81; assert_in_delta(0.0, (worksheet.flows_n81||0), 0.002); end
  def test_flows_o81; assert_in_delta(0.0, (worksheet.flows_o81||0), 0.002); end
  def test_flows_p81; assert_in_delta(0.0, (worksheet.flows_p81||0), 0.002); end
  def test_flows_c82; assert_equal("Electricity grid", worksheet.flows_c82); end
  def test_flows_d82; assert_equal("TRA.b", worksheet.flows_d82); end
  def test_flows_e82; assert_equal("Freight transport", worksheet.flows_e82); end
  def test_flows_f82; assert_equal("V.01", worksheet.flows_f82); end
  def test_flows_g82; assert_in_epsilon(5.860912329999998, worksheet.flows_g82, 0.002); end
  def test_flows_h82; assert_in_epsilon(5.781104516861402, worksheet.flows_h82, 0.002); end
  def test_flows_i82; assert_in_epsilon(5.6552887340658256, worksheet.flows_i82, 0.002); end
  def test_flows_j82; assert_in_epsilon(5.533982789885913, worksheet.flows_j82, 0.002); end
  def test_flows_k82; assert_in_epsilon(5.41121082629705, worksheet.flows_k82, 0.002); end
  def test_flows_l82; assert_in_epsilon(5.299056573394613, worksheet.flows_l82, 0.002); end
  def test_flows_m82; assert_in_epsilon(5.190646452819455, worksheet.flows_m82, 0.002); end
  def test_flows_n82; assert_in_epsilon(5.0676220167697394, worksheet.flows_n82, 0.002); end
  def test_flows_o82; assert_in_epsilon(4.926142796425652, worksheet.flows_o82, 0.002); end
  def test_flows_p82; assert_in_epsilon(4.775344583707167, worksheet.flows_p82, 0.002); end
  def test_flows_c83; assert_equal("Liquid", worksheet.flows_c83); end
  def test_flows_d83; assert_equal("TRA.b", worksheet.flows_d83); end
  def test_flows_e83; assert_equal("Freight transport", worksheet.flows_e83); end
  def test_flows_f83; assert_equal("V.04", worksheet.flows_f83); end
  def test_flows_g83; assert_in_epsilon(301.1360018327048, worksheet.flows_g83, 0.002); end
  def test_flows_h83; assert_in_epsilon(315.23198193664143, worksheet.flows_h83, 0.002); end
  def test_flows_i83; assert_in_epsilon(331.2310154251837, worksheet.flows_i83, 0.002); end
  def test_flows_j83; assert_in_epsilon(348.1868792905727, worksheet.flows_j83, 0.002); end
  def test_flows_k83; assert_in_epsilon(365.7750293296429, worksheet.flows_k83, 0.002); end
  def test_flows_l83; assert_in_epsilon(384.86963450594857, worksheet.flows_l83, 0.002); end
  def test_flows_m83; assert_in_epsilon(405.12178348106755, worksheet.flows_m83, 0.002); end
  def test_flows_n83; assert_in_epsilon(425.082760706704, worksheet.flows_n83, 0.002); end
  def test_flows_o83; assert_in_epsilon(444.16017457473083, worksheet.flows_o83, 0.002); end
  def test_flows_p83; assert_in_epsilon(462.8718518734546, worksheet.flows_p83, 0.002); end
  def test_flows_c84; assert_equal("Gas", worksheet.flows_c84); end
  def test_flows_d84; assert_equal("TRA.b", worksheet.flows_d84); end
  def test_flows_e84; assert_equal("Freight transport", worksheet.flows_e84); end
  def test_flows_f84; assert_equal("V.05", worksheet.flows_f84); end
  def test_flows_g84; assert_in_delta(0.0, (worksheet.flows_g84||0), 0.002); end
  def test_flows_h84; assert_in_delta(0.0, (worksheet.flows_h84||0), 0.002); end
  def test_flows_i84; assert_in_delta(0.0, (worksheet.flows_i84||0), 0.002); end
  def test_flows_j84; assert_in_delta(0.0, (worksheet.flows_j84||0), 0.002); end
  def test_flows_k84; assert_in_delta(0.0, (worksheet.flows_k84||0), 0.002); end
  def test_flows_l84; assert_in_delta(0.0, (worksheet.flows_l84||0), 0.002); end
  def test_flows_m84; assert_in_delta(0.0, (worksheet.flows_m84||0), 0.002); end
  def test_flows_n84; assert_in_delta(0.0, (worksheet.flows_n84||0), 0.002); end
  def test_flows_o84; assert_in_delta(0.0, (worksheet.flows_o84||0), 0.002); end
  def test_flows_p84; assert_in_delta(0.0, (worksheet.flows_p84||0), 0.002); end
end
