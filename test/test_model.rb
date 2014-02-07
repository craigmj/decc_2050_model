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
  def test_control_h8; assert_equal("Lever Level 1", worksheet.control_h8); end
  def test_control_i8; assert_equal("Lever Leve 2", worksheet.control_i8); end
  def test_control_j8; assert_equal("Lever Level 3", worksheet.control_j8); end
  def test_control_k8; assert_equal("Lever Level 4", worksheet.control_k8); end
  def test_control_d9; assert_equal("Coal and CCS ", worksheet.control_d9); end
  def test_control_f9; assert_in_epsilon(4.0, worksheet.control_f9, 0.002); end
  def test_control_h9; assert_equal("Lever Level 1", worksheet.control_h9); end
  def test_control_i9; assert_equal("Lever Leve 2", worksheet.control_i9); end
  def test_control_j9; assert_equal("Lever Level 3", worksheet.control_j9); end
  def test_control_k9; assert_equal("Lever Level 4", worksheet.control_k9); end
  def test_control_d10; assert_equal("CCGT", worksheet.control_d10); end
  def test_control_f10; assert_in_epsilon(4.0, worksheet.control_f10, 0.002); end
  def test_control_h10; assert_equal("Lever Level 1", worksheet.control_h10); end
  def test_control_i10; assert_equal("Lever Leve 2", worksheet.control_i10); end
  def test_control_j10; assert_equal("Lever Level 3", worksheet.control_j10); end
  def test_control_k10; assert_equal("Lever Level 4", worksheet.control_k10); end
  def test_control_h11; assert_equal("Lever Level 1", worksheet.control_h11); end
  def test_control_i11; assert_equal("Lever Leve 2", worksheet.control_i11); end
  def test_control_j11; assert_equal("Lever Level 3", worksheet.control_j11); end
  def test_control_k11; assert_equal("Lever Level 4", worksheet.control_k11); end
  def test_control_h12; assert_equal("Lever Level 1", worksheet.control_h12); end
  def test_control_i12; assert_equal("Lever Leve 2", worksheet.control_i12); end
  def test_control_j12; assert_equal("Lever Level 3", worksheet.control_j12); end
  def test_control_k12; assert_equal("Lever Level 4", worksheet.control_k12); end
  def test_control_d13; assert_equal("Onshore wind", worksheet.control_d13); end
  def test_control_f13; assert_in_epsilon(4.0, worksheet.control_f13, 0.002); end
  def test_control_h13; assert_equal("Lever Level 1", worksheet.control_h13); end
  def test_control_i13; assert_equal("Lever Leve 2", worksheet.control_i13); end
  def test_control_j13; assert_equal("Lever Level 3", worksheet.control_j13); end
  def test_control_k13; assert_equal("Lever Level 4", worksheet.control_k13); end
  def test_control_d14; assert_equal("Residential and commercial Solar PV", worksheet.control_d14); end
  def test_control_f14; assert_in_epsilon(4.0, worksheet.control_f14, 0.002); end
  def test_control_h14; assert_equal("Lever Level 1", worksheet.control_h14); end
  def test_control_i14; assert_equal("Lever Leve 2", worksheet.control_i14); end
  def test_control_j14; assert_equal("Lever Level 3", worksheet.control_j14); end
  def test_control_k14; assert_equal("Lever Level 4", worksheet.control_k14); end
  def test_control_h15; assert_equal("Lever Level 1", worksheet.control_h15); end
  def test_control_i15; assert_equal("Lever Leve 2", worksheet.control_i15); end
  def test_control_j15; assert_equal("Lever Level 3", worksheet.control_j15); end
  def test_control_k15; assert_equal("Lever Level 4", worksheet.control_k15); end
  def test_control_d16; assert_equal("CSP", worksheet.control_d16); end
  def test_control_f16; assert_in_epsilon(4.0, worksheet.control_f16, 0.002); end
  def test_control_h16; assert_equal("Lever Level 1", worksheet.control_h16); end
  def test_control_i16; assert_equal("Lever Leve 2", worksheet.control_i16); end
  def test_control_j16; assert_equal("Lever Level 3", worksheet.control_j16); end
  def test_control_k16; assert_equal("Lever Level 4", worksheet.control_k16); end
  def test_control_h17; assert_equal("Lever Level 1", worksheet.control_h17); end
  def test_control_i17; assert_equal("Lever Leve 2", worksheet.control_i17); end
  def test_control_j17; assert_equal("Lever Level 3", worksheet.control_j17); end
  def test_control_k17; assert_equal("Lever Level 4", worksheet.control_k17); end
  def test_control_d18; assert_equal("Centralised PV", worksheet.control_d18); end
  def test_control_f18; assert_in_epsilon(4.0, worksheet.control_f18, 0.002); end
  def test_control_h18; assert_equal("Lever Level 1", worksheet.control_h18); end
  def test_control_i18; assert_equal("Lever Leve 2", worksheet.control_i18); end
  def test_control_j18; assert_equal("Lever Level 3", worksheet.control_j18); end
  def test_control_k18; assert_equal("Lever Level 4", worksheet.control_k18); end
  def test_control_f19; assert_in_epsilon(4.0, worksheet.control_f19, 0.002); end
  def test_control_h19; assert_equal("Lever Level 1", worksheet.control_h19); end
  def test_control_i19; assert_equal("Lever Leve 2", worksheet.control_i19); end
  def test_control_j19; assert_equal("Lever Level 3", worksheet.control_j19); end
  def test_control_k19; assert_equal("Lever Level 4", worksheet.control_k19); end
  def test_control_f20; assert_in_epsilon(4.0, worksheet.control_f20, 0.002); end
  def test_control_h20; assert_equal("Lever Level 1", worksheet.control_h20); end
  def test_control_i20; assert_equal("Lever Leve 2", worksheet.control_i20); end
  def test_control_j20; assert_equal("Lever Level 3", worksheet.control_j20); end
  def test_control_k20; assert_equal("Lever Level 4", worksheet.control_k20); end
  def test_control_d21; assert_equal("Hydroelectric power stations", worksheet.control_d21); end
  def test_control_f21; assert_in_epsilon(4.0, worksheet.control_f21, 0.002); end
  def test_control_h21; assert_equal("Lever Level 1", worksheet.control_h21); end
  def test_control_i21; assert_equal("Lever Leve 2", worksheet.control_i21); end
  def test_control_j21; assert_equal("Lever Level 3", worksheet.control_j21); end
  def test_control_k21; assert_equal("Lever Level 4", worksheet.control_k21); end
  def test_control_h22; assert_equal("Lever Level 1", worksheet.control_h22); end
  def test_control_i22; assert_equal("Lever Leve 2", worksheet.control_i22); end
  def test_control_j22; assert_equal("Lever Level 3", worksheet.control_j22); end
  def test_control_k22; assert_equal("Lever Level 4", worksheet.control_k22); end
  def test_control_f23; assert_in_epsilon(4.0, worksheet.control_f23, 0.002); end
  def test_control_h23; assert_equal("Lever Level 1", worksheet.control_h23); end
  def test_control_i23; assert_equal("Lever Leve 2", worksheet.control_i23); end
  def test_control_j23; assert_equal("Lever Level 3", worksheet.control_j23); end
  def test_control_k23; assert_equal("Lever Level 4", worksheet.control_k23); end
  def test_control_d24; assert_equal("Biofuels", worksheet.control_d24); end
  def test_control_h24; assert_equal("Lever Level 1", worksheet.control_h24); end
  def test_control_i24; assert_equal("Lever Leve 2", worksheet.control_i24); end
  def test_control_j24; assert_equal("Lever Level 3", worksheet.control_j24); end
  def test_control_k24; assert_equal("Lever Level 4", worksheet.control_k24); end
  def test_control_d25; assert_equal("Livestock Management", worksheet.control_d25); end
  def test_control_f25; assert_in_epsilon(4.0, worksheet.control_f25, 0.002); end
  def test_control_h25; assert_equal("Lever Level 1", worksheet.control_h25); end
  def test_control_i25; assert_equal("Lever Leve 2", worksheet.control_i25); end
  def test_control_j25; assert_equal("Lever Level 3", worksheet.control_j25); end
  def test_control_k25; assert_equal("Lever Level 4", worksheet.control_k25); end
  def test_control_d26; assert_equal("Land Use ", worksheet.control_d26); end
  def test_control_f26; assert_in_epsilon(3.0, worksheet.control_f26, 0.002); end
  def test_control_h26; assert_equal("Lever Level 1", worksheet.control_h26); end
  def test_control_i26; assert_equal("Lever Leve 2", worksheet.control_i26); end
  def test_control_j26; assert_equal("Lever Level 3", worksheet.control_j26); end
  def test_control_k26; assert_equal("Lever Level 4", worksheet.control_k26); end
  def test_control_d27; assert_equal("Waste ", worksheet.control_d27); end
  def test_control_h27; assert_equal("Lever Level 1", worksheet.control_h27); end
  def test_control_i27; assert_equal("Lever Leve 2", worksheet.control_i27); end
  def test_control_j27; assert_equal("Lever Level 3", worksheet.control_j27); end
  def test_control_k27; assert_equal("Lever Level 4", worksheet.control_k27); end
  def test_control_d28; assert_equal("Waste conversion & biofuels ", worksheet.control_d28); end
  def test_control_f28; assert_in_epsilon(4.0, worksheet.control_f28, 0.002); end
  def test_control_h28; assert_equal("Lever Level 1", worksheet.control_h28); end
  def test_control_i28; assert_equal("Lever Leve 2", worksheet.control_i28); end
  def test_control_j28; assert_equal("Lever Level 3", worksheet.control_j28); end
  def test_control_k28; assert_equal("Lever Level 4", worksheet.control_k28); end
  def test_control_d29; assert_equal("Supply of natural gas", worksheet.control_d29); end
  def test_control_f29; assert_in_epsilon(2.0, worksheet.control_f29, 0.002); end
  def test_control_h29; assert_equal("Lever Level 1", worksheet.control_h29); end
  def test_control_i29; assert_equal("Lever Leve 2", worksheet.control_i29); end
  def test_control_j29; assert_equal("Lever Level 3", worksheet.control_j29); end
  def test_control_k29; assert_equal("Lever Level 4", worksheet.control_k29); end
  def test_control_d30; assert_equal("Rate of Natural gas production", worksheet.control_d30); end
  def test_control_f30; assert_in_epsilon(2.0, worksheet.control_f30, 0.002); end
  def test_control_h30; assert_equal("Lever Level 1", worksheet.control_h30); end
  def test_control_i30; assert_equal("Lever Leve 2", worksheet.control_i30); end
  def test_control_j30; assert_equal("Lever Level 3", worksheet.control_j30); end
  def test_control_k30; assert_equal("Lever Level 4", worksheet.control_k30); end
  def test_control_d31; assert_equal("Liquid biofuel share", worksheet.control_d31); end
  def test_control_f31; assert_in_epsilon(4.0, worksheet.control_f31, 0.002); end
  def test_control_h31; assert_equal("Lever Level 1", worksheet.control_h31); end
  def test_control_i31; assert_equal("Lever Leve 2", worksheet.control_i31); end
  def test_control_j31; assert_equal("Lever Level 3", worksheet.control_j31); end
  def test_control_k31; assert_equal("Lever Level 4", worksheet.control_k31); end
  def test_control_d32; assert_equal("CTL capacity", worksheet.control_d32); end
  def test_control_f32; assert_in_epsilon(4.0, worksheet.control_f32, 0.002); end
  def test_control_h32; assert_equal("Lever Level 1", worksheet.control_h32); end
  def test_control_i32; assert_equal("Lever Leve 2", worksheet.control_i32); end
  def test_control_j32; assert_equal("Lever Level 3", worksheet.control_j32); end
  def test_control_k32; assert_equal("Lever Level 4", worksheet.control_k32); end
  def test_control_d33; assert_equal("Gas material share", worksheet.control_d33); end
  def test_control_f33; assert_in_epsilon(2.0, worksheet.control_f33, 0.002); end
  def test_control_h33; assert_equal("Lever Level 1", worksheet.control_h33); end
  def test_control_i33; assert_equal("Lever Leve 2", worksheet.control_i33); end
  def test_control_j33; assert_equal("Lever Level 3", worksheet.control_j33); end
  def test_control_k33; assert_equal("Lever Level 4", worksheet.control_k33); end
  def test_control_d34; assert_equal("GTL capacity", worksheet.control_d34); end
  def test_control_f34; assert_in_epsilon(2.0, worksheet.control_f34, 0.002); end
  def test_control_h34; assert_equal("Lever Level 1", worksheet.control_h34); end
  def test_control_i34; assert_equal("Lever Leve 2", worksheet.control_i34); end
  def test_control_j34; assert_equal("Lever Level 3", worksheet.control_j34); end
  def test_control_k34; assert_equal("Lever Level 4", worksheet.control_k34); end
  def test_control_d35; assert_equal("Refinery capacity", worksheet.control_d35); end
  def test_control_f35; assert_in_epsilon(3.0, worksheet.control_f35, 0.002); end
  def test_control_h35; assert_equal("Lever Level 1", worksheet.control_h35); end
  def test_control_i35; assert_equal("Lever Leve 2", worksheet.control_i35); end
  def test_control_j35; assert_equal("Lever Level 3", worksheet.control_j35); end
  def test_control_k35; assert_equal("Lever Level 4", worksheet.control_k35); end
  def test_control_d37; assert_equal(" Behaviour Change(%)", worksheet.control_d37); end
  def test_control_f37; assert_in_epsilon(4.0, worksheet.control_f37, 0.002); end
  def test_control_h37; assert_equal("Share of passenger kilometres met by public transport will be 24% by 2050", worksheet.control_h37); end
  def test_control_i37; assert_equal("By 2050, the share of private travel is assumed to have dropped by 7% relative to the base year of 2006. Private travel makes up 38% whereas public transport accounts for 62%.", worksheet.control_i37); end
  def test_control_j37; assert_equal("71% of passenger-km are met by public transport. ", worksheet.control_j37); end
  def test_control_k37; assert_equal("80% of passenger travel demand met being met by public transport", worksheet.control_k37); end
  def test_control_d38; assert_equal("Reduced travel demand", worksheet.control_d38); end
  def test_control_f38; assert_in_epsilon(4.0, worksheet.control_f38, 0.002); end
  def test_control_h38; assert_equal("Nothing is done to change the landscape of our cities, as such there is no energy demand reduction.  ", worksheet.control_h38); end
  def test_control_i38; assert_equal("It is assumed that 5% aggregate energy demand reduction is achieved as cities continue to accommodate people closer to economic hubs", worksheet.control_i38); end
  def test_control_j38; assert_equal("It is assumed that 10% of aggregate energy demand reduction is achieved. ", worksheet.control_j38); end
  def test_control_k38; assert_equal("It is assumed that 30% of energy demand is reduced.", worksheet.control_k38); end
  def test_control_d39; assert_equal("Shift to lower emissions technologies", worksheet.control_d39); end
  def test_control_f39; assert_in_epsilon(4.0, worksheet.control_f39, 0.002); end
  def test_control_h39; assert_equal("There is no introduction of  hydrogen and compressed natural gas. 5% of private vehicles sold in 2050 are hybrids and a mere 1% is purely battery powered electric vehicles", worksheet.control_h39); end
  def test_control_i39; assert_equal("5% and 1% of vehicles sold in 2050 will be powered by electric and fuel cell respectively ", worksheet.control_i39); end
  def test_control_j39; assert_equal("10% of vehicles sold in 2050 will be electric vehicles while a mere 5% will be fuel cell powered. ", worksheet.control_j39); end
  def test_control_k39; assert_equal("15% and 10% of electric and fuel cell powered vehicles will be sold by 2050 respectively. 70% of private fleet sales will be hybrids", worksheet.control_k39); end
  def test_control_d40; assert_equal("Efficiency Improvement", worksheet.control_d40); end
  def test_control_f40; assert_in_epsilon(4.0, worksheet.control_f40, 0.002); end
  def test_control_h40; assert_equal("It is assumed that 0.1% of efficiency will be gained annually, resulting in overall efficiency gain of 4%  by 2050.", worksheet.control_h40); end
  def test_control_i40; assert_equal("It is assumed that 0.2% of efficiency will be gained annually, resulting in overall efficiency gain of 22%  by 2050.", worksheet.control_i40); end
  def test_control_j40; assert_equal("It is assumed that 0.5 % of efficiency will be gained annually, resulting in overall efficiency gain of 44%  by 2050.", worksheet.control_j40); end
  def test_control_k40; assert_equal("It is assumed that 1% of efficiency will be gained annually, resulting in overall efficiency gain of 66%  by 2050.", worksheet.control_k40); end
  def test_control_d41; assert_equal("Occupancy", worksheet.control_d41); end
  def test_control_f41; assert_in_epsilon(2.0, worksheet.control_f41, 0.002); end
  def test_control_h41; assert_equal("No changes to vehicle occupancy", worksheet.control_h41); end
  def test_control_i41; assert_equal("minibus, buses and private vehicle occupancies are increased to 18, 30  and 1.5 people per vehicle.", worksheet.control_i41); end
  def test_control_j41; assert_equal("minibus, buses and private vehicle occupancies are increased to 20, 50  and 1.8 people per vehicle.", worksheet.control_j41); end
  def test_control_k41; assert_equal("minibus, buses and private vehicle occupancies are increased to 20, 50  and 1.8 people per vehicle.", worksheet.control_k41); end
  def test_control_d42; assert_equal("Mode Shift", worksheet.control_d42); end
  def test_control_f42; assert_in_epsilon(4.0, worksheet.control_f42, 0.002); end
  def test_control_h42; assert_equal("the proportion of ton-km serviced by road vs rail transportation stays at 70% and 30% respectively by 2050. ", worksheet.control_h42); end
  def test_control_i42; assert_equal("Level 2 assumes that rail corridor gains 10% of the current heavy duty vehicles' market share while rail other gains a mere 5% of medium duty vehicles’ market share by 2050. ", worksheet.control_i42); end
  def test_control_j42; assert_equal("50% of goods are moved by road. ", worksheet.control_j42); end
  def test_control_k42; assert_equal("38% of ton-km will be moved by road and the remaining 62%  by rail", worksheet.control_k42); end
  def test_control_d43; assert_equal("Efficiency Improvement", worksheet.control_d43); end
  def test_control_f43; assert_in_epsilon(2.0, worksheet.control_f43, 0.002); end
  def test_control_h43; assert_equal("Lever Level 1", worksheet.control_h43); end
  def test_control_i43; assert_equal("Lever Leve 2", worksheet.control_i43); end
  def test_control_j43; assert_equal("Lever Level 3", worksheet.control_j43); end
  def test_control_k43; assert_equal("Lever Level 4", worksheet.control_k43); end
  def test_control_h44; assert_equal("Lever Level 1", worksheet.control_h44); end
  def test_control_i44; assert_equal("Lever Leve 2", worksheet.control_i44); end
  def test_control_j44; assert_equal("Lever Level 3", worksheet.control_j44); end
  def test_control_k44; assert_equal("Lever Level 4", worksheet.control_k44); end
  def test_control_h45; assert_equal("Lever Level 1", worksheet.control_h45); end
  def test_control_i45; assert_equal("Lever Leve 2", worksheet.control_i45); end
  def test_control_j45; assert_equal("Lever Level 3", worksheet.control_j45); end
  def test_control_k45; assert_equal("Lever Level 4", worksheet.control_k45); end
  def test_control_d46; assert_equal("Electrification", worksheet.control_d46); end
  def test_control_f46; assert_in_epsilon(4.0, worksheet.control_f46, 0.002); end
  def test_control_h46; assert_equal("Lever Level 1", worksheet.control_h46); end
  def test_control_i46; assert_equal("Lever Leve 2", worksheet.control_i46); end
  def test_control_j46; assert_equal("Lever Level 3", worksheet.control_j46); end
  def test_control_k46; assert_equal("Lever Level 4", worksheet.control_k46); end
  def test_control_h47; assert_equal("Lever Level 1", worksheet.control_h47); end
  def test_control_i47; assert_equal("Lever Leve 2", worksheet.control_i47); end
  def test_control_j47; assert_equal("Lever Level 3", worksheet.control_j47); end
  def test_control_k47; assert_equal("Lever Level 4", worksheet.control_k47); end
  def test_control_h48; assert_equal("Lever Level 1", worksheet.control_h48); end
  def test_control_i48; assert_equal("Lever Leve 2", worksheet.control_i48); end
  def test_control_j48; assert_equal("Lever Level 3", worksheet.control_j48); end
  def test_control_k48; assert_equal("Lever Level 4", worksheet.control_k48); end
  def test_control_f49; assert_in_epsilon(4.0, worksheet.control_f49, 0.002); end
  def test_control_h49; assert_equal("Lever Level 1", worksheet.control_h49); end
  def test_control_i49; assert_equal("Lever Leve 2", worksheet.control_i49); end
  def test_control_j49; assert_equal("Lever Level 3", worksheet.control_j49); end
  def test_control_k49; assert_equal("Lever Level 4", worksheet.control_k49); end
  def test_control_d50; assert_equal("Lighting, Water heating, Appliances", worksheet.control_d50); end
  def test_control_f50; assert_in_epsilon(4.0, worksheet.control_f50, 0.002); end
  def test_control_h50; assert_equal("Lever Level 1", worksheet.control_h50); end
  def test_control_i50; assert_equal("Lever Leve 2", worksheet.control_i50); end
  def test_control_j50; assert_equal("Lever Level 3", worksheet.control_j50); end
  def test_control_k50; assert_equal("Lever Level 4", worksheet.control_k50); end
  def test_control_d51; assert_equal("Space heating, Refridgeration, cooking", worksheet.control_d51); end
  def test_control_f51; assert_in_epsilon(4.0, worksheet.control_f51, 0.002); end
  def test_control_h51; assert_equal("Lever Level 1", worksheet.control_h51); end
  def test_control_i51; assert_equal("Lever Leve 2", worksheet.control_i51); end
  def test_control_j51; assert_equal("Lever Level 3", worksheet.control_j51); end
  def test_control_k51; assert_equal("Lever Level 4", worksheet.control_k51); end
  def test_control_d52; assert_equal("SWH scenario", worksheet.control_d52); end
  def test_control_f52; assert_in_epsilon(4.0, worksheet.control_f52, 0.002); end
  def test_control_h52; assert_equal("Lever Level 1", worksheet.control_h52); end
  def test_control_i52; assert_equal("Lever Leve 2", worksheet.control_i52); end
  def test_control_j52; assert_equal("Lever Level 3", worksheet.control_j52); end
  def test_control_k52; assert_equal("Lever Level 4", worksheet.control_k52); end
  def test_control_f53; assert_in_epsilon(4.0, worksheet.control_f53, 0.002); end
  def test_control_h53; assert_equal("Lever Level 1", worksheet.control_h53); end
  def test_control_i53; assert_equal("Lever Leve 2", worksheet.control_i53); end
  def test_control_j53; assert_equal("Lever Level 3", worksheet.control_j53); end
  def test_control_k53; assert_equal("Lever Level 4", worksheet.control_k53); end
  def test_control_h54; assert_equal("Lever Level 1", worksheet.control_h54); end
  def test_control_i54; assert_equal("Lever Leve 2", worksheet.control_i54); end
  def test_control_j54; assert_equal("Lever Level 3", worksheet.control_j54); end
  def test_control_k54; assert_equal("Lever Level 4", worksheet.control_k54); end
  def test_control_h55; assert_equal("Lever Level 1", worksheet.control_h55); end
  def test_control_i55; assert_equal("Lever Leve 2", worksheet.control_i55); end
  def test_control_j55; assert_equal("Lever Level 3", worksheet.control_j55); end
  def test_control_k55; assert_equal("Lever Level 4", worksheet.control_k55); end
  def test_control_h56; assert_equal("Lever Level 1", worksheet.control_h56); end
  def test_control_i56; assert_equal("Lever Leve 2", worksheet.control_i56); end
  def test_control_j56; assert_equal("Lever Level 3", worksheet.control_j56); end
  def test_control_k56; assert_equal("Lever Level 4", worksheet.control_k56); end
  def test_control_h57; assert_equal("Lever Level 1", worksheet.control_h57); end
  def test_control_i57; assert_equal("Lever Leve 2", worksheet.control_i57); end
  def test_control_j57; assert_equal("Lever Level 3", worksheet.control_j57); end
  def test_control_k57; assert_equal("Lever Level 4", worksheet.control_k57); end
  def test_control_a1; assert_equal("Version 0.46.20140130fa", worksheet.control_a1); end
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
  def test_intermediate_output_h7; assert_in_epsilon(738.6809343382425, worksheet.intermediate_output_h7, 0.002); end
  def test_intermediate_output_i7; assert_in_epsilon(822.8056996304351, worksheet.intermediate_output_i7, 0.002); end
  def test_intermediate_output_j7; assert_in_epsilon(901.2052732961527, worksheet.intermediate_output_j7, 0.002); end
  def test_intermediate_output_k7; assert_in_epsilon(972.8747365674263, worksheet.intermediate_output_k7, 0.002); end
  def test_intermediate_output_l7; assert_in_epsilon(1037.8398802198246, worksheet.intermediate_output_l7, 0.002); end
  def test_intermediate_output_m7; assert_in_epsilon(1099.17099144502, worksheet.intermediate_output_m7, 0.002); end
  def test_intermediate_output_n7; assert_in_epsilon(1300.246388953237, worksheet.intermediate_output_n7, 0.002); end
  def test_intermediate_output_o7; assert_in_epsilon(1213.5327999712476, worksheet.intermediate_output_o7, 0.002); end
  def test_intermediate_output_p7; assert_in_epsilon(1192.8241047676242, worksheet.intermediate_output_p7, 0.002); end
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
  def test_intermediate_output_g9; assert_in_epsilon(43.5096550173, worksheet.intermediate_output_g9, 0.002); end
  def test_intermediate_output_h9; assert_in_epsilon(48.8153267732816, worksheet.intermediate_output_h9, 0.002); end
  def test_intermediate_output_i9; assert_in_epsilon(56.34147859387907, worksheet.intermediate_output_i9, 0.002); end
  def test_intermediate_output_j9; assert_in_epsilon(65.26236294851951, worksheet.intermediate_output_j9, 0.002); end
  def test_intermediate_output_k9; assert_in_epsilon(75.5030718929494, worksheet.intermediate_output_k9, 0.002); end
  def test_intermediate_output_l9; assert_in_epsilon(88.1135949605098, worksheet.intermediate_output_l9, 0.002); end
  def test_intermediate_output_m9; assert_in_epsilon(103.16339697976488, worksheet.intermediate_output_m9, 0.002); end
  def test_intermediate_output_n9; assert_in_epsilon(119.2568869086082, worksheet.intermediate_output_n9, 0.002); end
  def test_intermediate_output_o9; assert_in_epsilon(135.47582352817892, worksheet.intermediate_output_o9, 0.002); end
  def test_intermediate_output_p9; assert_in_epsilon(152.27482564567313, worksheet.intermediate_output_p9, 0.002); end
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
  def test_intermediate_output_g13; assert_in_epsilon(707.1590824088242, worksheet.intermediate_output_g13, 0.002); end
  def test_intermediate_output_h13; assert_in_epsilon(797.095310081358, worksheet.intermediate_output_h13, 0.002); end
  def test_intermediate_output_i13; assert_in_epsilon(888.586491457609, worksheet.intermediate_output_i13, 0.002); end
  def test_intermediate_output_j13; assert_in_epsilon(975.7476160050887, worksheet.intermediate_output_j13, 0.002); end
  def test_intermediate_output_k13; assert_in_epsilon(1057.4933025798994, worksheet.intermediate_output_k13, 0.002); end
  def test_intermediate_output_l13; assert_in_epsilon(1134.91635666478, worksheet.intermediate_output_l13, 0.002); end
  def test_intermediate_output_m13; assert_in_epsilon(1211.148945327236, worksheet.intermediate_output_m13, 0.002); end
  def test_intermediate_output_n13; assert_in_epsilon(1428.150812913353, worksheet.intermediate_output_n13, 0.002); end
  def test_intermediate_output_o13; assert_in_epsilon(1357.4656720575017, worksheet.intermediate_output_o13, 0.002); end
  def test_intermediate_output_p13; assert_in_epsilon(1353.3539297123052, worksheet.intermediate_output_p13, 0.002); end
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
  def test_intermediate_output_h15; assert_in_epsilon(116.10653402811653, worksheet.intermediate_output_h15, 0.002); end
  def test_intermediate_output_i15; assert_in_epsilon(123.53754919722027, worksheet.intermediate_output_i15, 0.002); end
  def test_intermediate_output_j15; assert_in_epsilon(130.37714867992358, worksheet.intermediate_output_j15, 0.002); end
  def test_intermediate_output_k15; assert_in_epsilon(136.2572044356027, worksheet.intermediate_output_k15, 0.002); end
  def test_intermediate_output_l15; assert_in_epsilon(141.25995657848128, worksheet.intermediate_output_l15, 0.002); end
  def test_intermediate_output_m15; assert_in_epsilon(142.93708137335113, worksheet.intermediate_output_m15, 0.002); end
  def test_intermediate_output_n15; assert_in_epsilon(143.045971565101, worksheet.intermediate_output_n15, 0.002); end
  def test_intermediate_output_o15; assert_in_epsilon(140.77734859985605, worksheet.intermediate_output_o15, 0.002); end
  def test_intermediate_output_p15; assert_in_epsilon(130.57316228664592, worksheet.intermediate_output_p15, 0.002); end
  def test_intermediate_output_c16; assert_equal("L.01", worksheet.intermediate_output_c16); end
  def test_intermediate_output_d16; assert_equal("Lighting", worksheet.intermediate_output_d16); end
  def test_intermediate_output_g16; assert_in_epsilon(67.08155096017973, worksheet.intermediate_output_g16, 0.002); end
  def test_intermediate_output_h16; assert_in_epsilon(74.82608449571858, worksheet.intermediate_output_h16, 0.002); end
  def test_intermediate_output_i16; assert_in_epsilon(84.01912511007393, worksheet.intermediate_output_i16, 0.002); end
  def test_intermediate_output_j16; assert_in_epsilon(94.11462636227247, worksheet.intermediate_output_j16, 0.002); end
  def test_intermediate_output_k16; assert_in_epsilon(104.88987854469653, worksheet.intermediate_output_k16, 0.002); end
  def test_intermediate_output_l16; assert_in_epsilon(116.6185813556615, worksheet.intermediate_output_l16, 0.002); end
  def test_intermediate_output_m16; assert_in_epsilon(129.07797730789534, worksheet.intermediate_output_m16, 0.002); end
  def test_intermediate_output_n16; assert_in_epsilon(141.78497322415177, worksheet.intermediate_output_n16, 0.002); end
  def test_intermediate_output_o16; assert_in_epsilon(154.7506592415679, worksheet.intermediate_output_o16, 0.002); end
  def test_intermediate_output_p16; assert_in_epsilon(167.64011888837683, worksheet.intermediate_output_p16, 0.002); end
  def test_intermediate_output_c17; assert_equal("H.02", worksheet.intermediate_output_c17); end
  def test_intermediate_output_d17; assert_equal("Water Heating", worksheet.intermediate_output_d17); end
  def test_intermediate_output_g17; assert_in_epsilon(124.4086006297527, worksheet.intermediate_output_g17, 0.002); end
  def test_intermediate_output_h17; assert_in_epsilon(128.6884008699238, worksheet.intermediate_output_h17, 0.002); end
  def test_intermediate_output_i17; assert_in_epsilon(141.0032883103334, worksheet.intermediate_output_i17, 0.002); end
  def test_intermediate_output_j17; assert_in_epsilon(153.12220705434416, worksheet.intermediate_output_j17, 0.002); end
  def test_intermediate_output_k17; assert_in_epsilon(164.61984374852676, worksheet.intermediate_output_k17, 0.002); end
  def test_intermediate_output_l17; assert_in_epsilon(175.49333360996638, worksheet.intermediate_output_l17, 0.002); end
  def test_intermediate_output_m17; assert_in_epsilon(188.12500439405704, worksheet.intermediate_output_m17, 0.002); end
  def test_intermediate_output_n17; assert_in_epsilon(199.32346414803868, worksheet.intermediate_output_n17, 0.002); end
  def test_intermediate_output_o17; assert_in_epsilon(210.7876219188234, worksheet.intermediate_output_o17, 0.002); end
  def test_intermediate_output_p17; assert_in_epsilon(214.45810450048236, worksheet.intermediate_output_p17, 0.002); end
  def test_intermediate_output_c18; assert_equal("H.03", worksheet.intermediate_output_c18); end
  def test_intermediate_output_d18; assert_equal("Refridgeration", worksheet.intermediate_output_d18); end
  def test_intermediate_output_g18; assert_in_epsilon(22.779277741344078, worksheet.intermediate_output_g18, 0.002); end
  def test_intermediate_output_h18; assert_in_epsilon(25.421652652860594, worksheet.intermediate_output_h18, 0.002); end
  def test_intermediate_output_i18; assert_in_epsilon(28.774037546984925, worksheet.intermediate_output_i18, 0.002); end
  def test_intermediate_output_j18; assert_in_epsilon(32.20313500288191, worksheet.intermediate_output_j18, 0.002); end
  def test_intermediate_output_k18; assert_in_epsilon(35.62024510053257, worksheet.intermediate_output_k18, 0.002); end
  def test_intermediate_output_l18; assert_in_epsilon(39.0080194903128, worksheet.intermediate_output_l18, 0.002); end
  def test_intermediate_output_m18; assert_in_epsilon(43.24414456092818, worksheet.intermediate_output_m18, 0.002); end
  def test_intermediate_output_n18; assert_in_epsilon(47.29105347982425, worksheet.intermediate_output_n18, 0.002); end
  def test_intermediate_output_o18; assert_in_epsilon(51.72694522049113, worksheet.intermediate_output_o18, 0.002); end
  def test_intermediate_output_p18; assert_in_epsilon(55.10626709084063, worksheet.intermediate_output_p18, 0.002); end
  def test_intermediate_output_c19; assert_equal("H.04", worksheet.intermediate_output_c19); end
  def test_intermediate_output_d19; assert_equal("Cooling", worksheet.intermediate_output_d19); end
  def test_intermediate_output_g19; assert_in_epsilon(31.130593696404677, worksheet.intermediate_output_g19, 0.002); end
  def test_intermediate_output_h19; assert_in_epsilon(34.2606296403553, worksheet.intermediate_output_h19, 0.002); end
  def test_intermediate_output_i19; assert_in_epsilon(37.449180433185525, worksheet.intermediate_output_i19, 0.002); end
  def test_intermediate_output_j19; assert_in_epsilon(40.92402353964626, worksheet.intermediate_output_j19, 0.002); end
  def test_intermediate_output_k19; assert_in_epsilon(44.53185181232001, worksheet.intermediate_output_k19, 0.002); end
  def test_intermediate_output_l19; assert_in_epsilon(48.541617622577625, worksheet.intermediate_output_l19, 0.002); end
  def test_intermediate_output_m19; assert_in_epsilon(53.39608933187541, worksheet.intermediate_output_m19, 0.002); end
  def test_intermediate_output_n19; assert_in_epsilon(58.07764199899826, worksheet.intermediate_output_n19, 0.002); end
  def test_intermediate_output_o19; assert_in_epsilon(62.215770813227465, worksheet.intermediate_output_o19, 0.002); end
  def test_intermediate_output_p19; assert_in_epsilon(64.9215376400898, worksheet.intermediate_output_p19, 0.002); end
  def test_intermediate_output_c20; assert_equal("Z.02", worksheet.intermediate_output_c20); end
  def test_intermediate_output_d20; assert_equal("Other Use", worksheet.intermediate_output_d20); end
  def test_intermediate_output_g20; assert_in_epsilon(48.210042902135555, worksheet.intermediate_output_g20, 0.002); end
  def test_intermediate_output_h20; assert_in_epsilon(53.457534003202305, worksheet.intermediate_output_h20, 0.002); end
  def test_intermediate_output_i20; assert_in_epsilon(60.73456519610673, worksheet.intermediate_output_i20, 0.002); end
  def test_intermediate_output_j20; assert_in_epsilon(69.17369782985652, worksheet.intermediate_output_j20, 0.002); end
  def test_intermediate_output_k20; assert_in_epsilon(78.6080216711157, worksheet.intermediate_output_k20, 0.002); end
  def test_intermediate_output_l20; assert_in_epsilon(89.54661934380948, worksheet.intermediate_output_l20, 0.002); end
  def test_intermediate_output_m20; assert_in_epsilon(104.81445638903119, worksheet.intermediate_output_m20, 0.002); end
  def test_intermediate_output_n20; assert_in_epsilon(121.0145565385582, worksheet.intermediate_output_n20, 0.002); end
  def test_intermediate_output_o20; assert_in_epsilon(138.37589938447084, worksheet.intermediate_output_o20, 0.002); end
  def test_intermediate_output_p20; assert_in_epsilon(157.8766502930298, worksheet.intermediate_output_p20, 0.002); end
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
  def test_intermediate_output_h22; assert_in_epsilon(97.5669315381892, worksheet.intermediate_output_h22, 0.002); end
  def test_intermediate_output_i22; assert_in_epsilon(102.33798672952024, worksheet.intermediate_output_i22, 0.002); end
  def test_intermediate_output_j22; assert_in_epsilon(106.08378871129464, worksheet.intermediate_output_j22, 0.002); end
  def test_intermediate_output_k22; assert_in_epsilon(108.67398623274808, worksheet.intermediate_output_k22, 0.002); end
  def test_intermediate_output_l22; assert_in_epsilon(109.86642390267521, worksheet.intermediate_output_l22, 0.002); end
  def test_intermediate_output_m22; assert_in_epsilon(104.17844784049117, worksheet.intermediate_output_m22, 0.002); end
  def test_intermediate_output_n22; assert_in_epsilon(98.41771219540499, worksheet.intermediate_output_n22, 0.002); end
  def test_intermediate_output_o22; assert_in_epsilon(91.26744649581445, worksheet.intermediate_output_o22, 0.002); end
  def test_intermediate_output_p22; assert_in_epsilon(84.41262888048544, worksheet.intermediate_output_p22, 0.002); end
  def test_intermediate_output_c24; assert_equal("F.01", worksheet.intermediate_output_c24); end
  def test_intermediate_output_d24; assert_equal("Food consumption [UNUSED]", worksheet.intermediate_output_d24); end
  def test_intermediate_output_g24; assert_in_delta(0.0, (worksheet.intermediate_output_g24||0), 0.002); end
  def test_intermediate_output_h24; assert_in_delta(0.0, (worksheet.intermediate_output_h24||0), 0.002); end
  def test_intermediate_output_i24; assert_in_delta(0.0, (worksheet.intermediate_output_i24||0), 0.002); end
  def test_intermediate_output_j24; assert_in_delta(0.0, (worksheet.intermediate_output_j24||0), 0.002); end
  def test_intermediate_output_k24; assert_in_delta(0.0, (worksheet.intermediate_output_k24||0), 0.002); end
  def test_intermediate_output_l24; assert_in_delta(0.0, (worksheet.intermediate_output_l24||0), 0.002); end
  def test_intermediate_output_m24; assert_in_delta(0.0, (worksheet.intermediate_output_m24||0), 0.002); end
  def test_intermediate_output_n24; assert_in_delta(0.0, (worksheet.intermediate_output_n24||0), 0.002); end
  def test_intermediate_output_o24; assert_in_delta(0.0, (worksheet.intermediate_output_o24||0), 0.002); end
  def test_intermediate_output_p24; assert_in_delta(0.0, (worksheet.intermediate_output_p24||0), 0.002); end
  def test_intermediate_output_d25; assert_equal("Total Use", worksheet.intermediate_output_d25); end
  def test_intermediate_output_g25; assert_in_epsilon(2407.335824321578, worksheet.intermediate_output_g25, 0.002); end
  def test_intermediate_output_h25; assert_in_epsilon(2727.7308924001127, worksheet.intermediate_output_h25, 0.002); end
  def test_intermediate_output_i25; assert_in_epsilon(3175.4469430667295, worksheet.intermediate_output_i25, 0.002); end
  def test_intermediate_output_j25; assert_in_epsilon(3657.9795249212207, worksheet.intermediate_output_j25, 0.002); end
  def test_intermediate_output_k25; assert_in_epsilon(4270.017147986989, worksheet.intermediate_output_k25, 0.002); end
  def test_intermediate_output_l25; assert_in_epsilon(4935.342496563673, worksheet.intermediate_output_l25, 0.002); end
  def test_intermediate_output_m25; assert_in_epsilon(5817.258149889295, worksheet.intermediate_output_m25, 0.002); end
  def test_intermediate_output_n25; assert_in_epsilon(6878.6262144473285, worksheet.intermediate_output_n25, 0.002); end
  def test_intermediate_output_o25; assert_in_epsilon(7736.6516216392165, worksheet.intermediate_output_o25, 0.002); end
  def test_intermediate_output_p25; assert_in_epsilon(8680.342033634675, worksheet.intermediate_output_p25, 0.002); end
  def test_intermediate_output_d27; assert_equal("Dummy for charting uses", worksheet.intermediate_output_d27); end
  def test_intermediate_output_g27; assert_in_epsilon(2266.0023461021983, worksheet.intermediate_output_g27, 0.002); end
  def test_intermediate_output_h27; assert_in_epsilon(2656.116519781908, worksheet.intermediate_output_h27, 0.002); end
  def test_intermediate_output_i27; assert_in_epsilon(2968.171025244874, worksheet.intermediate_output_i27, 0.002); end
  def test_intermediate_output_j27; assert_in_epsilon(3336.585676650177, worksheet.intermediate_output_j27, 0.002); end
  def test_intermediate_output_k27; assert_in_epsilon(3767.4322127587, worksheet.intermediate_output_k27, 0.002); end
  def test_intermediate_output_l27; assert_in_epsilon(4312.702929916441, worksheet.intermediate_output_l27, 0.002); end
  def test_intermediate_output_m27; assert_in_epsilon(4949.2168005918, worksheet.intermediate_output_m27, 0.002); end
  def test_intermediate_output_n27; assert_in_epsilon(5688.987645147715, worksheet.intermediate_output_n27, 0.002); end
  def test_intermediate_output_o27; assert_in_epsilon(6537.423662411483, worksheet.intermediate_output_o27, 0.002); end
  def test_intermediate_output_p27; assert_in_epsilon(7445.291174955695, worksheet.intermediate_output_p27, 0.002); end
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
  def test_intermediate_output_h31; assert_in_delta(0.006711326312769469, worksheet.intermediate_output_h31, 0.002); end
  def test_intermediate_output_i31; assert_in_epsilon(12.646527649509972, worksheet.intermediate_output_i31, 0.002); end
  def test_intermediate_output_j31; assert_in_epsilon(15.962035311349528, worksheet.intermediate_output_j31, 0.002); end
  def test_intermediate_output_k31; assert_in_epsilon(15.96432877129077, worksheet.intermediate_output_k31, 0.002); end
  def test_intermediate_output_l31; assert_in_epsilon(15.967094888430221, worksheet.intermediate_output_l31, 0.002); end
  def test_intermediate_output_m31; assert_in_epsilon(15.970585665971518, worksheet.intermediate_output_m31, 0.002); end
  def test_intermediate_output_n31; assert_in_epsilon(15.974494321751466, worksheet.intermediate_output_n31, 0.002); end
  def test_intermediate_output_o31; assert_in_epsilon(15.97867018614877, worksheet.intermediate_output_o31, 0.002); end
  def test_intermediate_output_p31; assert_in_epsilon(15.983198109504743, worksheet.intermediate_output_p31, 0.002); end
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
  def test_intermediate_output_g34; assert_in_epsilon(-19.13821200000011, worksheet.intermediate_output_g34, 0.002); end
  def test_intermediate_output_h34; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_h34, 0.002); end
  def test_intermediate_output_i34; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_i34, 0.002); end
  def test_intermediate_output_j34; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_j34, 0.002); end
  def test_intermediate_output_k34; assert_in_epsilon(-19.13821199999977, worksheet.intermediate_output_k34, 0.002); end
  def test_intermediate_output_l34; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_l34, 0.002); end
  def test_intermediate_output_m34; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_m34, 0.002); end
  def test_intermediate_output_n34; assert_in_epsilon(-19.13821199999954, worksheet.intermediate_output_n34, 0.002); end
  def test_intermediate_output_o34; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_o34, 0.002); end
  def test_intermediate_output_p34; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_p34, 0.002); end
  def test_intermediate_output_d35; assert_equal("Primary electricity, solar, and net imports", worksheet.intermediate_output_d35); end
  def test_intermediate_output_g35; assert_in_epsilon(96.23074372415991, worksheet.intermediate_output_g35, 0.002); end
  def test_intermediate_output_h35; assert_in_epsilon(130.00730592567282, worksheet.intermediate_output_h35, 0.002); end
  def test_intermediate_output_i35; assert_in_epsilon(154.18044045174997, worksheet.intermediate_output_i35, 0.002); end
  def test_intermediate_output_j35; assert_in_epsilon(168.59412488158955, worksheet.intermediate_output_j35, 0.002); end
  def test_intermediate_output_k35; assert_in_epsilon(168.04416034153104, worksheet.intermediate_output_k35, 0.002); end
  def test_intermediate_output_l35; assert_in_epsilon(168.04692645867027, worksheet.intermediate_output_l35, 0.002); end
  def test_intermediate_output_m35; assert_in_epsilon(168.05041723621156, worksheet.intermediate_output_m35, 0.002); end
  def test_intermediate_output_n35; assert_in_epsilon(168.054325891992, worksheet.intermediate_output_n35, 0.002); end
  def test_intermediate_output_o35; assert_in_epsilon(168.0585017563888, worksheet.intermediate_output_o35, 0.002); end
  def test_intermediate_output_p35; assert_in_epsilon(24.278714679744752, worksheet.intermediate_output_p35, 0.002); end
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
  def test_intermediate_output_g42; assert_in_epsilon(3834.6998815001843, worksheet.intermediate_output_g42, 0.002); end
  def test_intermediate_output_h42; assert_in_epsilon(4387.614989564262, worksheet.intermediate_output_h42, 0.002); end
  def test_intermediate_output_i42; assert_in_epsilon(4996.3751818790915, worksheet.intermediate_output_i42, 0.002); end
  def test_intermediate_output_j42; assert_in_epsilon(5714.815533887691, worksheet.intermediate_output_j42, 0.002); end
  def test_intermediate_output_k42; assert_in_epsilon(6633.232367796969, worksheet.intermediate_output_k42, 0.002); end
  def test_intermediate_output_l42; assert_in_epsilon(7721.450173951748, worksheet.intermediate_output_l42, 0.002); end
  def test_intermediate_output_m42; assert_in_epsilon(9105.093942728541, worksheet.intermediate_output_m42, 0.002); end
  def test_intermediate_output_n42; assert_in_epsilon(10630.791857661889, worksheet.intermediate_output_n42, 0.002); end
  def test_intermediate_output_o42; assert_in_epsilon(12335.462173556538, worksheet.intermediate_output_o42, 0.002); end
  def test_intermediate_output_p42; assert_in_epsilon(14269.992391048163, worksheet.intermediate_output_p42, 0.002); end
  def test_intermediate_output_d43; assert_equal("Coal", worksheet.intermediate_output_d43); end
  def test_intermediate_output_g43; assert_in_epsilon(3834.6998815001843, worksheet.intermediate_output_g43, 0.002); end
  def test_intermediate_output_h43; assert_in_epsilon(4387.614989564262, worksheet.intermediate_output_h43, 0.002); end
  def test_intermediate_output_i43; assert_in_epsilon(4996.3751818790915, worksheet.intermediate_output_i43, 0.002); end
  def test_intermediate_output_j43; assert_in_epsilon(5714.815533887691, worksheet.intermediate_output_j43, 0.002); end
  def test_intermediate_output_k43; assert_in_epsilon(6633.232367796969, worksheet.intermediate_output_k43, 0.002); end
  def test_intermediate_output_l43; assert_in_epsilon(7721.450173951748, worksheet.intermediate_output_l43, 0.002); end
  def test_intermediate_output_m43; assert_in_epsilon(9105.093942728541, worksheet.intermediate_output_m43, 0.002); end
  def test_intermediate_output_n43; assert_in_epsilon(10630.791857661889, worksheet.intermediate_output_n43, 0.002); end
  def test_intermediate_output_o43; assert_in_epsilon(12335.462173556538, worksheet.intermediate_output_o43, 0.002); end
  def test_intermediate_output_p43; assert_in_epsilon(14269.992391048163, worksheet.intermediate_output_p43, 0.002); end
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
  def test_intermediate_output_g45; assert_in_epsilon(553.8553914230257, worksheet.intermediate_output_g45, 0.002); end
  def test_intermediate_output_h45; assert_in_epsilon(649.6521092479593, worksheet.intermediate_output_h45, 0.002); end
  def test_intermediate_output_i45; assert_in_epsilon(745.6199008308481, worksheet.intermediate_output_i45, 0.002); end
  def test_intermediate_output_j45; assert_in_epsilon(838.6799743554361, worksheet.intermediate_output_j45, 0.002); end
  def test_intermediate_output_k45; assert_in_epsilon(928.7166761345673, worksheet.intermediate_output_k45, 0.002); end
  def test_intermediate_output_l45; assert_in_epsilon(1016.9935964965312, worksheet.intermediate_output_l45, 0.002); end
  def test_intermediate_output_m45; assert_in_epsilon(1162.557114168934, worksheet.intermediate_output_m45, 0.002); end
  def test_intermediate_output_n45; assert_in_epsilon(1385.3655103279275, worksheet.intermediate_output_n45, 0.002); end
  def test_intermediate_output_o45; assert_in_epsilon(1346.2284749255707, worksheet.intermediate_output_o45, 0.002); end
  def test_intermediate_output_p45; assert_in_epsilon(1368.942146699088, worksheet.intermediate_output_p45, 0.002); end
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
  def test_intermediate_output_g47; assert_in_epsilon(553.8553914230257, worksheet.intermediate_output_g47, 0.002); end
  def test_intermediate_output_h47; assert_in_epsilon(649.6521092479593, worksheet.intermediate_output_h47, 0.002); end
  def test_intermediate_output_i47; assert_in_epsilon(745.6199008308481, worksheet.intermediate_output_i47, 0.002); end
  def test_intermediate_output_j47; assert_in_epsilon(838.6799743554361, worksheet.intermediate_output_j47, 0.002); end
  def test_intermediate_output_k47; assert_in_epsilon(928.7166761345673, worksheet.intermediate_output_k47, 0.002); end
  def test_intermediate_output_l47; assert_in_epsilon(1016.9935964965312, worksheet.intermediate_output_l47, 0.002); end
  def test_intermediate_output_m47; assert_in_epsilon(1162.557114168934, worksheet.intermediate_output_m47, 0.002); end
  def test_intermediate_output_n47; assert_in_epsilon(1385.3655103279275, worksheet.intermediate_output_n47, 0.002); end
  def test_intermediate_output_o47; assert_in_epsilon(1346.2284749255707, worksheet.intermediate_output_o47, 0.002); end
  def test_intermediate_output_p47; assert_in_epsilon(1368.942146699088, worksheet.intermediate_output_p47, 0.002); end
  def test_intermediate_output_c48; assert_equal("Y.06", worksheet.intermediate_output_c48); end
  def test_intermediate_output_d48; assert_equal("Gas oversupply (imports)", worksheet.intermediate_output_d48); end
  def test_intermediate_output_g48; assert_in_epsilon(127.3371537764063, worksheet.intermediate_output_g48, 0.002); end
  def test_intermediate_output_h48; assert_in_epsilon(171.77300744412628, worksheet.intermediate_output_h48, 0.002); end
  def test_intermediate_output_i48; assert_in_epsilon(220.98849314991372, worksheet.intermediate_output_i48, 0.002); end
  def test_intermediate_output_j48; assert_in_epsilon(256.8547743302006, worksheet.intermediate_output_j48, 0.002); end
  def test_intermediate_output_k48; assert_in_epsilon(307.45615647262196, worksheet.intermediate_output_k48, 0.002); end
  def test_intermediate_output_l48; assert_in_epsilon(341.5547295731642, worksheet.intermediate_output_l48, 0.002); end
  def test_intermediate_output_m48; assert_in_epsilon(330.77347634740937, worksheet.intermediate_output_m48, 0.002); end
  def test_intermediate_output_n48; assert_in_epsilon(383.4021657132359, worksheet.intermediate_output_n48, 0.002); end
  def test_intermediate_output_o48; assert_in_epsilon(424.3261338122037, worksheet.intermediate_output_o48, 0.002); end
  def test_intermediate_output_p48; assert_in_epsilon(462.4199561633733, worksheet.intermediate_output_p48, 0.002); end
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
  def test_intermediate_output_g50; assert_in_epsilon(188.5521537764063, worksheet.intermediate_output_g50, 0.002); end
  def test_intermediate_output_h50; assert_in_epsilon(216.5730074441263, worksheet.intermediate_output_h50, 0.002); end
  def test_intermediate_output_i50; assert_in_epsilon(247.44244514991374, worksheet.intermediate_output_i50, 0.002); end
  def test_intermediate_output_j50; assert_in_epsilon(272.4755684466806, worksheet.intermediate_output_j50, 0.002); end
  def test_intermediate_output_k50; assert_in_epsilon(307.45615647262196, worksheet.intermediate_output_k50, 0.002); end
  def test_intermediate_output_l50; assert_in_epsilon(341.5547295731642, worksheet.intermediate_output_l50, 0.002); end
  def test_intermediate_output_m50; assert_in_epsilon(330.77347634740937, worksheet.intermediate_output_m50, 0.002); end
  def test_intermediate_output_n50; assert_in_epsilon(383.4021657132359, worksheet.intermediate_output_n50, 0.002); end
  def test_intermediate_output_o50; assert_in_epsilon(424.3261338122037, worksheet.intermediate_output_o50, 0.002); end
  def test_intermediate_output_p50; assert_in_epsilon(462.4199561633733, worksheet.intermediate_output_p50, 0.002); end
  def test_intermediate_output_d51; assert_equal("Total Primary Supply", worksheet.intermediate_output_d51); end
  def test_intermediate_output_g51; assert_in_epsilon(4673.338170423776, worksheet.intermediate_output_g51, 0.002); end
  def test_intermediate_output_h51; assert_in_epsilon(5383.847412182021, worksheet.intermediate_output_h51, 0.002); end
  def test_intermediate_output_i51; assert_in_epsilon(6143.617968311603, worksheet.intermediate_output_i51, 0.002); end
  def test_intermediate_output_j51; assert_in_epsilon(6994.565201571398, worksheet.intermediate_output_j51, 0.002); end
  def test_intermediate_output_k51; assert_in_epsilon(8037.449360745689, worksheet.intermediate_output_k51, 0.002); end
  def test_intermediate_output_l51; assert_in_epsilon(9248.045426480114, worksheet.intermediate_output_l51, 0.002); end
  def test_intermediate_output_m51; assert_in_epsilon(10766.474950481095, worksheet.intermediate_output_m51, 0.002); end
  def test_intermediate_output_n51; assert_in_epsilon(12567.613859595043, worksheet.intermediate_output_n51, 0.002); end
  def test_intermediate_output_o51; assert_in_epsilon(14274.0752840507, worksheet.intermediate_output_o51, 0.002); end
  def test_intermediate_output_p51; assert_in_epsilon(16125.63320859037, worksheet.intermediate_output_p51, 0.002); end
  def test_intermediate_output_g52; assert_in_delta(0.8205483407489973, worksheet.intermediate_output_g52, 0.002); end
  def test_intermediate_output_h52; assert_in_delta(0.8149590160442538, worksheet.intermediate_output_h52, 0.002); end
  def test_intermediate_output_i52; assert_in_delta(0.8132626748033621, worksheet.intermediate_output_i52, 0.002); end
  def test_intermediate_output_j52; assert_in_delta(0.8170365661333462, worksheet.intermediate_output_j52, 0.002); end
  def test_intermediate_output_k52; assert_in_delta(0.8252907197391735, worksheet.intermediate_output_k52, 0.002); end
  def test_intermediate_output_l52; assert_in_delta(0.8349277947795072, worksheet.intermediate_output_l52, 0.002); end
  def test_intermediate_output_m52; assert_in_delta(0.8456894187379022, worksheet.intermediate_output_m52, 0.002); end
  def test_intermediate_output_n52; assert_in_delta(0.845887849231265, worksheet.intermediate_output_n52, 0.002); end
  def test_intermediate_output_o52; assert_in_delta(0.8641864308604079, worksheet.intermediate_output_o52, 0.002); end
  def test_intermediate_output_p52; assert_in_delta(0.8849260184986919, worksheet.intermediate_output_p52, 0.002); end
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
  def test_intermediate_output_g56; assert_in_epsilon(1756.790751912342, worksheet.intermediate_output_g56, 0.002); end
  def test_intermediate_output_h56; assert_in_epsilon(2089.4569865237854, worksheet.intermediate_output_h56, 0.002); end
  def test_intermediate_output_i56; assert_in_epsilon(2380.2404670611804, worksheet.intermediate_output_i56, 0.002); end
  def test_intermediate_output_j56; assert_in_epsilon(2732.1977116252965, worksheet.intermediate_output_j56, 0.002); end
  def test_intermediate_output_k56; assert_in_epsilon(3135.73866665123, worksheet.intermediate_output_k56, 0.002); end
  def test_intermediate_output_l56; assert_in_epsilon(3639.5624282226604, worksheet.intermediate_output_l56, 0.002); end
  def test_intermediate_output_m56; assert_in_epsilon(4240.428382837654, worksheet.intermediate_output_m56, 0.002); end
  def test_intermediate_output_n56; assert_in_epsilon(4927.091551595357, worksheet.intermediate_output_n56, 0.002); end
  def test_intermediate_output_o56; assert_in_epsilon(5710.557273729597, worksheet.intermediate_output_o56, 0.002); end
  def test_intermediate_output_p56; assert_in_epsilon(6558.960374614324, worksheet.intermediate_output_p56, 0.002); end
  def test_intermediate_output_c57; assert_equal("X.02", worksheet.intermediate_output_c57); end
  def test_intermediate_output_d57; assert_equal("Distribution losses and own use", worksheet.intermediate_output_d57); end
  def test_intermediate_output_g57; assert_in_epsilon(94.74789614797379, worksheet.intermediate_output_g57, 0.002); end
  def test_intermediate_output_h57; assert_in_epsilon(163.57907762974745, worksheet.intermediate_output_h57, 0.002); end
  def test_intermediate_output_i57; assert_in_epsilon(192.57433476773434, worksheet.intermediate_output_i57, 0.002); end
  def test_intermediate_output_j57; assert_in_epsilon(228.15185114702336, worksheet.intermediate_output_j57, 0.002); end
  def test_intermediate_output_k57; assert_in_epsilon(268.42852614400925, worksheet.intermediate_output_k57, 0.002); end
  def test_intermediate_output_l57; assert_in_epsilon(318.27509915736937, worksheet.intermediate_output_l57, 0.002); end
  def test_intermediate_output_m57; assert_in_epsilon(380.3357044034527, worksheet.intermediate_output_m57, 0.002); end
  def test_intermediate_output_n57; assert_in_epsilon(454.27046775930035, worksheet.intermediate_output_n57, 0.002); end
  def test_intermediate_output_o57; assert_in_epsilon(525.9884984897602, worksheet.intermediate_output_o57, 0.002); end
  def test_intermediate_output_p57; assert_in_epsilon(609.1850187026416, worksheet.intermediate_output_p57, 0.002); end
  def test_intermediate_output_d58; assert_equal("Supply net of losses", worksheet.intermediate_output_d58); end
  def test_intermediate_output_g58; assert_in_epsilon(2821.7995223634607, worksheet.intermediate_output_g58, 0.002); end
  def test_intermediate_output_h58; assert_in_epsilon(3130.811348028488, worksheet.intermediate_output_h58, 0.002); end
  def test_intermediate_output_i58; assert_in_epsilon(3570.8031664826885, worksheet.intermediate_output_i58, 0.002); end
  def test_intermediate_output_j58; assert_in_epsilon(4034.2156387990776, worksheet.intermediate_output_j58, 0.002); end
  def test_intermediate_output_k58; assert_in_epsilon(4633.2821679504505, worksheet.intermediate_output_k58, 0.002); end
  def test_intermediate_output_l58; assert_in_epsilon(5290.2078991000835, worksheet.intermediate_output_l58, 0.002); end
  def test_intermediate_output_m58; assert_in_epsilon(6145.710863239989, worksheet.intermediate_output_m58, 0.002); end
  def test_intermediate_output_n58; assert_in_epsilon(7186.251840240387, worksheet.intermediate_output_n58, 0.002); end
  def test_intermediate_output_o58; assert_in_epsilon(8037.5295118313425, worksheet.intermediate_output_o58, 0.002); end
  def test_intermediate_output_p58; assert_in_epsilon(8957.487815273405, worksheet.intermediate_output_p58, 0.002); end
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
  def test_intermediate_output_g78; assert_in_epsilon(-610.6635628336151, worksheet.intermediate_output_g78, 0.002); end
  def test_intermediate_output_h78; assert_in_epsilon(-604.5841809826063, worksheet.intermediate_output_h78, 0.002); end
  def test_intermediate_output_i78; assert_in_epsilon(-611.1007987063949, worksheet.intermediate_output_i78, 0.002); end
  def test_intermediate_output_j78; assert_in_epsilon(-604.948419341155, worksheet.intermediate_output_j78, 0.002); end
  def test_intermediate_output_k78; assert_in_epsilon(-609.6901747021998, worksheet.intermediate_output_k78, 0.002); end
  def test_intermediate_output_l78; assert_in_epsilon(-617.4811254042072, worksheet.intermediate_output_l78, 0.002); end
  def test_intermediate_output_m78; assert_in_epsilon(-609.612993333608, worksheet.intermediate_output_m78, 0.002); end
  def test_intermediate_output_n78; assert_in_epsilon(-607.5216594201719, worksheet.intermediate_output_n78, 0.002); end
  def test_intermediate_output_o78; assert_in_epsilon(-621.5110631749576, worksheet.intermediate_output_o78, 0.002); end
  def test_intermediate_output_p78; assert_in_epsilon(-619.2927104026628, worksheet.intermediate_output_p78, 0.002); end
  def test_intermediate_output_b82; assert_equal("Electricity grid (net of distribution losses)", worksheet.intermediate_output_b82); end
  def test_intermediate_output_c84; assert_equal("V.01", worksheet.intermediate_output_c84); end
  def test_intermediate_output_d84; assert_equal("Electricity (delivered to end user)", worksheet.intermediate_output_d84); end
  def test_intermediate_output_g84; assert_in_epsilon(-891.8573295806576, worksheet.intermediate_output_g84, 0.002); end
  def test_intermediate_output_h84; assert_in_epsilon(-1058.3197873647225, worksheet.intermediate_output_h84, 0.002); end
  def test_intermediate_output_i84; assert_in_epsilon(-1247.53442093386, worksheet.intermediate_output_i84, 0.002); end
  def test_intermediate_output_j84; assert_in_epsilon(-1468.5241783362408, worksheet.intermediate_output_j84, 0.002); end
  def test_intermediate_output_k84; assert_in_epsilon(-1729.2138460228348, worksheet.intermediate_output_k84, 0.002); end
  def test_intermediate_output_l84; assert_in_epsilon(-2053.2035767384623, worksheet.intermediate_output_l84, 0.002); end
  def test_intermediate_output_m84; assert_in_epsilon(-2453.939654521435, worksheet.intermediate_output_m84, 0.002); end
  def test_intermediate_output_n84; assert_in_epsilon(-2921.7067569138258, worksheet.intermediate_output_n84, 0.002); end
  def test_intermediate_output_o84; assert_in_epsilon(-3389.8065732473674, worksheet.intermediate_output_o84, 0.002); end
  def test_intermediate_output_p84; assert_in_epsilon(-3916.170408584502, worksheet.intermediate_output_p84, 0.002); end
  def test_intermediate_output_q84; assert_equal("REFERENCED", worksheet.intermediate_output_q84); end
  def test_intermediate_output_c85; assert_equal("V.02", worksheet.intermediate_output_c85); end
  def test_intermediate_output_d85; assert_equal("Electricity (supplied to grid)", worksheet.intermediate_output_d85); end
  def test_intermediate_output_g85; assert_in_epsilon(891.8573295806576, worksheet.intermediate_output_g85, 0.002); end
  def test_intermediate_output_h85; assert_in_epsilon(1058.3197873647225, worksheet.intermediate_output_h85, 0.002); end
  def test_intermediate_output_i85; assert_in_epsilon(1247.53442093386, worksheet.intermediate_output_i85, 0.002); end
  def test_intermediate_output_j85; assert_in_epsilon(1468.5241783362408, worksheet.intermediate_output_j85, 0.002); end
  def test_intermediate_output_k85; assert_in_epsilon(1729.2138460228348, worksheet.intermediate_output_k85, 0.002); end
  def test_intermediate_output_l85; assert_in_epsilon(2053.2035767384623, worksheet.intermediate_output_l85, 0.002); end
  def test_intermediate_output_m85; assert_in_epsilon(2453.939654521435, worksheet.intermediate_output_m85, 0.002); end
  def test_intermediate_output_n85; assert_in_epsilon(2921.7067569138258, worksheet.intermediate_output_n85, 0.002); end
  def test_intermediate_output_o85; assert_in_epsilon(3389.8065732473674, worksheet.intermediate_output_o85, 0.002); end
  def test_intermediate_output_p85; assert_in_epsilon(3916.170408584502, worksheet.intermediate_output_p85, 0.002); end
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
  def test_intermediate_output_c88; assert_equal("V.02", worksheet.intermediate_output_c88); end
  def test_intermediate_output_d88; assert_equal("Losses", worksheet.intermediate_output_d88); end
  def test_intermediate_output_g88; assert_in_delta(0.0, (worksheet.intermediate_output_g88||0), 0.002); end
  def test_intermediate_output_h88; assert_in_delta(0.0, (worksheet.intermediate_output_h88||0), 0.002); end
  def test_intermediate_output_i88; assert_in_delta(0.0, (worksheet.intermediate_output_i88||0), 0.002); end
  def test_intermediate_output_j88; assert_in_delta(0.0, (worksheet.intermediate_output_j88||0), 0.002); end
  def test_intermediate_output_k88; assert_in_delta(0.0, (worksheet.intermediate_output_k88||0), 0.002); end
  def test_intermediate_output_l88; assert_in_delta(0.0, (worksheet.intermediate_output_l88||0), 0.002); end
  def test_intermediate_output_m88; assert_in_delta(0.0, (worksheet.intermediate_output_m88||0), 0.002); end
  def test_intermediate_output_n88; assert_in_delta(0.0, (worksheet.intermediate_output_n88||0), 0.002); end
  def test_intermediate_output_o88; assert_in_delta(0.0, (worksheet.intermediate_output_o88||0), 0.002); end
  def test_intermediate_output_p88; assert_in_delta(0.0, (worksheet.intermediate_output_p88||0), 0.002); end
  def test_intermediate_output_d89; assert_equal("Demand (for charting)", worksheet.intermediate_output_d89); end
  def test_intermediate_output_g89; assert_in_epsilon(891.8573295806576, worksheet.intermediate_output_g89, 0.002); end
  def test_intermediate_output_h89; assert_in_epsilon(1058.3197873647225, worksheet.intermediate_output_h89, 0.002); end
  def test_intermediate_output_i89; assert_in_epsilon(1247.53442093386, worksheet.intermediate_output_i89, 0.002); end
  def test_intermediate_output_j89; assert_in_epsilon(1468.5241783362408, worksheet.intermediate_output_j89, 0.002); end
  def test_intermediate_output_k89; assert_in_epsilon(1729.2138460228348, worksheet.intermediate_output_k89, 0.002); end
  def test_intermediate_output_l89; assert_in_epsilon(2053.2035767384623, worksheet.intermediate_output_l89, 0.002); end
  def test_intermediate_output_m89; assert_in_epsilon(2453.939654521435, worksheet.intermediate_output_m89, 0.002); end
  def test_intermediate_output_n89; assert_in_epsilon(2921.7067569138258, worksheet.intermediate_output_n89, 0.002); end
  def test_intermediate_output_o89; assert_in_epsilon(3389.8065732473674, worksheet.intermediate_output_o89, 0.002); end
  def test_intermediate_output_p89; assert_in_epsilon(3916.170408584502, worksheet.intermediate_output_p89, 0.002); end
  def test_intermediate_output_d90; assert_equal("Dummy for charting", worksheet.intermediate_output_d90); end
  def test_intermediate_output_g90; assert_in_epsilon(891.8573295806577, worksheet.intermediate_output_g90, 0.002); end
  def test_intermediate_output_h90; assert_in_epsilon(1058.3264986910353, worksheet.intermediate_output_h90, 0.002); end
  def test_intermediate_output_i90; assert_in_epsilon(1247.54276093537, worksheet.intermediate_output_i90, 0.002); end
  def test_intermediate_output_j90; assert_in_epsilon(1468.5344779995903, worksheet.intermediate_output_j90, 0.002); end
  def test_intermediate_output_k90; assert_in_epsilon(1729.2264391461254, worksheet.intermediate_output_k90, 0.002); end
  def test_intermediate_output_l90; assert_in_epsilon(2053.2189359788927, worksheet.intermediate_output_l90, 0.002); end
  def test_intermediate_output_m90; assert_in_epsilon(2453.9585045394065, worksheet.intermediate_output_m90, 0.002); end
  def test_intermediate_output_n90; assert_in_epsilon(2921.7295155875768, worksheet.intermediate_output_n90, 0.002); end
  def test_intermediate_output_o90; assert_in_epsilon(3389.8335077855163, worksheet.intermediate_output_o90, 0.002); end
  def test_intermediate_output_p90; assert_in_epsilon(3916.201871046007, worksheet.intermediate_output_p90, 0.002); end
  def test_intermediate_output_r90; assert_equal("Includes exports", worksheet.intermediate_output_r90); end
  def test_intermediate_output_c93; assert_equal("Z.01", worksheet.intermediate_output_c93); end
  def test_intermediate_output_d93; assert_equal("Unallocated", worksheet.intermediate_output_d93); end
  def test_intermediate_output_g93; assert_in_epsilon(-611.3366233264148, worksheet.intermediate_output_g93, 0.002); end
  def test_intermediate_output_h93; assert_in_epsilon(-605.2572414754063, worksheet.intermediate_output_h93, 0.002); end
  def test_intermediate_output_i93; assert_in_epsilon(-611.7738591991956, worksheet.intermediate_output_i93, 0.002); end
  def test_intermediate_output_j93; assert_in_epsilon(-605.6214798339547, worksheet.intermediate_output_j93, 0.002); end
  def test_intermediate_output_k93; assert_in_epsilon(-610.3632351949987, worksheet.intermediate_output_k93, 0.002); end
  def test_intermediate_output_l93; assert_in_epsilon(-618.1541858970099, worksheet.intermediate_output_l93, 0.002); end
  def test_intermediate_output_m93; assert_in_epsilon(-610.2860538264104, worksheet.intermediate_output_m93, 0.002); end
  def test_intermediate_output_n93; assert_in_epsilon(-608.1947199129745, worksheet.intermediate_output_n93, 0.002); end
  def test_intermediate_output_o93; assert_in_epsilon(-622.1841236677601, worksheet.intermediate_output_o93, 0.002); end
  def test_intermediate_output_p93; assert_in_epsilon(-619.9657708954637, worksheet.intermediate_output_p93, 0.002); end
  def test_intermediate_output_d95; assert_equal("Net balance (should be zero!)", worksheet.intermediate_output_d95); end
  def test_intermediate_output_g95; assert_in_epsilon(-1222.00018616003, worksheet.intermediate_output_g95, 0.002); end
  def test_intermediate_output_h95; assert_in_epsilon(-1209.8414224580126, worksheet.intermediate_output_h95, 0.002); end
  def test_intermediate_output_i95; assert_in_epsilon(-1222.8746579055905, worksheet.intermediate_output_i95, 0.002); end
  def test_intermediate_output_j95; assert_in_epsilon(-1210.5698991751096, worksheet.intermediate_output_j95, 0.002); end
  def test_intermediate_output_k95; assert_in_epsilon(-1220.0534098971984, worksheet.intermediate_output_k95, 0.002); end
  def test_intermediate_output_l95; assert_in_epsilon(-1235.6353113012171, worksheet.intermediate_output_l95, 0.002); end
  def test_intermediate_output_m95; assert_in_epsilon(-1219.8990471600182, worksheet.intermediate_output_m95, 0.002); end
  def test_intermediate_output_n95; assert_in_epsilon(-1215.7163793331465, worksheet.intermediate_output_n95, 0.002); end
  def test_intermediate_output_o95; assert_in_epsilon(-1243.6951868427177, worksheet.intermediate_output_o95, 0.002); end
  def test_intermediate_output_p95; assert_in_epsilon(-1239.2584812981265, worksheet.intermediate_output_p95, 0.002); end
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
  def test_intermediate_output_g100; assert_in_epsilon(819.6118342564978, worksheet.intermediate_output_g100, 0.002); end
  def test_intermediate_output_h100; assert_in_epsilon(975.2389269653625, worksheet.intermediate_output_h100, 0.002); end
  def test_intermediate_output_i100; assert_in_epsilon(1140.2820546836201, worksheet.intermediate_output_i100, 0.002); end
  def test_intermediate_output_j100; assert_in_epsilon(1346.8600873180008, worksheet.intermediate_output_j100, 0.002); end
  def test_intermediate_output_k100; assert_in_epsilon(1608.1020130045945, worksheet.intermediate_output_k100, 0.002); end
  def test_intermediate_output_l100; assert_in_epsilon(1932.0917437202222, worksheet.intermediate_output_l100, 0.002); end
  def test_intermediate_output_m100; assert_in_epsilon(2332.827821503195, worksheet.intermediate_output_m100, 0.002); end
  def test_intermediate_output_n100; assert_in_epsilon(2800.5949238955855, worksheet.intermediate_output_n100, 0.002); end
  def test_intermediate_output_o100; assert_in_epsilon(3268.6947402291275, worksheet.intermediate_output_o100, 0.002); end
  def test_intermediate_output_p100; assert_in_epsilon(3841.069556366262, worksheet.intermediate_output_p100, 0.002); end
  def test_intermediate_output_c101; assert_equal("Therm.b", worksheet.intermediate_output_c101); end
  def test_intermediate_output_d101; assert_equal("CCGT", worksheet.intermediate_output_d101); end
  def test_intermediate_output_g101; assert_in_delta(0.0, (worksheet.intermediate_output_g101||0), 0.002); end
  def test_intermediate_output_h101; assert_in_delta(0.0, (worksheet.intermediate_output_h101||0), 0.002); end
  def test_intermediate_output_i101; assert_in_delta(0.0, (worksheet.intermediate_output_i101||0), 0.002); end
  def test_intermediate_output_j101; assert_in_delta(0.0, (worksheet.intermediate_output_j101||0), 0.002); end
  def test_intermediate_output_k101; assert_in_delta(0.0, (worksheet.intermediate_output_k101||0), 0.002); end
  def test_intermediate_output_l101; assert_in_delta(0.0, (worksheet.intermediate_output_l101||0), 0.002); end
  def test_intermediate_output_m101; assert_in_delta(0.0, (worksheet.intermediate_output_m101||0), 0.002); end
  def test_intermediate_output_n101; assert_in_delta(0.0, (worksheet.intermediate_output_n101||0), 0.002); end
  def test_intermediate_output_o101; assert_in_delta(0.0, (worksheet.intermediate_output_o101||0), 0.002); end
  def test_intermediate_output_p101; assert_in_delta(0.0, (worksheet.intermediate_output_p101||0), 0.002); end
  def test_intermediate_output_c102; assert_equal("Coal and Gas Turbines", worksheet.intermediate_output_c102); end
  def test_intermediate_output_g102; assert_in_epsilon(819.6118342564978, worksheet.intermediate_output_g102, 0.002); end
  def test_intermediate_output_h102; assert_in_epsilon(975.2389269653625, worksheet.intermediate_output_h102, 0.002); end
  def test_intermediate_output_i102; assert_in_epsilon(1140.2820546836201, worksheet.intermediate_output_i102, 0.002); end
  def test_intermediate_output_j102; assert_in_epsilon(1346.8600873180008, worksheet.intermediate_output_j102, 0.002); end
  def test_intermediate_output_k102; assert_in_epsilon(1608.1020130045945, worksheet.intermediate_output_k102, 0.002); end
  def test_intermediate_output_l102; assert_in_epsilon(1932.0917437202222, worksheet.intermediate_output_l102, 0.002); end
  def test_intermediate_output_m102; assert_in_epsilon(2332.827821503195, worksheet.intermediate_output_m102, 0.002); end
  def test_intermediate_output_n102; assert_in_epsilon(2800.5949238955855, worksheet.intermediate_output_n102, 0.002); end
  def test_intermediate_output_o102; assert_in_epsilon(3268.6947402291275, worksheet.intermediate_output_o102, 0.002); end
  def test_intermediate_output_p102; assert_in_epsilon(3841.069556366262, worksheet.intermediate_output_p102, 0.002); end
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
  def test_intermediate_output_c106; assert_equal("Nuclear", worksheet.intermediate_output_c106); end
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
  def test_intermediate_output_c109; assert_equal("RE.b", worksheet.intermediate_output_c109); end
  def test_intermediate_output_d109; assert_equal("Hydroelectric power stations", worksheet.intermediate_output_d109); end
  def test_intermediate_output_g109; assert_in_epsilon(37.00128600000001, worksheet.intermediate_output_g109, 0.002); end
  def test_intermediate_output_h109; assert_in_epsilon(37.00128600000001, worksheet.intermediate_output_h109, 0.002); end
  def test_intermediate_output_i109; assert_in_epsilon(37.03284360000001, worksheet.intermediate_output_i109, 0.002); end
  def test_intermediate_output_j109; assert_in_epsilon(37.111737600000005, worksheet.intermediate_output_j109, 0.002); end
  def test_intermediate_output_k109; assert_in_epsilon(36.5594796, worksheet.intermediate_output_k109, 0.002); end
  def test_intermediate_output_l109; assert_in_epsilon(36.5594796, worksheet.intermediate_output_l109, 0.002); end
  def test_intermediate_output_m109; assert_in_epsilon(36.5594796, worksheet.intermediate_output_m109, 0.002); end
  def test_intermediate_output_n109; assert_in_epsilon(36.5594796, worksheet.intermediate_output_n109, 0.002); end
  def test_intermediate_output_o109; assert_in_epsilon(36.5594796, worksheet.intermediate_output_o109, 0.002); end
  def test_intermediate_output_p109; assert_in_epsilon(36.5594796, worksheet.intermediate_output_p109, 0.002); end
  def test_intermediate_output_c110; assert_equal("RE.c", worksheet.intermediate_output_c110); end
  def test_intermediate_output_d110; assert_equal("CSP", worksheet.intermediate_output_d110); end
  def test_intermediate_output_g110; assert_in_delta(0.0, (worksheet.intermediate_output_g110||0), 0.002); end
  def test_intermediate_output_h110; assert_in_delta(0.0, (worksheet.intermediate_output_h110||0), 0.002); end
  def test_intermediate_output_i110; assert_in_epsilon(1.9881288, worksheet.intermediate_output_i110, 0.002); end
  def test_intermediate_output_j110; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_j110, 0.002); end
  def test_intermediate_output_k110; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_k110, 0.002); end
  def test_intermediate_output_l110; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_l110, 0.002); end
  def test_intermediate_output_m110; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_m110, 0.002); end
  def test_intermediate_output_n110; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_n110, 0.002); end
  def test_intermediate_output_o110; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_o110, 0.002); end
  def test_intermediate_output_p110; assert_in_epsilon(5.301676800000001, worksheet.intermediate_output_p110, 0.002); end
  def test_intermediate_output_c111; assert_equal("RE.e", worksheet.intermediate_output_c111); end
  def test_intermediate_output_d111; assert_equal("Centralised PV", worksheet.intermediate_output_d111); end
  def test_intermediate_output_g111; assert_in_delta(0.0, (worksheet.intermediate_output_g111||0), 0.002); end
  def test_intermediate_output_h111; assert_in_delta(0.0, (worksheet.intermediate_output_h111||0), 0.002); end
  def test_intermediate_output_i111; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_i111, 0.002); end
  def test_intermediate_output_j111; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_j111, 0.002); end
  def test_intermediate_output_k111; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_k111, 0.002); end
  def test_intermediate_output_l111; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_l111, 0.002); end
  def test_intermediate_output_m111; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_m111, 0.002); end
  def test_intermediate_output_n111; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_n111, 0.002); end
  def test_intermediate_output_o111; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_o111, 0.002); end
  def test_intermediate_output_p111; assert_in_epsilon(10.650058847999999, worksheet.intermediate_output_p111, 0.002); end
  def test_intermediate_output_d112; assert_equal("Geothermal electricity", worksheet.intermediate_output_d112); end
  def test_intermediate_output_c113; assert_equal("RE.d", worksheet.intermediate_output_c113); end
  def test_intermediate_output_d113; assert_equal("Decentralised PV", worksheet.intermediate_output_d113); end
  def test_intermediate_output_g113; assert_in_delta(0.0, (worksheet.intermediate_output_g113||0), 0.002); end
  def test_intermediate_output_h113; assert_in_delta(0.006711326312769469, worksheet.intermediate_output_h113, 0.002); end
  def test_intermediate_output_i113; assert_in_delta(0.008340001509972272, worksheet.intermediate_output_i113, 0.002); end
  def test_intermediate_output_j113; assert_in_delta(0.010299663349527349, worksheet.intermediate_output_j113, 0.002); end
  def test_intermediate_output_k113; assert_in_delta(0.012593123290769876, worksheet.intermediate_output_k113, 0.002); end
  def test_intermediate_output_l113; assert_in_delta(0.015359240430222318, worksheet.intermediate_output_l113, 0.002); end
  def test_intermediate_output_m113; assert_in_delta(0.018850017971518945, worksheet.intermediate_output_m113, 0.002); end
  def test_intermediate_output_n113; assert_in_delta(0.022758673751466917, worksheet.intermediate_output_n113, 0.002); end
  def test_intermediate_output_o113; assert_in_delta(0.026934538148770892, worksheet.intermediate_output_o113, 0.002); end
  def test_intermediate_output_p113; assert_in_delta(0.03146246150474343, worksheet.intermediate_output_p113, 0.002); end
  def test_intermediate_output_d114; assert_equal("Renewables and Hydro", worksheet.intermediate_output_d114); end
  def test_intermediate_output_g114; assert_in_epsilon(37.027213724160006, worksheet.intermediate_output_g114, 0.002); end
  def test_intermediate_output_h114; assert_in_epsilon(37.076590925672775, worksheet.intermediate_output_h114, 0.002); end
  def test_intermediate_output_i114; assert_in_epsilon(61.249725451749974, worksheet.intermediate_output_i114, 0.002); end
  def test_intermediate_output_j114; assert_in_epsilon(75.66340988158953, worksheet.intermediate_output_j114, 0.002); end
  def test_intermediate_output_k114; assert_in_epsilon(75.11344534153078, worksheet.intermediate_output_k114, 0.002); end
  def test_intermediate_output_l114; assert_in_epsilon(75.11621145867024, worksheet.intermediate_output_l114, 0.002); end
  def test_intermediate_output_m114; assert_in_epsilon(75.11970223621152, worksheet.intermediate_output_m114, 0.002); end
  def test_intermediate_output_n114; assert_in_epsilon(75.12361089199148, worksheet.intermediate_output_n114, 0.002); end
  def test_intermediate_output_o114; assert_in_epsilon(75.12778675638877, worksheet.intermediate_output_o114, 0.002); end
  def test_intermediate_output_p114; assert_in_epsilon(75.13231467974475, worksheet.intermediate_output_p114, 0.002); end
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
  def test_intermediate_output_d116; assert_equal("Total generation supplied to grid", worksheet.intermediate_output_d116); end
  def test_intermediate_output_g116; assert_in_epsilon(891.8573295806577, worksheet.intermediate_output_g116, 0.002); end
  def test_intermediate_output_h116; assert_in_epsilon(1058.3264986910353, worksheet.intermediate_output_h116, 0.002); end
  def test_intermediate_output_i116; assert_in_epsilon(1247.54276093537, worksheet.intermediate_output_i116, 0.002); end
  def test_intermediate_output_j116; assert_in_epsilon(1468.5344779995903, worksheet.intermediate_output_j116, 0.002); end
  def test_intermediate_output_k116; assert_in_epsilon(1729.2264391461254, worksheet.intermediate_output_k116, 0.002); end
  def test_intermediate_output_l116; assert_in_epsilon(2053.2189359788927, worksheet.intermediate_output_l116, 0.002); end
  def test_intermediate_output_m116; assert_in_epsilon(2453.9585045394065, worksheet.intermediate_output_m116, 0.002); end
  def test_intermediate_output_n116; assert_in_epsilon(2921.7295155875768, worksheet.intermediate_output_n116, 0.002); end
  def test_intermediate_output_o116; assert_in_epsilon(3389.8335077855163, worksheet.intermediate_output_o116, 0.002); end
  def test_intermediate_output_p116; assert_in_epsilon(3916.201871046007, worksheet.intermediate_output_p116, 0.002); end
  def test_intermediate_output_d118; assert_equal("Electricity exports", worksheet.intermediate_output_d118); end
  def test_intermediate_output_g118; assert_in_epsilon(-19.13821200000011, worksheet.intermediate_output_g118, 0.002); end
  def test_intermediate_output_h118; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_h118, 0.002); end
  def test_intermediate_output_i118; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_i118, 0.002); end
  def test_intermediate_output_j118; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_j118, 0.002); end
  def test_intermediate_output_k118; assert_in_epsilon(-19.13821199999977, worksheet.intermediate_output_k118, 0.002); end
  def test_intermediate_output_l118; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_l118, 0.002); end
  def test_intermediate_output_m118; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_m118, 0.002); end
  def test_intermediate_output_n118; assert_in_epsilon(-19.13821199999954, worksheet.intermediate_output_n118, 0.002); end
  def test_intermediate_output_o118; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_o118, 0.002); end
  def test_intermediate_output_p118; assert_in_epsilon(-19.138211999999996, worksheet.intermediate_output_p118, 0.002); end
  def test_intermediate_output_q118; assert_equal("REFERENCED", worksheet.intermediate_output_q118); end
  def test_intermediate_output_d119; assert_equal("Electricity total", worksheet.intermediate_output_d119); end
  def test_intermediate_output_g119; assert_in_epsilon(872.7191175806577, worksheet.intermediate_output_g119, 0.002); end
  def test_intermediate_output_h119; assert_in_epsilon(1039.1882866910353, worksheet.intermediate_output_h119, 0.002); end
  def test_intermediate_output_i119; assert_in_epsilon(1228.40454893537, worksheet.intermediate_output_i119, 0.002); end
  def test_intermediate_output_j119; assert_in_epsilon(1449.3962659995902, worksheet.intermediate_output_j119, 0.002); end
  def test_intermediate_output_k119; assert_in_epsilon(1710.0882271461255, worksheet.intermediate_output_k119, 0.002); end
  def test_intermediate_output_l119; assert_in_epsilon(2034.0807239788926, worksheet.intermediate_output_l119, 0.002); end
  def test_intermediate_output_m119; assert_in_epsilon(2434.8202925394066, worksheet.intermediate_output_m119, 0.002); end
  def test_intermediate_output_n119; assert_in_epsilon(2902.5913035875774, worksheet.intermediate_output_n119, 0.002); end
  def test_intermediate_output_o119; assert_in_epsilon(3370.6952957855165, worksheet.intermediate_output_o119, 0.002); end
  def test_intermediate_output_p119; assert_in_epsilon(3897.063659046007, worksheet.intermediate_output_p119, 0.002); end
  def test_intermediate_output_d120; assert_equal("GWh", worksheet.intermediate_output_d120); end
  def test_intermediate_output_g120; assert_in_epsilon(242421.97710573825, worksheet.intermediate_output_g120, 0.002); end
  def test_intermediate_output_h120; assert_in_epsilon(288663.412969732, worksheet.intermediate_output_h120, 0.002); end
  def test_intermediate_output_i120; assert_in_epsilon(341223.4858153806, worksheet.intermediate_output_i120, 0.002); end
  def test_intermediate_output_j120; assert_in_epsilon(402610.0738887751, worksheet.intermediate_output_j120, 0.002); end
  def test_intermediate_output_k120; assert_in_epsilon(475024.5075405904, worksheet.intermediate_output_k120, 0.002); end
  def test_intermediate_output_l120; assert_in_epsilon(565022.4233274702, worksheet.intermediate_output_l120, 0.002); end
  def test_intermediate_output_m120; assert_in_epsilon(676338.9701498352, worksheet.intermediate_output_m120, 0.002); end
  def test_intermediate_output_n120; assert_in_epsilon(806275.3621076604, worksheet.intermediate_output_n120, 0.002); end
  def test_intermediate_output_o120; assert_in_epsilon(936304.2488293102, worksheet.intermediate_output_o120, 0.002); end
  def test_intermediate_output_p120; assert_in_epsilon(1082517.6830683353, worksheet.intermediate_output_p120, 0.002); end
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
  def test_intermediate_output_g122; assert_in_epsilon(36.412817998338475, worksheet.intermediate_output_g122, 0.002); end
  def test_intermediate_output_h122; assert_in_epsilon(43.35847947754927, worksheet.intermediate_output_h122, 0.002); end
  def test_intermediate_output_i122; assert_in_epsilon(51.25322726138256, worksheet.intermediate_output_i122, 0.002); end
  def test_intermediate_output_j122; assert_in_epsilon(60.47375539064754, worksheet.intermediate_output_j122, 0.002); end
  def test_intermediate_output_k122; assert_in_epsilon(71.35071310090579, worksheet.intermediate_output_k122, 0.002); end
  def test_intermediate_output_l122; assert_in_epsilon(84.86878504678415, worksheet.intermediate_output_l122, 0.002); end
  def test_intermediate_output_m122; assert_in_epsilon(101.5890065714124, worksheet.intermediate_output_m122, 0.002); end
  def test_intermediate_output_n122; assert_in_epsilon(121.1060084876923, worksheet.intermediate_output_n122, 0.002); end
  def test_intermediate_output_o122; assert_in_epsilon(140.63690351317445, worksheet.intermediate_output_o122, 0.002); end
  def test_intermediate_output_p122; assert_in_epsilon(162.5987868103123, worksheet.intermediate_output_p122, 0.002); end
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
  def test_intermediate_output_c125; assert_equal("Therm.a", worksheet.intermediate_output_c125); end
  def test_intermediate_output_d125; assert_equal("Unabated thermal generation ", worksheet.intermediate_output_d125); end
  def test_intermediate_output_g125; assert_in_epsilon(34.571999999999996, worksheet.intermediate_output_g125, 0.002); end
  def test_intermediate_output_h125; assert_in_epsilon(38.349, worksheet.intermediate_output_h125, 0.002); end
  def test_intermediate_output_i125; assert_in_epsilon(44.76558470502848, worksheet.intermediate_output_i125, 0.002); end
  def test_intermediate_output_j125; assert_in_epsilon(52.07362079136651, worksheet.intermediate_output_j125, 0.002); end
  def test_intermediate_output_k125; assert_in_epsilon(69.23647619399341, worksheet.intermediate_output_k125, 0.002); end
  def test_intermediate_output_l125; assert_in_epsilon(75.30434776589858, worksheet.intermediate_output_l125, 0.002); end
  def test_intermediate_output_m125; assert_in_epsilon(98.82368574635746, worksheet.intermediate_output_m125, 0.002); end
  def test_intermediate_output_n125; assert_in_epsilon(110.01943230207569, worksheet.intermediate_output_n125, 0.002); end
  def test_intermediate_output_o125; assert_in_epsilon(137.46724870663112, worksheet.intermediate_output_o125, 0.002); end
  def test_intermediate_output_p125; assert_in_epsilon(152.15140920544286, worksheet.intermediate_output_p125, 0.002); end
  def test_intermediate_output_c126; assert_equal("Therm.b", worksheet.intermediate_output_c126); end
  def test_intermediate_output_d126; assert_equal("CCGT", worksheet.intermediate_output_d126); end
  def test_intermediate_output_g126; assert_in_delta(0.0, (worksheet.intermediate_output_g126||0), 0.002); end
  def test_intermediate_output_h126; assert_in_delta(0.0, (worksheet.intermediate_output_h126||0), 0.002); end
  def test_intermediate_output_i126; assert_in_delta(0.0, (worksheet.intermediate_output_i126||0), 0.002); end
  def test_intermediate_output_j126; assert_in_delta(0.0, (worksheet.intermediate_output_j126||0), 0.002); end
  def test_intermediate_output_k126; assert_in_delta(0.0, (worksheet.intermediate_output_k126||0), 0.002); end
  def test_intermediate_output_l126; assert_in_delta(0.0, (worksheet.intermediate_output_l126||0), 0.002); end
  def test_intermediate_output_m126; assert_in_delta(0.0, (worksheet.intermediate_output_m126||0), 0.002); end
  def test_intermediate_output_n126; assert_in_delta(0.0, (worksheet.intermediate_output_n126||0), 0.002); end
  def test_intermediate_output_o126; assert_in_delta(0.0, (worksheet.intermediate_output_o126||0), 0.002); end
  def test_intermediate_output_p126; assert_in_delta(0.0, (worksheet.intermediate_output_p126||0), 0.002); end
  def test_intermediate_output_c127; assert_equal("Therm.a.Liquid", worksheet.intermediate_output_c127); end
  def test_intermediate_output_d127; assert_equal("OCGT", worksheet.intermediate_output_d127); end
  def test_intermediate_output_g127; assert_in_delta(0.342, worksheet.intermediate_output_g127, 0.002); end
  def test_intermediate_output_h127; assert_in_epsilon(2.6689999999999996, worksheet.intermediate_output_h127, 0.002); end
  def test_intermediate_output_i127; assert_in_epsilon(3.819, worksheet.intermediate_output_i127, 0.002); end
  def test_intermediate_output_j127; assert_in_epsilon(3.819, worksheet.intermediate_output_j127, 0.002); end
  def test_intermediate_output_k127; assert_in_epsilon(12.142468162813442, worksheet.intermediate_output_k127, 0.002); end
  def test_intermediate_output_l127; assert_in_epsilon(7.2086894121795675, worksheet.intermediate_output_l127, 0.002); end
  def test_intermediate_output_m127; assert_in_epsilon(16.686088334119802, worksheet.intermediate_output_m127, 0.002); end
  def test_intermediate_output_n127; assert_in_epsilon(12.394358666697984, worksheet.intermediate_output_n127, 0.002); end
  def test_intermediate_output_o127; assert_in_epsilon(23.38244048955723, worksheet.intermediate_output_o127, 0.002); end
  def test_intermediate_output_p127; assert_in_epsilon(18.264380056084505, worksheet.intermediate_output_p127, 0.002); end
  def test_intermediate_output_c128; assert_equal("Therm.a.Solid", worksheet.intermediate_output_c128); end
  def test_intermediate_output_d128; assert_equal("Coal and or biomass", worksheet.intermediate_output_d128); end
  def test_intermediate_output_g128; assert_in_epsilon(34.23, worksheet.intermediate_output_g128, 0.002); end
  def test_intermediate_output_h128; assert_in_epsilon(35.68, worksheet.intermediate_output_h128, 0.002); end
  def test_intermediate_output_i128; assert_in_epsilon(40.94658470502848, worksheet.intermediate_output_i128, 0.002); end
  def test_intermediate_output_j128; assert_in_epsilon(48.254620791366506, worksheet.intermediate_output_j128, 0.002); end
  def test_intermediate_output_k128; assert_in_epsilon(57.09400803117997, worksheet.intermediate_output_k128, 0.002); end
  def test_intermediate_output_l128; assert_in_epsilon(68.09565835371902, worksheet.intermediate_output_l128, 0.002); end
  def test_intermediate_output_m128; assert_in_epsilon(82.13759741223765, worksheet.intermediate_output_m128, 0.002); end
  def test_intermediate_output_n128; assert_in_epsilon(97.62507363537769, worksheet.intermediate_output_n128, 0.002); end
  def test_intermediate_output_o128; assert_in_epsilon(114.08480821707388, worksheet.intermediate_output_o128, 0.002); end
  def test_intermediate_output_p128; assert_in_epsilon(133.88702914935837, worksheet.intermediate_output_p128, 0.002); end
  def test_intermediate_output_c129; assert_equal("Nuke", worksheet.intermediate_output_c129); end
  def test_intermediate_output_d129; assert_equal("Nuclear power", worksheet.intermediate_output_d129); end
  def test_intermediate_output_g129; assert_in_epsilon(1.8, worksheet.intermediate_output_g129, 0.002); end
  def test_intermediate_output_h129; assert_in_epsilon(1.8, worksheet.intermediate_output_h129, 0.002); end
  def test_intermediate_output_i129; assert_in_epsilon(1.8, worksheet.intermediate_output_i129, 0.002); end
  def test_intermediate_output_j129; assert_in_epsilon(1.8, worksheet.intermediate_output_j129, 0.002); end
  def test_intermediate_output_k129; assert_in_epsilon(1.8, worksheet.intermediate_output_k129, 0.002); end
  def test_intermediate_output_l129; assert_in_epsilon(1.8, worksheet.intermediate_output_l129, 0.002); end
  def test_intermediate_output_m129; assert_in_epsilon(1.8, worksheet.intermediate_output_m129, 0.002); end
  def test_intermediate_output_n129; assert_in_epsilon(1.8, worksheet.intermediate_output_n129, 0.002); end
  def test_intermediate_output_o129; assert_in_epsilon(1.8, worksheet.intermediate_output_o129, 0.002); end
  def test_intermediate_output_p129; assert_in_delta(0.0, (worksheet.intermediate_output_p129||0), 0.002); end
  def test_intermediate_output_c130; assert_equal("RE.a", worksheet.intermediate_output_c130); end
  def test_intermediate_output_d130; assert_equal("Onshore wind", worksheet.intermediate_output_d130); end
  def test_intermediate_output_g130; assert_in_delta(0.0008216, worksheet.intermediate_output_g130, 0.002); end
  def test_intermediate_output_h130; assert_in_delta(0.0021736, worksheet.intermediate_output_h130, 0.002); end
  def test_intermediate_output_i130; assert_in_delta(0.36664240000000003, worksheet.intermediate_output_i130, 0.002); end
  def test_intermediate_output_j130; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_j130, 0.002); end
  def test_intermediate_output_k130; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_k130, 0.002); end
  def test_intermediate_output_l130; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_l130, 0.002); end
  def test_intermediate_output_m130; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_m130, 0.002); end
  def test_intermediate_output_n130; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_n130, 0.002); end
  def test_intermediate_output_o130; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_o130, 0.002); end
  def test_intermediate_output_p130; assert_in_delta(0.7158224000000001, worksheet.intermediate_output_p130, 0.002); end
  def test_intermediate_output_c131; assert_equal("RE.b", worksheet.intermediate_output_c131); end
  def test_intermediate_output_d131; assert_equal("Hydroelectric power stations", worksheet.intermediate_output_d131); end
  def test_intermediate_output_g131; assert_in_delta(0.67, worksheet.intermediate_output_g131, 0.002); end
  def test_intermediate_output_h131; assert_in_delta(0.67, worksheet.intermediate_output_h131, 0.002); end
  def test_intermediate_output_i131; assert_in_delta(0.674, worksheet.intermediate_output_i131, 0.002); end
  def test_intermediate_output_j131; assert_in_delta(0.684, worksheet.intermediate_output_j131, 0.002); end
  def test_intermediate_output_k131; assert_in_delta(0.614, worksheet.intermediate_output_k131, 0.002); end
  def test_intermediate_output_l131; assert_in_delta(0.614, worksheet.intermediate_output_l131, 0.002); end
  def test_intermediate_output_m131; assert_in_delta(0.614, worksheet.intermediate_output_m131, 0.002); end
  def test_intermediate_output_n131; assert_in_delta(0.614, worksheet.intermediate_output_n131, 0.002); end
  def test_intermediate_output_o131; assert_in_delta(0.614, worksheet.intermediate_output_o131, 0.002); end
  def test_intermediate_output_p131; assert_in_delta(0.614, worksheet.intermediate_output_p131, 0.002); end
  def test_intermediate_output_c132; assert_equal("RE.c", worksheet.intermediate_output_c132); end
  def test_intermediate_output_d132; assert_equal("CSP", worksheet.intermediate_output_d132); end
  def test_intermediate_output_g132; assert_in_delta(0.0, (worksheet.intermediate_output_g132||0), 0.002); end
  def test_intermediate_output_h132; assert_in_delta(0.0, (worksheet.intermediate_output_h132||0), 0.002); end
  def test_intermediate_output_i132; assert_in_delta(0.0, (worksheet.intermediate_output_i132||0), 0.002); end
  def test_intermediate_output_j132; assert_in_delta(0.0, (worksheet.intermediate_output_j132||0), 0.002); end
  def test_intermediate_output_k132; assert_in_delta(0.0, (worksheet.intermediate_output_k132||0), 0.002); end
  def test_intermediate_output_l132; assert_in_delta(0.0, (worksheet.intermediate_output_l132||0), 0.002); end
  def test_intermediate_output_m132; assert_in_delta(0.0, (worksheet.intermediate_output_m132||0), 0.002); end
  def test_intermediate_output_n132; assert_in_delta(0.0, (worksheet.intermediate_output_n132||0), 0.002); end
  def test_intermediate_output_o132; assert_in_delta(0.0, (worksheet.intermediate_output_o132||0), 0.002); end
  def test_intermediate_output_p132; assert_in_delta(0.0, (worksheet.intermediate_output_p132||0), 0.002); end
  def test_intermediate_output_c133; assert_equal("Re.d", worksheet.intermediate_output_c133); end
  def test_intermediate_output_d133; assert_equal("Decentralised PV", worksheet.intermediate_output_d133); end
  def test_intermediate_output_g133; assert_in_delta(0.0, (worksheet.intermediate_output_g133||0), 0.002); end
  def test_intermediate_output_h133; assert_in_delta(0.0012428382060684202, worksheet.intermediate_output_h133, 0.002); end
  def test_intermediate_output_i133; assert_in_delta(0.0015444447240689394, worksheet.intermediate_output_i133, 0.002); end
  def test_intermediate_output_j133; assert_in_delta(0.0019073450647272869, worksheet.intermediate_output_j133, 0.002); end
  def test_intermediate_output_k133; assert_in_delta(0.0023320598686610884, worksheet.intermediate_output_k133, 0.002); end
  def test_intermediate_output_l133; assert_in_delta(0.002844303783374503, worksheet.intermediate_output_l133, 0.002); end
  def test_intermediate_output_m133; assert_in_delta(0.0034907440687998044, worksheet.intermediate_output_m133, 0.002); end
  def test_intermediate_output_n133; assert_in_delta(0.004214569213234614, worksheet.intermediate_output_n133, 0.002); end
  def test_intermediate_output_o133; assert_in_delta(0.0049878774349575725, worksheet.intermediate_output_o133, 0.002); end
  def test_intermediate_output_p133; assert_in_delta(0.005826381760137672, worksheet.intermediate_output_p133, 0.002); end
  def test_intermediate_output_c134; assert_equal("RE.e", worksheet.intermediate_output_c134); end
  def test_intermediate_output_d134; assert_equal("Centralised PV", worksheet.intermediate_output_d134); end
  def test_intermediate_output_g134; assert_in_delta(0.0, (worksheet.intermediate_output_g134||0), 0.002); end
  def test_intermediate_output_h134; assert_in_delta(0.0, (worksheet.intermediate_output_h134||0), 0.002); end
  def test_intermediate_output_i134; assert_in_epsilon(1.534, worksheet.intermediate_output_i134, 0.002); end
  def test_intermediate_output_j134; assert_in_epsilon(1.534, worksheet.intermediate_output_j134, 0.002); end
  def test_intermediate_output_k134; assert_in_epsilon(1.534, worksheet.intermediate_output_k134, 0.002); end
  def test_intermediate_output_l134; assert_in_epsilon(1.534, worksheet.intermediate_output_l134, 0.002); end
  def test_intermediate_output_m134; assert_in_epsilon(1.534, worksheet.intermediate_output_m134, 0.002); end
  def test_intermediate_output_n134; assert_in_epsilon(1.534, worksheet.intermediate_output_n134, 0.002); end
  def test_intermediate_output_o134; assert_in_epsilon(1.534, worksheet.intermediate_output_o134, 0.002); end
  def test_intermediate_output_p134; assert_in_epsilon(1.534, worksheet.intermediate_output_p134, 0.002); end
  def test_intermediate_output_c137; assert_equal("ElcDSB.i", worksheet.intermediate_output_c137); end
  def test_intermediate_output_d137; assert_equal("Electricity imports and exports", worksheet.intermediate_output_d137); end
  def test_intermediate_output_g137; assert_in_epsilon(1.5, worksheet.intermediate_output_g137, 0.002); end
  def test_intermediate_output_h137; assert_in_epsilon(1.5, worksheet.intermediate_output_h137, 0.002); end
  def test_intermediate_output_i137; assert_in_epsilon(1.5, worksheet.intermediate_output_i137, 0.002); end
  def test_intermediate_output_j137; assert_in_epsilon(1.5, worksheet.intermediate_output_j137, 0.002); end
  def test_intermediate_output_k137; assert_in_epsilon(1.5, worksheet.intermediate_output_k137, 0.002); end
  def test_intermediate_output_l137; assert_in_epsilon(1.5, worksheet.intermediate_output_l137, 0.002); end
  def test_intermediate_output_m137; assert_in_epsilon(1.5, worksheet.intermediate_output_m137, 0.002); end
  def test_intermediate_output_n137; assert_in_epsilon(1.5, worksheet.intermediate_output_n137, 0.002); end
  def test_intermediate_output_o137; assert_in_epsilon(1.5, worksheet.intermediate_output_o137, 0.002); end
  def test_intermediate_output_p137; assert_in_epsilon(1.5, worksheet.intermediate_output_p137, 0.002); end
  def test_intermediate_output_c138; assert_equal("ElcDSB.s", worksheet.intermediate_output_c138); end
  def test_intermediate_output_d138; assert_equal("Electricity storage scheme", worksheet.intermediate_output_d138); end
  def test_intermediate_output_g138; assert_in_epsilon(1.58, worksheet.intermediate_output_g138, 0.002); end
  def test_intermediate_output_h138; assert_in_epsilon(1.58, worksheet.intermediate_output_h138, 0.002); end
  def test_intermediate_output_i138; assert_in_epsilon(2.912, worksheet.intermediate_output_i138, 0.002); end
  def test_intermediate_output_j138; assert_in_epsilon(2.912, worksheet.intermediate_output_j138, 0.002); end
  def test_intermediate_output_k138; assert_in_epsilon(2.912, worksheet.intermediate_output_k138, 0.002); end
  def test_intermediate_output_l138; assert_in_epsilon(2.912, worksheet.intermediate_output_l138, 0.002); end
  def test_intermediate_output_m138; assert_in_epsilon(2.912, worksheet.intermediate_output_m138, 0.002); end
  def test_intermediate_output_n138; assert_in_epsilon(2.912, worksheet.intermediate_output_n138, 0.002); end
  def test_intermediate_output_o138; assert_in_epsilon(2.912, worksheet.intermediate_output_o138, 0.002); end
  def test_intermediate_output_p138; assert_in_epsilon(2.912, worksheet.intermediate_output_p138, 0.002); end
  def test_intermediate_output_g139; assert_in_delta(0.0, (worksheet.intermediate_output_g139||0), 0.002); end
  def test_intermediate_output_h139; assert_in_delta(0.0, (worksheet.intermediate_output_h139||0), 0.002); end
  def test_intermediate_output_i139; assert_in_delta(0.0, (worksheet.intermediate_output_i139||0), 0.002); end
  def test_intermediate_output_j139; assert_in_delta(0.0, (worksheet.intermediate_output_j139||0), 0.002); end
  def test_intermediate_output_k139; assert_in_delta(0.0, (worksheet.intermediate_output_k139||0), 0.002); end
  def test_intermediate_output_l139; assert_in_delta(0.0, (worksheet.intermediate_output_l139||0), 0.002); end
  def test_intermediate_output_m139; assert_in_delta(0.0, (worksheet.intermediate_output_m139||0), 0.002); end
  def test_intermediate_output_n139; assert_in_delta(0.0, (worksheet.intermediate_output_n139||0), 0.002); end
  def test_intermediate_output_o139; assert_in_delta(0.0, (worksheet.intermediate_output_o139||0), 0.002); end
  def test_intermediate_output_p139; assert_in_delta(0.0, (worksheet.intermediate_output_p139||0), 0.002); end
  def test_intermediate_output_d140; assert_equal("Total generation", worksheet.intermediate_output_d140); end
  def test_intermediate_output_g140; assert_in_epsilon(40.122821599999995, worksheet.intermediate_output_g140, 0.002); end
  def test_intermediate_output_h140; assert_in_epsilon(43.90241643820606, worksheet.intermediate_output_h140, 0.002); end
  def test_intermediate_output_i140; assert_in_epsilon(53.55377154975255, worksheet.intermediate_output_i140, 0.002); end
  def test_intermediate_output_j140; assert_in_epsilon(61.22135053643123, worksheet.intermediate_output_j140, 0.002); end
  def test_intermediate_output_k140; assert_in_epsilon(78.31463065386208, worksheet.intermediate_output_k140, 0.002); end
  def test_intermediate_output_l140; assert_in_epsilon(84.38301446968197, worksheet.intermediate_output_l140, 0.002); end
  def test_intermediate_output_m140; assert_in_epsilon(107.90299889042626, worksheet.intermediate_output_m140, 0.002); end
  def test_intermediate_output_n140; assert_in_epsilon(119.09946927128891, worksheet.intermediate_output_n140, 0.002); end
  def test_intermediate_output_o140; assert_in_epsilon(146.5480589840661, worksheet.intermediate_output_o140, 0.002); end
  def test_intermediate_output_p140; assert_in_epsilon(159.433057987203, worksheet.intermediate_output_p140, 0.002); end
  def test_intermediate_output_d141; assert_equal("reserve margin", worksheet.intermediate_output_d141); end
  def test_intermediate_output_g141; assert_in_delta(0.10188729699060395, worksheet.intermediate_output_g141, 0.002); end
  def test_intermediate_output_h141; assert_in_delta(0.012516447278362985, worksheet.intermediate_output_h141, 0.002); end
  def test_intermediate_output_i141; assert_in_delta(0.014925886320183324, worksheet.intermediate_output_i141, 0.002); end
  def test_intermediate_output_j141; assert_in_delta(-0.013035608491463901, worksheet.intermediate_output_j141, 0.002); end
  def test_intermediate_output_k141; assert_in_delta(0.07606911349872303, worksheet.intermediate_output_k141, 0.002); end
  def test_intermediate_output_l141; assert_in_delta(-0.023832259172446024, worksheet.intermediate_output_l141, 0.002); end
  def test_intermediate_output_m141; assert_in_delta(0.047017898256416224, worksheet.intermediate_output_m141, 0.002); end
  def test_intermediate_output_n141; assert_in_delta(-0.029269842428807924, worksheet.intermediate_output_n141, 0.002); end
  def test_intermediate_output_o141; assert_in_delta(0.031088338012555505, worksheet.intermediate_output_o141, 0.002); end
  def test_intermediate_output_p141; assert_in_delta(-0.02893966982889562, worksheet.intermediate_output_p141, 0.002); end
  def test_intermediate_output_d142; assert_equal("Capacity Deficit", worksheet.intermediate_output_d142); end
  def test_intermediate_output_j142; assert_in_epsilon(8.323468162813441, worksheet.intermediate_output_j142, 0.002); end
  def test_intermediate_output_k142; assert_in_epsilon(3.7386894121795677, worksheet.intermediate_output_k142, 0.002); end
  def test_intermediate_output_l142; assert_in_epsilon(13.216088334119803, worksheet.intermediate_output_l142, 0.002); end
  def test_intermediate_output_m142; assert_in_epsilon(8.924358666697984, worksheet.intermediate_output_m142, 0.002); end
  def test_intermediate_output_n142; assert_in_epsilon(20.172440489557232, worksheet.intermediate_output_n142, 0.002); end
  def test_intermediate_output_o142; assert_in_epsilon(15.184380056084507, worksheet.intermediate_output_o142, 0.002); end
  def test_intermediate_output_p142; assert_in_epsilon(27.555546844656135, worksheet.intermediate_output_p142, 0.002); end
  def test_intermediate_output_d143; assert_equal("New reserve margin", worksheet.intermediate_output_d143); end
  def test_intermediate_output_g143; assert_in_delta(0.10188729699060395, worksheet.intermediate_output_g143, 0.002); end
  def test_intermediate_output_h143; assert_in_delta(0.012516447278362985, worksheet.intermediate_output_h143, 0.002); end
  def test_intermediate_output_i143; assert_in_delta(0.014925886320183324, worksheet.intermediate_output_i143, 0.002); end
  def test_intermediate_output_j143; assert_in_delta(0.1246020842406248, worksheet.intermediate_output_j143, 0.002); end
  def test_intermediate_output_k143; assert_in_delta(0.12846788079474458, worksheet.intermediate_output_k143, 0.002); end
  def test_intermediate_output_l143; assert_in_delta(0.1318915246290353, worksheet.intermediate_output_l143, 0.002); end
  def test_intermediate_output_m143; assert_in_delta(0.1348655794956708, worksheet.intermediate_output_m143, 0.002); end
  def test_intermediate_output_n143; assert_in_delta(0.13729861062698978, worksheet.intermediate_output_n143, 0.002); end
  def test_intermediate_output_o143; assert_in_delta(0.13905701249821112, worksheet.intermediate_output_o143, 0.002); end
  def test_intermediate_output_p143; assert_in_delta(0.14052990239369678, worksheet.intermediate_output_p143, 0.002); end
  def test_intermediate_output_c146; assert_equal("Electricity use by sector", worksheet.intermediate_output_c146); end
  def test_intermediate_output_g146; assert_in_epsilon(2006.0, worksheet.intermediate_output_g146, 0.002); end
  def test_intermediate_output_h146; assert_in_epsilon(2010.0, worksheet.intermediate_output_h146, 0.002); end
  def test_intermediate_output_i146; assert_in_epsilon(2015.0, worksheet.intermediate_output_i146, 0.002); end
  def test_intermediate_output_j146; assert_in_epsilon(2020.0, worksheet.intermediate_output_j146, 0.002); end
  def test_intermediate_output_k146; assert_in_epsilon(2025.0, worksheet.intermediate_output_k146, 0.002); end
  def test_intermediate_output_l146; assert_in_epsilon(2030.0, worksheet.intermediate_output_l146, 0.002); end
  def test_intermediate_output_m146; assert_in_epsilon(2035.0, worksheet.intermediate_output_m146, 0.002); end
  def test_intermediate_output_n146; assert_in_epsilon(2040.0, worksheet.intermediate_output_n146, 0.002); end
  def test_intermediate_output_o146; assert_in_epsilon(2045.0, worksheet.intermediate_output_o146, 0.002); end
  def test_intermediate_output_p146; assert_in_epsilon(2050.0, worksheet.intermediate_output_p146, 0.002); end
  def test_intermediate_output_c147; assert_equal("V.01", worksheet.intermediate_output_c147); end
  def test_intermediate_output_c148; assert_equal("Res", worksheet.intermediate_output_c148); end
  def test_intermediate_output_d148; assert_equal("Residential", worksheet.intermediate_output_d148); end
  def test_intermediate_output_g148; assert_in_epsilon(151.361911292313, worksheet.intermediate_output_g148, 0.002); end
  def test_intermediate_output_h148; assert_in_epsilon(168.08779508377663, worksheet.intermediate_output_h148, 0.002); end
  def test_intermediate_output_i148; assert_in_epsilon(191.64077104024435, worksheet.intermediate_output_i148, 0.002); end
  def test_intermediate_output_j148; assert_in_epsilon(215.77902794099816, worksheet.intermediate_output_j148, 0.002); end
  def test_intermediate_output_k148; assert_in_epsilon(240.1296244266293, worksheet.intermediate_output_k148, 0.002); end
  def test_intermediate_output_l148; assert_in_epsilon(263.9346129398193, worksheet.intermediate_output_l148, 0.002); end
  def test_intermediate_output_m148; assert_in_epsilon(291.9179712235335, worksheet.intermediate_output_m148, 0.002); end
  def test_intermediate_output_n148; assert_in_epsilon(319.3355462281447, worksheet.intermediate_output_n148, 0.002); end
  def test_intermediate_output_o148; assert_in_epsilon(351.7416100988938, worksheet.intermediate_output_o148, 0.002); end
  def test_intermediate_output_p148; assert_in_epsilon(382.9655471912064, worksheet.intermediate_output_p148, 0.002); end
  def test_intermediate_output_c149; assert_equal("Com", worksheet.intermediate_output_c149); end
  def test_intermediate_output_d149; assert_equal("Commercial", worksheet.intermediate_output_d149); end
  def test_intermediate_output_g149; assert_in_epsilon(107.5932660569133, worksheet.intermediate_output_g149, 0.002); end
  def test_intermediate_output_h149; assert_in_epsilon(118.68599796240207, worksheet.intermediate_output_h149, 0.002); end
  def test_intermediate_output_i149; assert_in_epsilon(132.95399394710145, worksheet.intermediate_output_i149, 0.002); end
  def test_intermediate_output_j149; assert_in_epsilon(150.99350313146752, worksheet.intermediate_output_j149, 0.002); end
  def test_intermediate_output_k149; assert_in_epsilon(172.56540812498218, worksheet.intermediate_output_k149, 0.002); end
  def test_intermediate_output_l149; assert_in_epsilon(199.28386883431205, worksheet.intermediate_output_l149, 0.002); end
  def test_intermediate_output_m149; assert_in_epsilon(234.00469372308652, worksheet.intermediate_output_m149, 0.002); end
  def test_intermediate_output_n149; assert_in_epsilon(272.4284220678367, worksheet.intermediate_output_n149, 0.002); end
  def test_intermediate_output_o149; assert_in_epsilon(312.65795219252414, worksheet.intermediate_output_o149, 0.002); end
  def test_intermediate_output_p149; assert_in_epsilon(365.62365684502447, worksheet.intermediate_output_p149, 0.002); end
  def test_intermediate_output_s149; assert_in_epsilon(185.36545262928962, worksheet.intermediate_output_s149, 0.002); end
  def test_intermediate_output_c150; assert_equal("Ind", worksheet.intermediate_output_c150); end
  def test_intermediate_output_d150; assert_equal("Industry", worksheet.intermediate_output_d150); end
  def test_intermediate_output_g150; assert_in_epsilon(420.195789614721, worksheet.intermediate_output_g150, 0.002); end
  def test_intermediate_output_h150; assert_in_epsilon(490.24315031241656, worksheet.intermediate_output_h150, 0.002); end
  def test_intermediate_output_i150; assert_in_epsilon(596.3425470061676, worksheet.intermediate_output_i150, 0.002); end
  def test_intermediate_output_j150; assert_in_epsilon(733.829151378504, worksheet.intermediate_output_j150, 0.002); end
  def test_intermediate_output_k150; assert_in_epsilon(900.9026774158084, worksheet.intermediate_output_k150, 0.002); end
  def test_intermediate_output_l150; assert_in_epsilon(1114.8558375058033, worksheet.intermediate_output_l150, 0.002); end
  def test_intermediate_output_m150; assert_in_epsilon(1383.4784848808067, worksheet.intermediate_output_m150, 0.002); end
  def test_intermediate_output_n150; assert_in_epsilon(1685.4158194265008, worksheet.intermediate_output_n150, 0.002); end
  def test_intermediate_output_o150; assert_in_epsilon(2003.7065605365333, worksheet.intermediate_output_o150, 0.002); end
  def test_intermediate_output_p150; assert_in_epsilon(2348.810650048444, worksheet.intermediate_output_p150, 0.002); end
  def test_intermediate_output_s150; assert_in_epsilon(48.36545262928962, worksheet.intermediate_output_s150, 0.002); end
  def test_intermediate_output_c151; assert_equal("Tra", worksheet.intermediate_output_c151); end
  def test_intermediate_output_d151; assert_equal("Transport", worksheet.intermediate_output_d151); end
  def test_intermediate_output_g151; assert_in_epsilon(8.202697987420844, worksheet.intermediate_output_g151, 0.002); end
  def test_intermediate_output_h151; assert_in_epsilon(8.090339552907329, worksheet.intermediate_output_h151, 0.002); end
  def test_intermediate_output_i151; assert_in_epsilon(11.557163712669599, worksheet.intermediate_output_i151, 0.002); end
  def test_intermediate_output_j151; assert_in_epsilon(15.84822280060148, worksheet.intermediate_output_j151, 0.002); end
  def test_intermediate_output_k151; assert_in_epsilon(21.20217883082512, worksheet.intermediate_output_k151, 0.002); end
  def test_intermediate_output_l151; assert_in_epsilon(27.689088452804896, worksheet.intermediate_output_l151, 0.002); end
  def test_intermediate_output_m151; assert_in_epsilon(34.73385535780939, worksheet.intermediate_output_m151, 0.002); end
  def test_intermediate_output_n151; assert_in_epsilon(51.23818041522037, worksheet.intermediate_output_n151, 0.002); end
  def test_intermediate_output_o151; assert_in_epsilon(51.27876130986347, worksheet.intermediate_output_o151, 0.002); end
  def test_intermediate_output_p151; assert_in_epsilon(56.53873992491982, worksheet.intermediate_output_p151, 0.002); end
  def test_intermediate_output_d153; assert_equal("Total", worksheet.intermediate_output_d153); end
  def test_intermediate_output_g153; assert_in_epsilon(687.353664951368, worksheet.intermediate_output_g153, 0.002); end
  def test_intermediate_output_h153; assert_in_epsilon(785.1072829115026, worksheet.intermediate_output_h153, 0.002); end
  def test_intermediate_output_i153; assert_in_epsilon(932.494475706183, worksheet.intermediate_output_i153, 0.002); end
  def test_intermediate_output_j153; assert_in_epsilon(1116.4499052515712, worksheet.intermediate_output_j153, 0.002); end
  def test_intermediate_output_k153; assert_in_epsilon(1334.7998887982449, worksheet.intermediate_output_k153, 0.002); end
  def test_intermediate_output_l153; assert_in_epsilon(1605.7634077327396, worksheet.intermediate_output_l153, 0.002); end
  def test_intermediate_output_m153; assert_in_epsilon(1944.1350051852362, worksheet.intermediate_output_m153, 0.002); end
  def test_intermediate_output_n153; assert_in_epsilon(2328.4179681377027, worksheet.intermediate_output_n153, 0.002); end
  def test_intermediate_output_o153; assert_in_epsilon(2719.384884137815, worksheet.intermediate_output_o153, 0.002); end
  def test_intermediate_output_p153; assert_in_epsilon(3153.938594009595, worksheet.intermediate_output_p153, 0.002); end
  def test_intermediate_output_g154; assert_in_epsilon(190931.57359760223, worksheet.intermediate_output_g154, 0.002); end
  def test_intermediate_output_h154; assert_in_epsilon(218085.35636430627, worksheet.intermediate_output_h154, 0.002); end
  def test_intermediate_output_i154; assert_in_epsilon(259026.2432517175, worksheet.intermediate_output_i154, 0.002); end
  def test_intermediate_output_j154; assert_in_epsilon(310124.973680992, worksheet.intermediate_output_j154, 0.002); end
  def test_intermediate_output_k154; assert_in_epsilon(370777.74688840134, worksheet.intermediate_output_k154, 0.002); end
  def test_intermediate_output_l154; assert_in_epsilon(446045.3910368721, worksheet.intermediate_output_l154, 0.002); end
  def test_intermediate_output_m154; assert_in_epsilon(540037.5014403434, worksheet.intermediate_output_m154, 0.002); end
  def test_intermediate_output_n154; assert_in_epsilon(646782.7689271397, worksheet.intermediate_output_n154, 0.002); end
  def test_intermediate_output_o154; assert_in_epsilon(755384.690038282, worksheet.intermediate_output_o154, 0.002); end
  def test_intermediate_output_p154; assert_in_epsilon(876094.0538915541, worksheet.intermediate_output_p154, 0.002); end
  def test_intermediate_output_b157; assert_equal("Emissions", worksheet.intermediate_output_b157); end
  def test_intermediate_output_c159; assert_equal("Emissions as % of base year, adjusted so that 2007 matches actuals", worksheet.intermediate_output_c159); end
  def test_intermediate_output_d160; assert_equal("IPCC Sector", worksheet.intermediate_output_d160); end
  def test_intermediate_output_g160; assert_in_epsilon(2006.0, worksheet.intermediate_output_g160, 0.002); end
  def test_intermediate_output_h160; assert_in_epsilon(2010.0, worksheet.intermediate_output_h160, 0.002); end
  def test_intermediate_output_i160; assert_in_epsilon(2015.0, worksheet.intermediate_output_i160, 0.002); end
  def test_intermediate_output_j160; assert_in_epsilon(2020.0, worksheet.intermediate_output_j160, 0.002); end
  def test_intermediate_output_k160; assert_in_epsilon(2025.0, worksheet.intermediate_output_k160, 0.002); end
  def test_intermediate_output_l160; assert_in_epsilon(2030.0, worksheet.intermediate_output_l160, 0.002); end
  def test_intermediate_output_m160; assert_in_epsilon(2035.0, worksheet.intermediate_output_m160, 0.002); end
  def test_intermediate_output_n160; assert_in_epsilon(2040.0, worksheet.intermediate_output_n160, 0.002); end
  def test_intermediate_output_o160; assert_in_epsilon(2045.0, worksheet.intermediate_output_o160, 0.002); end
  def test_intermediate_output_p160; assert_in_epsilon(2050.0, worksheet.intermediate_output_p160, 0.002); end
  def test_intermediate_output_c161; assert_equal("1A", worksheet.intermediate_output_c161); end
  def test_intermediate_output_d161; assert_equal("Fuel Combustion", worksheet.intermediate_output_d161); end
  def test_intermediate_output_c162; assert_equal("1B", worksheet.intermediate_output_c162); end
  def test_intermediate_output_d162; assert_equal("Fugitive Emissions from Fuels", worksheet.intermediate_output_d162); end
  def test_intermediate_output_c163; assert_in_delta(1.0, worksheet.intermediate_output_c163, 0.002); end
  def test_intermediate_output_d163; assert_equal("Fuel Combustion", worksheet.intermediate_output_d163); end
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
  def test_intermediate_output_c164; assert_in_epsilon(2.0, worksheet.intermediate_output_c164, 0.002); end
  def test_intermediate_output_d164; assert_equal("Industrial Processes", worksheet.intermediate_output_d164); end
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
  def test_intermediate_output_c165; assert_in_epsilon(3.0, worksheet.intermediate_output_c165, 0.002); end
  def test_intermediate_output_d165; assert_equal("Solvent and Other Product Use", worksheet.intermediate_output_d165); end
  def test_intermediate_output_g165; assert_in_delta(0.0, (worksheet.intermediate_output_g165||0), 0.002); end
  def test_intermediate_output_h165; assert_in_delta(0.0, (worksheet.intermediate_output_h165||0), 0.002); end
  def test_intermediate_output_i165; assert_in_delta(0.0, (worksheet.intermediate_output_i165||0), 0.002); end
  def test_intermediate_output_j165; assert_in_delta(0.0, (worksheet.intermediate_output_j165||0), 0.002); end
  def test_intermediate_output_k165; assert_in_delta(0.0, (worksheet.intermediate_output_k165||0), 0.002); end
  def test_intermediate_output_l165; assert_in_delta(0.0, (worksheet.intermediate_output_l165||0), 0.002); end
  def test_intermediate_output_m165; assert_in_delta(0.0, (worksheet.intermediate_output_m165||0), 0.002); end
  def test_intermediate_output_n165; assert_in_delta(0.0, (worksheet.intermediate_output_n165||0), 0.002); end
  def test_intermediate_output_o165; assert_in_delta(0.0, (worksheet.intermediate_output_o165||0), 0.002); end
  def test_intermediate_output_p165; assert_in_delta(0.0, (worksheet.intermediate_output_p165||0), 0.002); end
  def test_intermediate_output_c166; assert_in_epsilon(4.0, worksheet.intermediate_output_c166, 0.002); end
  def test_intermediate_output_d166; assert_equal("Agriculture", worksheet.intermediate_output_d166); end
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
  def test_intermediate_output_c167; assert_in_epsilon(5.0, worksheet.intermediate_output_c167, 0.002); end
  def test_intermediate_output_d167; assert_equal("Land Use, Land-Use Change and Forestry", worksheet.intermediate_output_d167); end
  def test_intermediate_output_g167; assert_in_delta(0.0, (worksheet.intermediate_output_g167||0), 0.002); end
  def test_intermediate_output_h167; assert_in_delta(0.0, (worksheet.intermediate_output_h167||0), 0.002); end
  def test_intermediate_output_i167; assert_in_delta(0.0, (worksheet.intermediate_output_i167||0), 0.002); end
  def test_intermediate_output_j167; assert_in_delta(0.0, (worksheet.intermediate_output_j167||0), 0.002); end
  def test_intermediate_output_k167; assert_in_delta(0.0, (worksheet.intermediate_output_k167||0), 0.002); end
  def test_intermediate_output_l167; assert_in_delta(0.0, (worksheet.intermediate_output_l167||0), 0.002); end
  def test_intermediate_output_m167; assert_in_delta(0.0, (worksheet.intermediate_output_m167||0), 0.002); end
  def test_intermediate_output_n167; assert_in_delta(0.0, (worksheet.intermediate_output_n167||0), 0.002); end
  def test_intermediate_output_o167; assert_in_delta(0.0, (worksheet.intermediate_output_o167||0), 0.002); end
  def test_intermediate_output_p167; assert_in_delta(0.0, (worksheet.intermediate_output_p167||0), 0.002); end
  def test_intermediate_output_c168; assert_in_epsilon(6.0, worksheet.intermediate_output_c168, 0.002); end
  def test_intermediate_output_d168; assert_equal("Waste", worksheet.intermediate_output_d168); end
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
  def test_intermediate_output_c169; assert_in_epsilon(7.0, worksheet.intermediate_output_c169, 0.002); end
  def test_intermediate_output_d169; assert_equal("Other", worksheet.intermediate_output_d169); end
  def test_intermediate_output_g169; assert_in_delta(0.0, (worksheet.intermediate_output_g169||0), 0.002); end
  def test_intermediate_output_h169; assert_in_delta(0.0, (worksheet.intermediate_output_h169||0), 0.002); end
  def test_intermediate_output_i169; assert_in_delta(0.0, (worksheet.intermediate_output_i169||0), 0.002); end
  def test_intermediate_output_j169; assert_in_delta(0.0, (worksheet.intermediate_output_j169||0), 0.002); end
  def test_intermediate_output_k169; assert_in_delta(0.0, (worksheet.intermediate_output_k169||0), 0.002); end
  def test_intermediate_output_l169; assert_in_delta(0.0, (worksheet.intermediate_output_l169||0), 0.002); end
  def test_intermediate_output_m169; assert_in_delta(0.0, (worksheet.intermediate_output_m169||0), 0.002); end
  def test_intermediate_output_n169; assert_in_delta(0.0, (worksheet.intermediate_output_n169||0), 0.002); end
  def test_intermediate_output_o169; assert_in_delta(0.0, (worksheet.intermediate_output_o169||0), 0.002); end
  def test_intermediate_output_p169; assert_in_delta(0.0, (worksheet.intermediate_output_p169||0), 0.002); end
  def test_intermediate_output_c170; assert_equal("X1", worksheet.intermediate_output_c170); end
  def test_intermediate_output_d170; assert_equal("International Aviation and Shipping", worksheet.intermediate_output_d170); end
  def test_intermediate_output_g170; assert_in_delta(0.0, (worksheet.intermediate_output_g170||0), 0.002); end
  def test_intermediate_output_h170; assert_in_delta(0.0, (worksheet.intermediate_output_h170||0), 0.002); end
  def test_intermediate_output_i170; assert_in_delta(0.0, (worksheet.intermediate_output_i170||0), 0.002); end
  def test_intermediate_output_j170; assert_in_delta(0.0, (worksheet.intermediate_output_j170||0), 0.002); end
  def test_intermediate_output_k170; assert_in_delta(0.0, (worksheet.intermediate_output_k170||0), 0.002); end
  def test_intermediate_output_l170; assert_in_delta(0.0, (worksheet.intermediate_output_l170||0), 0.002); end
  def test_intermediate_output_m170; assert_in_delta(0.0, (worksheet.intermediate_output_m170||0), 0.002); end
  def test_intermediate_output_n170; assert_in_delta(0.0, (worksheet.intermediate_output_n170||0), 0.002); end
  def test_intermediate_output_o170; assert_in_delta(0.0, (worksheet.intermediate_output_o170||0), 0.002); end
  def test_intermediate_output_p170; assert_in_delta(0.0, (worksheet.intermediate_output_p170||0), 0.002); end
  def test_intermediate_output_c171; assert_equal("X2", worksheet.intermediate_output_c171); end
  def test_intermediate_output_d171; assert_equal("Bioenergy credit", worksheet.intermediate_output_d171); end
  def test_intermediate_output_g171; assert_in_delta(0.0, (worksheet.intermediate_output_g171||0), 0.002); end
  def test_intermediate_output_h171; assert_in_delta(0.0, (worksheet.intermediate_output_h171||0), 0.002); end
  def test_intermediate_output_i171; assert_in_delta(0.0, (worksheet.intermediate_output_i171||0), 0.002); end
  def test_intermediate_output_j171; assert_in_delta(0.0, (worksheet.intermediate_output_j171||0), 0.002); end
  def test_intermediate_output_k171; assert_in_delta(0.0, (worksheet.intermediate_output_k171||0), 0.002); end
  def test_intermediate_output_l171; assert_in_delta(0.0, (worksheet.intermediate_output_l171||0), 0.002); end
  def test_intermediate_output_m171; assert_in_delta(0.0, (worksheet.intermediate_output_m171||0), 0.002); end
  def test_intermediate_output_n171; assert_in_delta(0.0, (worksheet.intermediate_output_n171||0), 0.002); end
  def test_intermediate_output_o171; assert_in_delta(0.0, (worksheet.intermediate_output_o171||0), 0.002); end
  def test_intermediate_output_p171; assert_in_delta(0.0, (worksheet.intermediate_output_p171||0), 0.002); end
  def test_intermediate_output_c172; assert_equal("X3", worksheet.intermediate_output_c172); end
  def test_intermediate_output_d172; assert_equal("Carbon capture", worksheet.intermediate_output_d172); end
  def test_intermediate_output_g172; assert_in_delta(0.0, (worksheet.intermediate_output_g172||0), 0.002); end
  def test_intermediate_output_h172; assert_in_delta(0.0, (worksheet.intermediate_output_h172||0), 0.002); end
  def test_intermediate_output_i172; assert_in_delta(0.0, (worksheet.intermediate_output_i172||0), 0.002); end
  def test_intermediate_output_j172; assert_in_delta(0.0, (worksheet.intermediate_output_j172||0), 0.002); end
  def test_intermediate_output_k172; assert_in_delta(0.0, (worksheet.intermediate_output_k172||0), 0.002); end
  def test_intermediate_output_l172; assert_in_delta(0.0, (worksheet.intermediate_output_l172||0), 0.002); end
  def test_intermediate_output_m172; assert_in_delta(0.0, (worksheet.intermediate_output_m172||0), 0.002); end
  def test_intermediate_output_n172; assert_in_delta(0.0, (worksheet.intermediate_output_n172||0), 0.002); end
  def test_intermediate_output_o172; assert_in_delta(0.0, (worksheet.intermediate_output_o172||0), 0.002); end
  def test_intermediate_output_p172; assert_in_delta(0.0, (worksheet.intermediate_output_p172||0), 0.002); end
  def test_intermediate_output_d173; assert_equal("Total", worksheet.intermediate_output_d173); end
  def test_intermediate_output_g173; assert_in_delta(0.0, (worksheet.intermediate_output_g173||0), 0.002); end
  def test_intermediate_output_h173; assert_in_delta(0.0, (worksheet.intermediate_output_h173||0), 0.002); end
  def test_intermediate_output_i173; assert_in_delta(0.0, (worksheet.intermediate_output_i173||0), 0.002); end
  def test_intermediate_output_j173; assert_in_delta(0.0, (worksheet.intermediate_output_j173||0), 0.002); end
  def test_intermediate_output_k173; assert_in_delta(0.0, (worksheet.intermediate_output_k173||0), 0.002); end
  def test_intermediate_output_l173; assert_in_delta(0.0, (worksheet.intermediate_output_l173||0), 0.002); end
  def test_intermediate_output_m173; assert_in_delta(0.0, (worksheet.intermediate_output_m173||0), 0.002); end
  def test_intermediate_output_n173; assert_in_delta(0.0, (worksheet.intermediate_output_n173||0), 0.002); end
  def test_intermediate_output_o173; assert_in_delta(0.0, (worksheet.intermediate_output_o173||0), 0.002); end
  def test_intermediate_output_p173; assert_in_delta(0.0, (worksheet.intermediate_output_p173||0), 0.002); end
  def test_intermediate_output_c175; assert_equal("Excluding international bunkers", worksheet.intermediate_output_c175); end
  def test_intermediate_output_f175; assert_in_delta(0.0, (worksheet.intermediate_output_f175||0), 0.002); end
  def test_intermediate_output_g175; assert_in_delta(0.0, (worksheet.intermediate_output_g175||0), 0.002); end
  def test_intermediate_output_h175; assert_in_delta(0.0, (worksheet.intermediate_output_h175||0), 0.002); end
  def test_intermediate_output_i175; assert_in_delta(0.0, (worksheet.intermediate_output_i175||0), 0.002); end
  def test_intermediate_output_j175; assert_in_delta(0.0, (worksheet.intermediate_output_j175||0), 0.002); end
  def test_intermediate_output_k175; assert_in_delta(0.0, (worksheet.intermediate_output_k175||0), 0.002); end
  def test_intermediate_output_l175; assert_in_delta(0.0, (worksheet.intermediate_output_l175||0), 0.002); end
  def test_intermediate_output_m175; assert_in_delta(0.0, (worksheet.intermediate_output_m175||0), 0.002); end
  def test_intermediate_output_n175; assert_in_delta(0.0, (worksheet.intermediate_output_n175||0), 0.002); end
  def test_intermediate_output_o175; assert_in_delta(0.0, (worksheet.intermediate_output_o175||0), 0.002); end
  def test_intermediate_output_p175; assert_in_delta(0.0, (worksheet.intermediate_output_p175||0), 0.002); end
  def test_intermediate_output_e177; assert_equal("Adjustment factor:", worksheet.intermediate_output_e177); end
  def test_intermediate_output_g177; assert_in_delta(0.0, (worksheet.intermediate_output_g177||0), 0.002); end
  def test_intermediate_output_c179; assert_equal("Emissions by sector", worksheet.intermediate_output_c179); end
  def test_intermediate_output_g179; assert_in_epsilon(2006.0, worksheet.intermediate_output_g179, 0.002); end
  def test_intermediate_output_h179; assert_in_epsilon(2010.0, worksheet.intermediate_output_h179, 0.002); end
  def test_intermediate_output_i179; assert_in_epsilon(2015.0, worksheet.intermediate_output_i179, 0.002); end
  def test_intermediate_output_j179; assert_in_epsilon(2020.0, worksheet.intermediate_output_j179, 0.002); end
  def test_intermediate_output_k179; assert_in_epsilon(2025.0, worksheet.intermediate_output_k179, 0.002); end
  def test_intermediate_output_l179; assert_in_epsilon(2030.0, worksheet.intermediate_output_l179, 0.002); end
  def test_intermediate_output_m179; assert_in_epsilon(2035.0, worksheet.intermediate_output_m179, 0.002); end
  def test_intermediate_output_n179; assert_in_epsilon(2040.0, worksheet.intermediate_output_n179, 0.002); end
  def test_intermediate_output_o179; assert_in_epsilon(2045.0, worksheet.intermediate_output_o179, 0.002); end
  def test_intermediate_output_p179; assert_in_epsilon(2050.0, worksheet.intermediate_output_p179, 0.002); end
  def test_intermediate_output_c180; assert_equal("Therm", worksheet.intermediate_output_c180); end
  def test_intermediate_output_g180; assert_in_epsilon(236.06370693026741, worksheet.intermediate_output_g180, 0.002); end
  def test_intermediate_output_h180; assert_in_epsilon(280.3445420454828, worksheet.intermediate_output_h180, 0.002); end
  def test_intermediate_output_i180; assert_in_epsilon(323.7885070905598, worksheet.intermediate_output_i180, 0.002); end
  def test_intermediate_output_j180; assert_in_epsilon(377.250064603735, worksheet.intermediate_output_j180, 0.002); end
  def test_intermediate_output_k180; assert_in_epsilon(442.0681392379782, worksheet.intermediate_output_k180, 0.002); end
  def test_intermediate_output_l180; assert_in_epsilon(522.922793146215, worksheet.intermediate_output_l180, 0.002); end
  def test_intermediate_output_m180; assert_in_epsilon(620.5460391100246, worksheet.intermediate_output_m180, 0.002); end
  def test_intermediate_output_n180; assert_in_epsilon(731.9140551350114, worksheet.intermediate_output_n180, 0.002); end
  def test_intermediate_output_o180; assert_in_epsilon(854.7675113292124, worksheet.intermediate_output_o180, 0.002); end
  def test_intermediate_output_p180; assert_in_epsilon(1001.7427417689859, worksheet.intermediate_output_p180, 0.002); end
  def test_intermediate_output_c181; assert_equal("Nuke", worksheet.intermediate_output_c181); end
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
  def test_intermediate_output_c182; assert_equal("RE", worksheet.intermediate_output_c182); end
  def test_intermediate_output_g182; assert_in_delta(0.0, (worksheet.intermediate_output_g182||0), 0.002); end
  def test_intermediate_output_h182; assert_in_delta(0.0, (worksheet.intermediate_output_h182||0), 0.002); end
  def test_intermediate_output_i182; assert_in_delta(0.0, (worksheet.intermediate_output_i182||0), 0.002); end
  def test_intermediate_output_j182; assert_in_delta(0.0, (worksheet.intermediate_output_j182||0), 0.002); end
  def test_intermediate_output_k182; assert_in_delta(0.0, (worksheet.intermediate_output_k182||0), 0.002); end
  def test_intermediate_output_l182; assert_in_delta(0.0, (worksheet.intermediate_output_l182||0), 0.002); end
  def test_intermediate_output_m182; assert_in_delta(0.0, (worksheet.intermediate_output_m182||0), 0.002); end
  def test_intermediate_output_n182; assert_in_delta(0.0, (worksheet.intermediate_output_n182||0), 0.002); end
  def test_intermediate_output_o182; assert_in_delta(0.0, (worksheet.intermediate_output_o182||0), 0.002); end
  def test_intermediate_output_p182; assert_in_delta(0.0, (worksheet.intermediate_output_p182||0), 0.002); end
  def test_intermediate_output_c183; assert_equal("IV", worksheet.intermediate_output_c183); end
  def test_intermediate_output_g183; assert_in_delta(0.0, (worksheet.intermediate_output_g183||0), 0.002); end
  def test_intermediate_output_h183; assert_in_delta(0.0, (worksheet.intermediate_output_h183||0), 0.002); end
  def test_intermediate_output_i183; assert_in_delta(0.0, (worksheet.intermediate_output_i183||0), 0.002); end
  def test_intermediate_output_j183; assert_in_delta(0.0, (worksheet.intermediate_output_j183||0), 0.002); end
  def test_intermediate_output_k183; assert_in_delta(0.0, (worksheet.intermediate_output_k183||0), 0.002); end
  def test_intermediate_output_l183; assert_in_delta(0.0, (worksheet.intermediate_output_l183||0), 0.002); end
  def test_intermediate_output_m183; assert_in_delta(0.0, (worksheet.intermediate_output_m183||0), 0.002); end
  def test_intermediate_output_n183; assert_in_delta(0.0, (worksheet.intermediate_output_n183||0), 0.002); end
  def test_intermediate_output_o183; assert_in_delta(0.0, (worksheet.intermediate_output_o183||0), 0.002); end
  def test_intermediate_output_p183; assert_in_delta(0.0, (worksheet.intermediate_output_p183||0), 0.002); end
  def test_intermediate_output_c184; assert_equal("V", worksheet.intermediate_output_c184); end
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
  def test_intermediate_output_c185; assert_equal("AGL", worksheet.intermediate_output_c185); end
  def test_intermediate_output_g185; assert_in_epsilon(44.06796485396634, worksheet.intermediate_output_g185, 0.002); end
  def test_intermediate_output_h185; assert_in_epsilon(46.13782699068853, worksheet.intermediate_output_h185, 0.002); end
  def test_intermediate_output_i185; assert_in_epsilon(47.777902899751695, worksheet.intermediate_output_i185, 0.002); end
  def test_intermediate_output_j185; assert_in_epsilon(51.98001518252695, worksheet.intermediate_output_j185, 0.002); end
  def test_intermediate_output_k185; assert_in_epsilon(48.41003013913891, worksheet.intermediate_output_k185, 0.002); end
  def test_intermediate_output_l185; assert_in_epsilon(45.352634383175385, worksheet.intermediate_output_l185, 0.002); end
  def test_intermediate_output_m185; assert_in_epsilon(42.740236308901004, worksheet.intermediate_output_m185, 0.002); end
  def test_intermediate_output_n185; assert_in_epsilon(40.51870931471309, worksheet.intermediate_output_n185, 0.002); end
  def test_intermediate_output_o185; assert_in_epsilon(38.64283228339497, worksheet.intermediate_output_o185, 0.002); end
  def test_intermediate_output_p185; assert_in_epsilon(37.074384285983115, worksheet.intermediate_output_p185, 0.002); end
  def test_intermediate_output_c186; assert_equal("VII", worksheet.intermediate_output_c186); end
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
  def test_intermediate_output_c187; assert_equal("H2prod", worksheet.intermediate_output_c187); end
  def test_intermediate_output_g187; assert_in_delta(0.0, (worksheet.intermediate_output_g187||0), 0.002); end
  def test_intermediate_output_h187; assert_in_delta(0.0, (worksheet.intermediate_output_h187||0), 0.002); end
  def test_intermediate_output_i187; assert_in_delta(0.0, (worksheet.intermediate_output_i187||0), 0.002); end
  def test_intermediate_output_j187; assert_in_delta(0.0, (worksheet.intermediate_output_j187||0), 0.002); end
  def test_intermediate_output_k187; assert_in_delta(0.0, (worksheet.intermediate_output_k187||0), 0.002); end
  def test_intermediate_output_l187; assert_in_delta(0.0, (worksheet.intermediate_output_l187||0), 0.002); end
  def test_intermediate_output_m187; assert_in_delta(0.0, (worksheet.intermediate_output_m187||0), 0.002); end
  def test_intermediate_output_n187; assert_in_delta(0.0, (worksheet.intermediate_output_n187||0), 0.002); end
  def test_intermediate_output_o187; assert_in_delta(0.0, (worksheet.intermediate_output_o187||0), 0.002); end
  def test_intermediate_output_p187; assert_in_delta(0.0, (worksheet.intermediate_output_p187||0), 0.002); end
  def test_intermediate_output_c188; assert_equal("RES", worksheet.intermediate_output_c188); end
  def test_intermediate_output_g188; assert_in_epsilon(1.182210102019368, worksheet.intermediate_output_g188, 0.002); end
  def test_intermediate_output_h188; assert_in_epsilon(1.142007931595158, worksheet.intermediate_output_h188, 0.002); end
  def test_intermediate_output_i188; assert_in_epsilon(1.1383835516208194, worksheet.intermediate_output_i188, 0.002); end
  def test_intermediate_output_j188; assert_in_epsilon(1.1185220305619519, worksheet.intermediate_output_j188, 0.002); end
  def test_intermediate_output_k188; assert_in_epsilon(1.081954521635173, worksheet.intermediate_output_k188, 0.002); end
  def test_intermediate_output_l188; assert_in_epsilon(1.0273048036856502, worksheet.intermediate_output_l188, 0.002); end
  def test_intermediate_output_m188; assert_in_delta(0.8962095207147571, worksheet.intermediate_output_m188, 0.002); end
  def test_intermediate_output_n188; assert_in_delta(0.7727063260992572, worksheet.intermediate_output_n188, 0.002); end
  def test_intermediate_output_o188; assert_in_delta(0.6422367505583209, worksheet.intermediate_output_o188, 0.002); end
  def test_intermediate_output_p188; assert_in_delta(0.5285438629612572, worksheet.intermediate_output_p188, 0.002); end
  def test_intermediate_output_c189; assert_equal("COM", worksheet.intermediate_output_c189); end
  def test_intermediate_output_g189; assert_in_epsilon(8.8862553782154, worksheet.intermediate_output_g189, 0.002); end
  def test_intermediate_output_h189; assert_in_epsilon(9.801472109929446, worksheet.intermediate_output_h189, 0.002); end
  def test_intermediate_output_i189; assert_in_epsilon(10.637337914797214, worksheet.intermediate_output_i189, 0.002); end
  def test_intermediate_output_j189; assert_in_epsilon(11.262555785921068, worksheet.intermediate_output_j189, 0.002); end
  def test_intermediate_output_k189; assert_in_epsilon(11.59414200775393, worksheet.intermediate_output_k189, 0.002); end
  def test_intermediate_output_l189; assert_in_epsilon(11.64731894102327, worksheet.intermediate_output_l189, 0.002); end
  def test_intermediate_output_m189; assert_in_epsilon(11.42580693115786, worksheet.intermediate_output_m189, 0.002); end
  def test_intermediate_output_n189; assert_in_epsilon(10.674071977796572, worksheet.intermediate_output_n189, 0.002); end
  def test_intermediate_output_o189; assert_in_epsilon(9.334651512374935, worksheet.intermediate_output_o189, 0.002); end
  def test_intermediate_output_p189; assert_in_epsilon(5.365011109525606, worksheet.intermediate_output_p189, 0.002); end
  def test_intermediate_output_c190; assert_equal("IND", worksheet.intermediate_output_c190); end
  def test_intermediate_output_g190; assert_in_epsilon(63.078460679035885, worksheet.intermediate_output_g190, 0.002); end
  def test_intermediate_output_h190; assert_in_epsilon(73.69126572548763, worksheet.intermediate_output_h190, 0.002); end
  def test_intermediate_output_i190; assert_in_epsilon(90.9348477018036, worksheet.intermediate_output_i190, 0.002); end
  def test_intermediate_output_j190; assert_in_epsilon(108.8002293138643, worksheet.intermediate_output_j190, 0.002); end
  def test_intermediate_output_k190; assert_in_epsilon(135.8127149542214, worksheet.intermediate_output_k190, 0.002); end
  def test_intermediate_output_l190; assert_in_epsilon(163.7547905807464, worksheet.intermediate_output_l190, 0.002); end
  def test_intermediate_output_m190; assert_in_epsilon(205.61430873334373, worksheet.intermediate_output_m190, 0.002); end
  def test_intermediate_output_n190; assert_in_epsilon(248.12071838083958, worksheet.intermediate_output_n190, 0.002); end
  def test_intermediate_output_o190; assert_in_epsilon(296.76954193901884, worksheet.intermediate_output_o190, 0.002); end
  def test_intermediate_output_p190; assert_in_epsilon(346.12572457865616, worksheet.intermediate_output_p190, 0.002); end
  def test_intermediate_output_c191; assert_equal("TRA", worksheet.intermediate_output_c191); end
  def test_intermediate_output_g191; assert_in_epsilon(46.69300469563728, worksheet.intermediate_output_g191, 0.002); end
  def test_intermediate_output_h191; assert_in_epsilon(52.78853110997586, worksheet.intermediate_output_h191, 0.002); end
  def test_intermediate_output_i191; assert_in_epsilon(58.35823614847765, worksheet.intermediate_output_i191, 0.002); end
  def test_intermediate_output_j191; assert_in_epsilon(63.50313825943612, worksheet.intermediate_output_j191, 0.002); end
  def test_intermediate_output_k191; assert_in_epsilon(68.05781801872676, worksheet.intermediate_output_k191, 0.002); end
  def test_intermediate_output_l191; assert_in_epsilon(72.04885622342796, worksheet.intermediate_output_l191, 0.002); end
  def test_intermediate_output_m191; assert_in_epsilon(75.75479715691581, worksheet.intermediate_output_m191, 0.002); end
  def test_intermediate_output_n191; assert_in_epsilon(88.3861865627086, worksheet.intermediate_output_n191, 0.002); end
  def test_intermediate_output_o191; assert_in_epsilon(82.387649853082, worksheet.intermediate_output_o191, 0.002); end
  def test_intermediate_output_p191; assert_in_epsilon(80.51954858096909, worksheet.intermediate_output_p191, 0.002); end
  def test_intermediate_output_g192; assert_in_delta(0.0, (worksheet.intermediate_output_g192||0), 0.002); end
  def test_intermediate_output_h192; assert_in_delta(0.0, (worksheet.intermediate_output_h192||0), 0.002); end
  def test_intermediate_output_i192; assert_in_delta(0.0, (worksheet.intermediate_output_i192||0), 0.002); end
  def test_intermediate_output_j192; assert_in_delta(0.0, (worksheet.intermediate_output_j192||0), 0.002); end
  def test_intermediate_output_k192; assert_in_delta(0.0, (worksheet.intermediate_output_k192||0), 0.002); end
  def test_intermediate_output_l192; assert_in_delta(0.0, (worksheet.intermediate_output_l192||0), 0.002); end
  def test_intermediate_output_m192; assert_in_delta(0.0, (worksheet.intermediate_output_m192||0), 0.002); end
  def test_intermediate_output_n192; assert_in_delta(0.0, (worksheet.intermediate_output_n192||0), 0.002); end
  def test_intermediate_output_o192; assert_in_delta(0.0, (worksheet.intermediate_output_o192||0), 0.002); end
  def test_intermediate_output_p192; assert_in_delta(0.0, (worksheet.intermediate_output_p192||0), 0.002); end
  def test_intermediate_output_g193; assert_in_delta(0.0, (worksheet.intermediate_output_g193||0), 0.002); end
  def test_intermediate_output_h193; assert_in_delta(0.0, (worksheet.intermediate_output_h193||0), 0.002); end
  def test_intermediate_output_i193; assert_in_delta(0.0, (worksheet.intermediate_output_i193||0), 0.002); end
  def test_intermediate_output_j193; assert_in_delta(0.0, (worksheet.intermediate_output_j193||0), 0.002); end
  def test_intermediate_output_k193; assert_in_delta(0.0, (worksheet.intermediate_output_k193||0), 0.002); end
  def test_intermediate_output_l193; assert_in_delta(0.0, (worksheet.intermediate_output_l193||0), 0.002); end
  def test_intermediate_output_m193; assert_in_delta(0.0, (worksheet.intermediate_output_m193||0), 0.002); end
  def test_intermediate_output_n193; assert_in_delta(0.0, (worksheet.intermediate_output_n193||0), 0.002); end
  def test_intermediate_output_o193; assert_in_delta(0.0, (worksheet.intermediate_output_o193||0), 0.002); end
  def test_intermediate_output_p193; assert_in_delta(0.0, (worksheet.intermediate_output_p193||0), 0.002); end
  def test_intermediate_output_c194; assert_equal("XV", worksheet.intermediate_output_c194); end
  def test_intermediate_output_g194; assert_in_delta(0.0, (worksheet.intermediate_output_g194||0), 0.002); end
  def test_intermediate_output_h194; assert_in_delta(0.0, (worksheet.intermediate_output_h194||0), 0.002); end
  def test_intermediate_output_i194; assert_in_delta(0.0, (worksheet.intermediate_output_i194||0), 0.002); end
  def test_intermediate_output_j194; assert_in_delta(0.0, (worksheet.intermediate_output_j194||0), 0.002); end
  def test_intermediate_output_k194; assert_in_delta(0.0, (worksheet.intermediate_output_k194||0), 0.002); end
  def test_intermediate_output_l194; assert_in_delta(0.0, (worksheet.intermediate_output_l194||0), 0.002); end
  def test_intermediate_output_m194; assert_in_delta(0.0, (worksheet.intermediate_output_m194||0), 0.002); end
  def test_intermediate_output_n194; assert_in_delta(0.0, (worksheet.intermediate_output_n194||0), 0.002); end
  def test_intermediate_output_o194; assert_in_delta(0.0, (worksheet.intermediate_output_o194||0), 0.002); end
  def test_intermediate_output_p194; assert_in_delta(0.0, (worksheet.intermediate_output_p194||0), 0.002); end
  def test_intermediate_output_c195; assert_equal("XVI", worksheet.intermediate_output_c195); end
  def test_intermediate_output_g195; assert_in_delta(0.0, (worksheet.intermediate_output_g195||0), 0.002); end
  def test_intermediate_output_h195; assert_in_delta(0.0, (worksheet.intermediate_output_h195||0), 0.002); end
  def test_intermediate_output_i195; assert_in_delta(0.0, (worksheet.intermediate_output_i195||0), 0.002); end
  def test_intermediate_output_j195; assert_in_delta(0.0, (worksheet.intermediate_output_j195||0), 0.002); end
  def test_intermediate_output_k195; assert_in_delta(0.0, (worksheet.intermediate_output_k195||0), 0.002); end
  def test_intermediate_output_l195; assert_in_delta(0.0, (worksheet.intermediate_output_l195||0), 0.002); end
  def test_intermediate_output_m195; assert_in_delta(0.0, (worksheet.intermediate_output_m195||0), 0.002); end
  def test_intermediate_output_n195; assert_in_delta(0.0, (worksheet.intermediate_output_n195||0), 0.002); end
  def test_intermediate_output_o195; assert_in_delta(0.0, (worksheet.intermediate_output_o195||0), 0.002); end
  def test_intermediate_output_p195; assert_in_delta(0.0, (worksheet.intermediate_output_p195||0), 0.002); end
  def test_intermediate_output_c196; assert_equal("XVII", worksheet.intermediate_output_c196); end
  def test_intermediate_output_g196; assert_in_delta(0.0, (worksheet.intermediate_output_g196||0), 0.002); end
  def test_intermediate_output_h196; assert_in_delta(0.0, (worksheet.intermediate_output_h196||0), 0.002); end
  def test_intermediate_output_i196; assert_in_delta(0.0, (worksheet.intermediate_output_i196||0), 0.002); end
  def test_intermediate_output_j196; assert_in_delta(0.0, (worksheet.intermediate_output_j196||0), 0.002); end
  def test_intermediate_output_k196; assert_in_delta(0.0, (worksheet.intermediate_output_k196||0), 0.002); end
  def test_intermediate_output_l196; assert_in_delta(0.0, (worksheet.intermediate_output_l196||0), 0.002); end
  def test_intermediate_output_m196; assert_in_delta(0.0, (worksheet.intermediate_output_m196||0), 0.002); end
  def test_intermediate_output_n196; assert_in_delta(0.0, (worksheet.intermediate_output_n196||0), 0.002); end
  def test_intermediate_output_o196; assert_in_delta(0.0, (worksheet.intermediate_output_o196||0), 0.002); end
  def test_intermediate_output_p196; assert_in_delta(0.0, (worksheet.intermediate_output_p196||0), 0.002); end
  def test_intermediate_output_g197; assert_in_epsilon(399.97160263914174, worksheet.intermediate_output_g197, 0.002); end
  def test_intermediate_output_h197; assert_in_epsilon(463.9056459131594, worksheet.intermediate_output_h197, 0.002); end
  def test_intermediate_output_i197; assert_in_epsilon(532.6352153070108, worksheet.intermediate_output_i197, 0.002); end
  def test_intermediate_output_j197; assert_in_epsilon(613.9145251760453, worksheet.intermediate_output_j197, 0.002); end
  def test_intermediate_output_k197; assert_in_epsilon(707.0247988794542, worksheet.intermediate_output_k197, 0.002); end
  def test_intermediate_output_l197; assert_in_epsilon(816.7536980782737, worksheet.intermediate_output_l197, 0.002); end
  def test_intermediate_output_m197; assert_in_epsilon(956.9773977610577, worksheet.intermediate_output_m197, 0.002); end
  def test_intermediate_output_n197; assert_in_epsilon(1120.3864476971685, worksheet.intermediate_output_n197, 0.002); end
  def test_intermediate_output_o197; assert_in_epsilon(1282.5444236676415, worksheet.intermediate_output_o197, 0.002); end
  def test_intermediate_output_p197; assert_in_epsilon(1471.355954187081, worksheet.intermediate_output_p197, 0.002); end
  def test_intermediate_output_h198; assert_in_epsilon(2159.693121380753, worksheet.intermediate_output_h198, 0.002); end
  def test_intermediate_output_i198; assert_in_epsilon(2525.716937747351, worksheet.intermediate_output_i198, 0.002); end
  def test_intermediate_output_j198; assert_in_epsilon(2907.014006142157, worksheet.intermediate_output_j198, 0.002); end
  def test_intermediate_output_k198; assert_in_epsilon(3348.9034469904536, worksheet.intermediate_output_k198, 0.002); end
  def test_intermediate_output_l198; assert_in_epsilon(3864.31069199373, worksheet.intermediate_output_l198, 0.002); end
  def test_intermediate_output_m198; assert_in_epsilon(4504.43958943972, worksheet.intermediate_output_m198, 0.002); end
  def test_intermediate_output_n198; assert_in_epsilon(5275.1141386136205, worksheet.intermediate_output_n198, 0.002); end
  def test_intermediate_output_o198; assert_in_epsilon(6088.406166397261, worksheet.intermediate_output_o198, 0.002); end
  def test_intermediate_output_p198; assert_in_epsilon(6979.156709896526, worksheet.intermediate_output_p198, 0.002); end
  def test_intermediate_output_q198; assert_equal("REFERENCED - All costs", worksheet.intermediate_output_q198); end
  def test_intermediate_output_c199; assert_equal("Modelled emissions", worksheet.intermediate_output_c199); end
  def test_intermediate_output_h199; assert_in_epsilon(2159.693121380753, worksheet.intermediate_output_h199, 0.002); end
  def test_intermediate_output_i199; assert_in_epsilon(4685.410059128104, worksheet.intermediate_output_i199, 0.002); end
  def test_intermediate_output_j199; assert_in_epsilon(7592.424065270261, worksheet.intermediate_output_j199, 0.002); end
  def test_intermediate_output_k199; assert_in_epsilon(10941.327512260716, worksheet.intermediate_output_k199, 0.002); end
  def test_intermediate_output_l199; assert_in_epsilon(14805.638204254446, worksheet.intermediate_output_l199, 0.002); end
  def test_intermediate_output_m199; assert_in_epsilon(19310.077793694167, worksheet.intermediate_output_m199, 0.002); end
  def test_intermediate_output_n199; assert_in_epsilon(24585.19193230779, worksheet.intermediate_output_n199, 0.002); end
  def test_intermediate_output_o199; assert_in_epsilon(30673.59809870505, worksheet.intermediate_output_o199, 0.002); end
  def test_intermediate_output_p199; assert_in_epsilon(37652.754808601574, worksheet.intermediate_output_p199, 0.002); end
  def test_intermediate_output_d201; assert_equal("IPCC Sector", worksheet.intermediate_output_d201); end
  def test_intermediate_output_p201; assert_equal("Mt CO2e", worksheet.intermediate_output_p201); end
  def test_intermediate_output_c202; assert_equal("1A", worksheet.intermediate_output_c202); end
  def test_intermediate_output_d202; assert_equal("Fuel Combustion", worksheet.intermediate_output_d202); end
  def test_intermediate_output_g202; assert_in_epsilon(374.11296950801864, worksheet.intermediate_output_g202, 0.002); end
  def test_intermediate_output_h202; assert_in_epsilon(435.64349462905693, worksheet.intermediate_output_h202, 0.002); end
  def test_intermediate_output_i202; assert_in_epsilon(501.5930718667098, worksheet.intermediate_output_i202, 0.002); end
  def test_intermediate_output_j202; assert_in_epsilon(577.2879876504201, worksheet.intermediate_output_j202, 0.002); end
  def test_intermediate_output_k202; assert_in_epsilon(671.3351473696888, worksheet.intermediate_output_k202, 0.002); end
  def test_intermediate_output_l202; assert_in_epsilon(780.6589781843192, worksheet.intermediate_output_l202, 0.002); end
  def test_intermediate_output_m202; assert_in_epsilon(918.580772572444, worksheet.intermediate_output_m202, 0.002); end
  def test_intermediate_output_n202; assert_in_epsilon(1080.739118384908, worksheet.intermediate_output_n202, 0.002); end
  def test_intermediate_output_o202; assert_in_epsilon(1239.610393798645, worksheet.intermediate_output_o202, 0.002); end
  def test_intermediate_output_p202; assert_in_epsilon(1425.4872561753307, worksheet.intermediate_output_p202, 0.002); end
  def test_intermediate_output_c203; assert_equal("1B", worksheet.intermediate_output_c203); end
  def test_intermediate_output_d203; assert_equal("Fugitive Emissions from Fuels", worksheet.intermediate_output_d203); end
  def test_intermediate_output_g203; assert_in_delta(0.0, (worksheet.intermediate_output_g203||0), 0.002); end
  def test_intermediate_output_h203; assert_in_delta(0.0, (worksheet.intermediate_output_h203||0), 0.002); end
  def test_intermediate_output_i203; assert_in_delta(0.0, (worksheet.intermediate_output_i203||0), 0.002); end
  def test_intermediate_output_j203; assert_in_delta(0.0, (worksheet.intermediate_output_j203||0), 0.002); end
  def test_intermediate_output_k203; assert_in_delta(0.0, (worksheet.intermediate_output_k203||0), 0.002); end
  def test_intermediate_output_l203; assert_in_delta(0.0, (worksheet.intermediate_output_l203||0), 0.002); end
  def test_intermediate_output_m203; assert_in_delta(0.0, (worksheet.intermediate_output_m203||0), 0.002); end
  def test_intermediate_output_n203; assert_in_delta(0.0, (worksheet.intermediate_output_n203||0), 0.002); end
  def test_intermediate_output_o203; assert_in_delta(0.0, (worksheet.intermediate_output_o203||0), 0.002); end
  def test_intermediate_output_p203; assert_in_delta(0.0, (worksheet.intermediate_output_p203||0), 0.002); end
  def test_intermediate_output_c204; assert_in_delta(1.0, worksheet.intermediate_output_c204, 0.002); end
  def test_intermediate_output_d204; assert_equal("Fuel Combustion", worksheet.intermediate_output_d204); end
  def test_intermediate_output_g204; assert_in_epsilon(374.11296950801864, worksheet.intermediate_output_g204, 0.002); end
  def test_intermediate_output_h204; assert_in_epsilon(435.64349462905693, worksheet.intermediate_output_h204, 0.002); end
  def test_intermediate_output_i204; assert_in_epsilon(501.5930718667098, worksheet.intermediate_output_i204, 0.002); end
  def test_intermediate_output_j204; assert_in_epsilon(577.2879876504201, worksheet.intermediate_output_j204, 0.002); end
  def test_intermediate_output_k204; assert_in_epsilon(671.3351473696888, worksheet.intermediate_output_k204, 0.002); end
  def test_intermediate_output_l204; assert_in_epsilon(780.6589781843192, worksheet.intermediate_output_l204, 0.002); end
  def test_intermediate_output_m204; assert_in_epsilon(918.580772572444, worksheet.intermediate_output_m204, 0.002); end
  def test_intermediate_output_n204; assert_in_epsilon(1080.739118384908, worksheet.intermediate_output_n204, 0.002); end
  def test_intermediate_output_o204; assert_in_epsilon(1239.610393798645, worksheet.intermediate_output_o204, 0.002); end
  def test_intermediate_output_p204; assert_in_epsilon(1425.4872561753307, worksheet.intermediate_output_p204, 0.002); end
  def test_intermediate_output_c205; assert_in_epsilon(2.0, worksheet.intermediate_output_c205, 0.002); end
  def test_intermediate_output_d205; assert_equal("Industrial Processes", worksheet.intermediate_output_d205); end
  def test_intermediate_output_g205; assert_in_epsilon(4.7781079274466, worksheet.intermediate_output_g205, 0.002); end
  def test_intermediate_output_h205; assert_in_epsilon(5.533317828790926, worksheet.intermediate_output_h205, 0.002); end
  def test_intermediate_output_i205; assert_in_epsilon(6.953378911561057, worksheet.intermediate_output_i205, 0.002); end
  def test_intermediate_output_j205; assert_in_epsilon(8.787771968448531, worksheet.intermediate_output_j205, 0.002); end
  def test_intermediate_output_k205; assert_in_epsilon(11.04303379359396, worksheet.intermediate_output_k205, 0.002); end
  def test_intermediate_output_l205; assert_in_epsilon(13.87679111855239, worksheet.intermediate_output_l205, 0.002); end
  def test_intermediate_output_m205; assert_in_epsilon(17.0615580040447, worksheet.intermediate_output_m205, 0.002); end
  def test_intermediate_output_n205; assert_in_epsilon(20.61190909870345, worksheet.intermediate_output_n205, 0.002); end
  def test_intermediate_output_o205; assert_in_epsilon(24.31442576474892, worksheet.intermediate_output_o205, 0.002); end
  def test_intermediate_output_p205; assert_in_epsilon(28.484840834552653, worksheet.intermediate_output_p205, 0.002); end
  def test_intermediate_output_c206; assert_in_epsilon(3.0, worksheet.intermediate_output_c206, 0.002); end
  def test_intermediate_output_d206; assert_equal("Solvent and Other Product Use", worksheet.intermediate_output_d206); end
  def test_intermediate_output_g206; assert_in_delta(0.0, (worksheet.intermediate_output_g206||0), 0.002); end
  def test_intermediate_output_h206; assert_in_delta(0.0, (worksheet.intermediate_output_h206||0), 0.002); end
  def test_intermediate_output_i206; assert_in_delta(0.0, (worksheet.intermediate_output_i206||0), 0.002); end
  def test_intermediate_output_j206; assert_in_delta(0.0, (worksheet.intermediate_output_j206||0), 0.002); end
  def test_intermediate_output_k206; assert_in_delta(0.0, (worksheet.intermediate_output_k206||0), 0.002); end
  def test_intermediate_output_l206; assert_in_delta(0.0, (worksheet.intermediate_output_l206||0), 0.002); end
  def test_intermediate_output_m206; assert_in_delta(0.0, (worksheet.intermediate_output_m206||0), 0.002); end
  def test_intermediate_output_n206; assert_in_delta(0.0, (worksheet.intermediate_output_n206||0), 0.002); end
  def test_intermediate_output_o206; assert_in_delta(0.0, (worksheet.intermediate_output_o206||0), 0.002); end
  def test_intermediate_output_p206; assert_in_delta(0.0, (worksheet.intermediate_output_p206||0), 0.002); end
  def test_intermediate_output_c207; assert_in_epsilon(4.0, worksheet.intermediate_output_c207, 0.002); end
  def test_intermediate_output_d207; assert_equal("Agriculture", worksheet.intermediate_output_d207); end
  def test_intermediate_output_g207; assert_in_epsilon(43.61472600399361, worksheet.intermediate_output_g207, 0.002); end
  def test_intermediate_output_h207; assert_in_epsilon(43.04718167837683, worksheet.intermediate_output_h207, 0.002); end
  def test_intermediate_output_i207; assert_in_epsilon(41.90199190246045, worksheet.intermediate_output_i207, 0.002); end
  def test_intermediate_output_j207; assert_in_epsilon(41.83782031340011, worksheet.intermediate_output_j207, 0.002); end
  def test_intermediate_output_k207; assert_in_epsilon(39.37807908147248, worksheet.intermediate_output_k207, 0.002); end
  def test_intermediate_output_l207; assert_in_epsilon(37.1746324932571, worksheet.intermediate_output_l207, 0.002); end
  def test_intermediate_output_m207; assert_in_epsilon(35.19355555437035, worksheet.intermediate_output_m207, 0.002); end
  def test_intermediate_output_n207; assert_in_epsilon(33.407914155526825, worksheet.intermediate_output_n207, 0.002); end
  def test_intermediate_output_o207; assert_in_epsilon(31.795097738118187, worksheet.intermediate_output_o207, 0.002); end
  def test_intermediate_output_p207; assert_in_epsilon(30.335995837662693, worksheet.intermediate_output_p207, 0.002); end
  def test_intermediate_output_c208; assert_in_epsilon(5.0, worksheet.intermediate_output_c208, 0.002); end
  def test_intermediate_output_d208; assert_equal("Land Use, Land-Use Change and Forestry", worksheet.intermediate_output_d208); end
  def test_intermediate_output_g208; assert_in_epsilon(-25.241849417808073, worksheet.intermediate_output_g208, 0.002); end
  def test_intermediate_output_h208; assert_in_epsilon(-23.699770586662464, worksheet.intermediate_output_h208, 0.002); end
  def test_intermediate_output_i208; assert_in_epsilon(-21.534672047730453, worksheet.intermediate_output_i208, 0.002); end
  def test_intermediate_output_j208; assert_in_epsilon(-19.369573508798442, worksheet.intermediate_output_j208, 0.002); end
  def test_intermediate_output_k208; assert_in_epsilon(-18.694953990080784, worksheet.intermediate_output_k208, 0.002); end
  def test_intermediate_output_l208; assert_in_epsilon(-18.02033447136312, worksheet.intermediate_output_l208, 0.002); end
  def test_intermediate_output_m208; assert_in_epsilon(-17.34571495264546, worksheet.intermediate_output_m208, 0.002); end
  def test_intermediate_output_n208; assert_in_epsilon(-16.671095433927796, worksheet.intermediate_output_n208, 0.002); end
  def test_intermediate_output_o208; assert_in_epsilon(-15.996475915210132, worksheet.intermediate_output_o208, 0.002); end
  def test_intermediate_output_p208; assert_in_epsilon(-15.321856396492471, worksheet.intermediate_output_p208, 0.002); end
  def test_intermediate_output_c209; assert_in_epsilon(6.0, worksheet.intermediate_output_c209, 0.002); end
  def test_intermediate_output_d209; assert_equal("Waste", worksheet.intermediate_output_d209); end
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
  def test_intermediate_output_c210; assert_in_epsilon(7.0, worksheet.intermediate_output_c210, 0.002); end
  def test_intermediate_output_d210; assert_equal("Other", worksheet.intermediate_output_d210); end
  def test_intermediate_output_g210; assert_in_delta(0.0, (worksheet.intermediate_output_g210||0), 0.002); end
  def test_intermediate_output_h210; assert_in_delta(0.0, (worksheet.intermediate_output_h210||0), 0.002); end
  def test_intermediate_output_i210; assert_in_delta(0.0, (worksheet.intermediate_output_i210||0), 0.002); end
  def test_intermediate_output_j210; assert_in_delta(0.0, (worksheet.intermediate_output_j210||0), 0.002); end
  def test_intermediate_output_k210; assert_in_delta(0.0, (worksheet.intermediate_output_k210||0), 0.002); end
  def test_intermediate_output_l210; assert_in_delta(0.0, (worksheet.intermediate_output_l210||0), 0.002); end
  def test_intermediate_output_m210; assert_in_delta(0.0, (worksheet.intermediate_output_m210||0), 0.002); end
  def test_intermediate_output_n210; assert_in_delta(0.0, (worksheet.intermediate_output_n210||0), 0.002); end
  def test_intermediate_output_o210; assert_in_delta(0.0, (worksheet.intermediate_output_o210||0), 0.002); end
  def test_intermediate_output_p210; assert_in_delta(0.0, (worksheet.intermediate_output_p210||0), 0.002); end
  def test_intermediate_output_c211; assert_equal("X1", worksheet.intermediate_output_c211); end
  def test_intermediate_output_d211; assert_equal("International Aviation and Shipping", worksheet.intermediate_output_d211); end
  def test_intermediate_output_g211; assert_in_delta(0.0, (worksheet.intermediate_output_g211||0), 0.002); end
  def test_intermediate_output_h211; assert_in_delta(0.0, (worksheet.intermediate_output_h211||0), 0.002); end
  def test_intermediate_output_i211; assert_in_delta(0.0, (worksheet.intermediate_output_i211||0), 0.002); end
  def test_intermediate_output_j211; assert_in_delta(0.0, (worksheet.intermediate_output_j211||0), 0.002); end
  def test_intermediate_output_k211; assert_in_delta(0.0, (worksheet.intermediate_output_k211||0), 0.002); end
  def test_intermediate_output_l211; assert_in_delta(0.0, (worksheet.intermediate_output_l211||0), 0.002); end
  def test_intermediate_output_m211; assert_in_delta(0.0, (worksheet.intermediate_output_m211||0), 0.002); end
  def test_intermediate_output_n211; assert_in_delta(0.0, (worksheet.intermediate_output_n211||0), 0.002); end
  def test_intermediate_output_o211; assert_in_delta(0.0, (worksheet.intermediate_output_o211||0), 0.002); end
  def test_intermediate_output_p211; assert_in_delta(0.0, (worksheet.intermediate_output_p211||0), 0.002); end
  def test_intermediate_output_c212; assert_equal("X2", worksheet.intermediate_output_c212); end
  def test_intermediate_output_d212; assert_equal("Bioenergy credit", worksheet.intermediate_output_d212); end
  def test_intermediate_output_g212; assert_in_delta(-0.032957750320570474, worksheet.intermediate_output_g212, 0.002); end
  def test_intermediate_output_h212; assert_in_delta(-0.0765393643139102, worksheet.intermediate_output_h212, 0.002); end
  def test_intermediate_output_i212; assert_in_delta(-0.1857246472401799, worksheet.intermediate_output_i212, 0.002); end
  def test_intermediate_output_j212; assert_in_delta(-0.31271435247018553, worksheet.intermediate_output_j212, 0.002); end
  def test_intermediate_output_k212; assert_in_delta(-0.4611327718453031, worksheet.intermediate_output_k212, 0.002); end
  def test_intermediate_output_l212; assert_in_delta(-0.617884560781422, worksheet.intermediate_output_l212, 0.002); end
  def test_intermediate_output_m212; assert_in_delta(-0.7769055043123057, worksheet.intermediate_output_m212, 0.002); end
  def test_intermediate_output_n212; assert_in_delta(-0.9473793770227963, worksheet.intermediate_output_n212, 0.002); end
  def test_intermediate_output_o212; assert_in_epsilon(-1.1203563382150417, worksheet.intermediate_output_o212, 0.002); end
  def test_intermediate_output_p212; assert_in_epsilon(-1.302563476705645, worksheet.intermediate_output_p212, 0.002); end
  def test_intermediate_output_c213; assert_equal("X3", worksheet.intermediate_output_c213); end
  def test_intermediate_output_d213; assert_equal("Carbon capture", worksheet.intermediate_output_d213); end
  def test_intermediate_output_g213; assert_in_delta(0.0, (worksheet.intermediate_output_g213||0), 0.002); end
  def test_intermediate_output_h213; assert_in_delta(0.0, (worksheet.intermediate_output_h213||0), 0.002); end
  def test_intermediate_output_i213; assert_in_delta(0.0, (worksheet.intermediate_output_i213||0), 0.002); end
  def test_intermediate_output_j213; assert_in_delta(0.0, (worksheet.intermediate_output_j213||0), 0.002); end
  def test_intermediate_output_k213; assert_in_delta(0.0, (worksheet.intermediate_output_k213||0), 0.002); end
  def test_intermediate_output_l213; assert_in_delta(0.0, (worksheet.intermediate_output_l213||0), 0.002); end
  def test_intermediate_output_m213; assert_in_delta(0.0, (worksheet.intermediate_output_m213||0), 0.002); end
  def test_intermediate_output_n213; assert_in_delta(0.0, (worksheet.intermediate_output_n213||0), 0.002); end
  def test_intermediate_output_o213; assert_in_delta(0.0, (worksheet.intermediate_output_o213||0), 0.002); end
  def test_intermediate_output_p213; assert_in_delta(0.0, (worksheet.intermediate_output_p213||0), 0.002); end
  def test_intermediate_output_d214; assert_equal("Total", worksheet.intermediate_output_d214); end
  def test_intermediate_output_f214; assert_in_delta(0.0, (worksheet.intermediate_output_f214||0), 0.002); end
  def test_intermediate_output_g214; assert_in_epsilon(397.23099627133024, worksheet.intermediate_output_g214, 0.002); end
  def test_intermediate_output_h214; assert_in_epsilon(460.4476841852483, worksheet.intermediate_output_h214, 0.002); end
  def test_intermediate_output_i214; assert_in_epsilon(528.7280459857608, worksheet.intermediate_output_i214, 0.002); end
  def test_intermediate_output_j214; assert_in_epsilon(608.2312920710001, worksheet.intermediate_output_j214, 0.002); end
  def test_intermediate_output_k214; assert_in_epsilon(702.6001734828292, worksheet.intermediate_output_k214, 0.002); end
  def test_intermediate_output_l214; assert_in_epsilon(813.0721827639842, worksheet.intermediate_output_l214, 0.002); end
  def test_intermediate_output_m214; assert_in_epsilon(952.7132656739013, worksheet.intermediate_output_m214, 0.002); end
  def test_intermediate_output_n214; assert_in_epsilon(1117.1404668281875, worksheet.intermediate_output_n214, 0.002); end
  def test_intermediate_output_o214; assert_in_epsilon(1278.6030850480868, worksheet.intermediate_output_o214, 0.002); end
  def test_intermediate_output_p214; assert_in_epsilon(1467.683672974348, worksheet.intermediate_output_p214, 0.002); end
  def test_intermediate_output_q214; assert_equal("REFERENCED - All costs", worksheet.intermediate_output_q214); end
  def test_intermediate_output_c216; assert_equal("Excluding international bunkers", worksheet.intermediate_output_c216); end
  def test_intermediate_output_f216; assert_in_delta(0.0, (worksheet.intermediate_output_f216||0), 0.002); end
  def test_intermediate_output_g216; assert_in_epsilon(397.23099627133024, worksheet.intermediate_output_g216, 0.002); end
  def test_intermediate_output_h216; assert_in_epsilon(460.4476841852483, worksheet.intermediate_output_h216, 0.002); end
  def test_intermediate_output_i216; assert_in_epsilon(528.7280459857608, worksheet.intermediate_output_i216, 0.002); end
  def test_intermediate_output_j216; assert_in_epsilon(608.2312920710001, worksheet.intermediate_output_j216, 0.002); end
  def test_intermediate_output_k216; assert_in_epsilon(702.6001734828292, worksheet.intermediate_output_k216, 0.002); end
  def test_intermediate_output_l216; assert_in_epsilon(813.0721827639842, worksheet.intermediate_output_l216, 0.002); end
  def test_intermediate_output_m216; assert_in_epsilon(952.7132656739013, worksheet.intermediate_output_m216, 0.002); end
  def test_intermediate_output_n216; assert_in_epsilon(1117.1404668281875, worksheet.intermediate_output_n216, 0.002); end
  def test_intermediate_output_o216; assert_in_epsilon(1278.6030850480868, worksheet.intermediate_output_o216, 0.002); end
  def test_intermediate_output_p216; assert_in_epsilon(1467.683672974348, worksheet.intermediate_output_p216, 0.002); end
  def test_intermediate_output_q216; assert_equal("REFERENCED - All costs", worksheet.intermediate_output_q216); end
  def test_intermediate_output_c219; assert_equal("Please note: emissions by sector need to account for bio-energy, which is accounted for seperately (in V). ", worksheet.intermediate_output_c219); end
  def test_intermediate_output_c220; assert_equal("Cumulative emissions are estimates based on a linear trajectory between the 5 year time periods", worksheet.intermediate_output_c220); end
  def test_intermediate_output_c223; assert_equal("Targets", worksheet.intermediate_output_c223); end
  def test_intermediate_output_g223; assert_equal("2050 target", worksheet.intermediate_output_g223); end
  def test_intermediate_output_h223; assert_equal("2020 target ", worksheet.intermediate_output_h223); end
  def test_intermediate_output_j223; assert_equal("2050 target", worksheet.intermediate_output_j223); end
  def test_intermediate_output_k223; assert_equal("2020 target", worksheet.intermediate_output_k223); end
  def test_intermediate_output_m223; assert_equal("Actuals, as % of 2007, modelled", worksheet.intermediate_output_m223); end
  def test_intermediate_output_f224; assert_equal("Base year (1990)", worksheet.intermediate_output_f224); end
  def test_intermediate_output_g224; assert_equal("(20% of base)", worksheet.intermediate_output_g224); end
  def test_intermediate_output_h224; assert_equal("(66% of base)", worksheet.intermediate_output_h224); end
  def test_intermediate_output_j224; assert_equal("% of 2007", worksheet.intermediate_output_j224); end
  def test_intermediate_output_k224; assert_equal("% of 2007", worksheet.intermediate_output_k224); end
  def test_intermediate_output_n224; assert_in_epsilon(2020.0, worksheet.intermediate_output_n224, 0.002); end
  def test_intermediate_output_o224; assert_in_epsilon(2030.0, worksheet.intermediate_output_o224, 0.002); end
  def test_intermediate_output_p224; assert_in_epsilon(2050.0, worksheet.intermediate_output_p224, 0.002); end
  def test_intermediate_output_d225; assert_equal("Kyoto agreed sectors", worksheet.intermediate_output_d225); end
  def test_intermediate_output_f225; assert_in_epsilon(777.11767, worksheet.intermediate_output_f225, 0.002); end
  def test_intermediate_output_g225; assert_in_epsilon(155.42353400000002, worksheet.intermediate_output_g225, 0.002); end
  def test_intermediate_output_h225; assert_in_epsilon(512.8976622, worksheet.intermediate_output_h225, 0.002); end
  def test_intermediate_output_d226; assert_equal("International bunkers (CO2 only)", worksheet.intermediate_output_d226); end
  def test_intermediate_output_f226; assert_in_epsilon(22.4685, worksheet.intermediate_output_f226, 0.002); end
  def test_intermediate_output_j226; assert_equal(:div0, worksheet.intermediate_output_j226); end
  def test_intermediate_output_k226; assert_equal(:div0, worksheet.intermediate_output_k226); end
  def test_intermediate_output_d227; assert_equal("Total", worksheet.intermediate_output_d227); end
  def test_intermediate_output_f227; assert_in_epsilon(799.5861699999999, worksheet.intermediate_output_f227, 0.002); end
  def test_intermediate_output_g227; assert_in_epsilon(159.917234, worksheet.intermediate_output_g227, 0.002); end
  def test_intermediate_output_h227; assert_in_epsilon(527.7268722, worksheet.intermediate_output_h227, 0.002); end
  def test_intermediate_output_j227; assert_equal(:div0, worksheet.intermediate_output_j227); end
  def test_intermediate_output_k227; assert_equal(:div0, worksheet.intermediate_output_k227); end
  def test_intermediate_output_n227; assert_equal(:div0, worksheet.intermediate_output_n227); end
  def test_intermediate_output_o227; assert_equal(:div0, worksheet.intermediate_output_o227); end
  def test_intermediate_output_p227; assert_equal(:div0, worksheet.intermediate_output_p227); end
  def test_intermediate_output_d228; assert_equal("Target, for chart", worksheet.intermediate_output_d228); end
  def test_intermediate_output_g228; assert_in_delta(0.2, worksheet.intermediate_output_g228, 0.002); end
  def test_intermediate_output_h228; assert_in_delta(0.2, worksheet.intermediate_output_h228, 0.002); end
  def test_intermediate_output_i228; assert_in_delta(0.2, worksheet.intermediate_output_i228, 0.002); end
  def test_intermediate_output_j228; assert_in_delta(0.2, worksheet.intermediate_output_j228, 0.002); end
  def test_intermediate_output_k228; assert_in_delta(0.2, worksheet.intermediate_output_k228, 0.002); end
  def test_intermediate_output_l228; assert_in_delta(0.2, worksheet.intermediate_output_l228, 0.002); end
  def test_intermediate_output_m228; assert_in_delta(0.2, worksheet.intermediate_output_m228, 0.002); end
  def test_intermediate_output_n228; assert_in_delta(0.2, worksheet.intermediate_output_n228, 0.002); end
  def test_intermediate_output_o228; assert_in_delta(0.2, worksheet.intermediate_output_o228, 0.002); end
  def test_intermediate_output_p228; assert_in_delta(0.2, worksheet.intermediate_output_p228, 0.002); end
  def test_intermediate_output_d229; assert_equal("Dummy, for chart", worksheet.intermediate_output_d229); end
  def test_intermediate_output_g229; assert_in_delta(0.0, (worksheet.intermediate_output_g229||0), 0.002); end
  def test_intermediate_output_h229; assert_in_delta(0.0, (worksheet.intermediate_output_h229||0), 0.002); end
  def test_intermediate_output_i229; assert_in_delta(0.0, (worksheet.intermediate_output_i229||0), 0.002); end
  def test_intermediate_output_j229; assert_in_delta(0.0, (worksheet.intermediate_output_j229||0), 0.002); end
  def test_intermediate_output_k229; assert_in_delta(0.0, (worksheet.intermediate_output_k229||0), 0.002); end
  def test_intermediate_output_l229; assert_in_delta(0.0, (worksheet.intermediate_output_l229||0), 0.002); end
  def test_intermediate_output_m229; assert_in_delta(0.0, (worksheet.intermediate_output_m229||0), 0.002); end
  def test_intermediate_output_n229; assert_in_delta(0.0, (worksheet.intermediate_output_n229||0), 0.002); end
  def test_intermediate_output_o229; assert_in_delta(0.0, (worksheet.intermediate_output_o229||0), 0.002); end
  def test_intermediate_output_p229; assert_in_delta(0.0, (worksheet.intermediate_output_p229||0), 0.002); end
  def test_intermediate_output_b232; assert_equal("Bio-energy - Production and Use", worksheet.intermediate_output_b232); end
  def test_intermediate_output_b234; assert_equal("Production", worksheet.intermediate_output_b234); end
  def test_intermediate_output_c236; assert_equal("Domestic", worksheet.intermediate_output_c236); end
  def test_intermediate_output_g236; assert_in_epsilon(2006.0, worksheet.intermediate_output_g236, 0.002); end
  def test_intermediate_output_h236; assert_equal("2010", worksheet.intermediate_output_h236); end
  def test_intermediate_output_i236; assert_equal("2015", worksheet.intermediate_output_i236); end
  def test_intermediate_output_j236; assert_equal("2020", worksheet.intermediate_output_j236); end
  def test_intermediate_output_k236; assert_equal("2025", worksheet.intermediate_output_k236); end
  def test_intermediate_output_l236; assert_equal("2030", worksheet.intermediate_output_l236); end
  def test_intermediate_output_m236; assert_equal("2035", worksheet.intermediate_output_m236); end
  def test_intermediate_output_n236; assert_equal("2040", worksheet.intermediate_output_n236); end
  def test_intermediate_output_o236; assert_equal("2045", worksheet.intermediate_output_o236); end
  def test_intermediate_output_p236; assert_equal("2050", worksheet.intermediate_output_p236); end
  def test_intermediate_output_c237; assert_equal("V.a", worksheet.intermediate_output_c237); end
  def test_intermediate_output_d237; assert_equal("V.03", worksheet.intermediate_output_d237); end
  def test_intermediate_output_e237; assert_equal("Solid hydrocarbons", worksheet.intermediate_output_e237); end
  def test_intermediate_output_g237; assert_equal("na", worksheet.intermediate_output_g237); end
  def test_intermediate_output_h237; assert_equal("na", worksheet.intermediate_output_h237); end
  def test_intermediate_output_i237; assert_equal("na", worksheet.intermediate_output_i237); end
  def test_intermediate_output_j237; assert_equal("na", worksheet.intermediate_output_j237); end
  def test_intermediate_output_k237; assert_equal("na", worksheet.intermediate_output_k237); end
  def test_intermediate_output_l237; assert_equal("na", worksheet.intermediate_output_l237); end
  def test_intermediate_output_m237; assert_equal("na", worksheet.intermediate_output_m237); end
  def test_intermediate_output_n237; assert_equal("na", worksheet.intermediate_output_n237); end
  def test_intermediate_output_o237; assert_equal("na", worksheet.intermediate_output_o237); end
  def test_intermediate_output_p237; assert_equal("na", worksheet.intermediate_output_p237); end
  def test_intermediate_output_c238; assert_equal("V.a", worksheet.intermediate_output_c238); end
  def test_intermediate_output_d238; assert_equal("V.04", worksheet.intermediate_output_d238); end
  def test_intermediate_output_e238; assert_equal("Liquid hydrocarbons", worksheet.intermediate_output_e238); end
  def test_intermediate_output_g238; assert_equal("na", worksheet.intermediate_output_g238); end
  def test_intermediate_output_h238; assert_equal("na", worksheet.intermediate_output_h238); end
  def test_intermediate_output_i238; assert_equal("na", worksheet.intermediate_output_i238); end
  def test_intermediate_output_j238; assert_equal("na", worksheet.intermediate_output_j238); end
  def test_intermediate_output_k238; assert_equal("na", worksheet.intermediate_output_k238); end
  def test_intermediate_output_l238; assert_equal("na", worksheet.intermediate_output_l238); end
  def test_intermediate_output_m238; assert_equal("na", worksheet.intermediate_output_m238); end
  def test_intermediate_output_n238; assert_equal("na", worksheet.intermediate_output_n238); end
  def test_intermediate_output_o238; assert_equal("na", worksheet.intermediate_output_o238); end
  def test_intermediate_output_p238; assert_equal("na", worksheet.intermediate_output_p238); end
  def test_intermediate_output_c239; assert_equal("V.a", worksheet.intermediate_output_c239); end
  def test_intermediate_output_d239; assert_equal("V.05", worksheet.intermediate_output_d239); end
  def test_intermediate_output_e239; assert_equal("Gaseous hydrocarbons", worksheet.intermediate_output_e239); end
  def test_intermediate_output_g239; assert_equal("na", worksheet.intermediate_output_g239); end
  def test_intermediate_output_h239; assert_equal("na", worksheet.intermediate_output_h239); end
  def test_intermediate_output_i239; assert_equal("na", worksheet.intermediate_output_i239); end
  def test_intermediate_output_j239; assert_equal("na", worksheet.intermediate_output_j239); end
  def test_intermediate_output_k239; assert_equal("na", worksheet.intermediate_output_k239); end
  def test_intermediate_output_l239; assert_equal("na", worksheet.intermediate_output_l239); end
  def test_intermediate_output_m239; assert_equal("na", worksheet.intermediate_output_m239); end
  def test_intermediate_output_n239; assert_equal("na", worksheet.intermediate_output_n239); end
  def test_intermediate_output_o239; assert_equal("na", worksheet.intermediate_output_o239); end
  def test_intermediate_output_p239; assert_equal("na", worksheet.intermediate_output_p239); end
  def test_intermediate_output_c241; assert_equal("Imports", worksheet.intermediate_output_c241); end
  def test_intermediate_output_c242; assert_equal("V.b", worksheet.intermediate_output_c242); end
  def test_intermediate_output_d242; assert_equal("V.03", worksheet.intermediate_output_d242); end
  def test_intermediate_output_e242; assert_equal("Solid hydrocarbons", worksheet.intermediate_output_e242); end
  def test_intermediate_output_g242; assert_equal("na", worksheet.intermediate_output_g242); end
  def test_intermediate_output_h242; assert_equal("na", worksheet.intermediate_output_h242); end
  def test_intermediate_output_i242; assert_equal("na", worksheet.intermediate_output_i242); end
  def test_intermediate_output_j242; assert_equal("na", worksheet.intermediate_output_j242); end
  def test_intermediate_output_k242; assert_equal("na", worksheet.intermediate_output_k242); end
  def test_intermediate_output_l242; assert_equal("na", worksheet.intermediate_output_l242); end
  def test_intermediate_output_m242; assert_equal("na", worksheet.intermediate_output_m242); end
  def test_intermediate_output_n242; assert_equal("na", worksheet.intermediate_output_n242); end
  def test_intermediate_output_o242; assert_equal("na", worksheet.intermediate_output_o242); end
  def test_intermediate_output_p242; assert_equal("na", worksheet.intermediate_output_p242); end
  def test_intermediate_output_c243; assert_equal("V.b", worksheet.intermediate_output_c243); end
  def test_intermediate_output_d243; assert_equal("V.04", worksheet.intermediate_output_d243); end
  def test_intermediate_output_e243; assert_equal("Liquid hydrocarbons", worksheet.intermediate_output_e243); end
  def test_intermediate_output_g243; assert_equal("na", worksheet.intermediate_output_g243); end
  def test_intermediate_output_h243; assert_equal("na", worksheet.intermediate_output_h243); end
  def test_intermediate_output_i243; assert_equal("na", worksheet.intermediate_output_i243); end
  def test_intermediate_output_j243; assert_equal("na", worksheet.intermediate_output_j243); end
  def test_intermediate_output_k243; assert_equal("na", worksheet.intermediate_output_k243); end
  def test_intermediate_output_l243; assert_equal("na", worksheet.intermediate_output_l243); end
  def test_intermediate_output_m243; assert_equal("na", worksheet.intermediate_output_m243); end
  def test_intermediate_output_n243; assert_equal("na", worksheet.intermediate_output_n243); end
  def test_intermediate_output_o243; assert_equal("na", worksheet.intermediate_output_o243); end
  def test_intermediate_output_p243; assert_equal("na", worksheet.intermediate_output_p243); end
  def test_intermediate_output_c244; assert_equal("V.b", worksheet.intermediate_output_c244); end
  def test_intermediate_output_d244; assert_equal("V.05", worksheet.intermediate_output_d244); end
  def test_intermediate_output_e244; assert_equal("Gaseous hydrocarbons", worksheet.intermediate_output_e244); end
  def test_intermediate_output_g244; assert_equal("na", worksheet.intermediate_output_g244); end
  def test_intermediate_output_h244; assert_equal("na", worksheet.intermediate_output_h244); end
  def test_intermediate_output_i244; assert_equal("na", worksheet.intermediate_output_i244); end
  def test_intermediate_output_j244; assert_equal("na", worksheet.intermediate_output_j244); end
  def test_intermediate_output_k244; assert_equal("na", worksheet.intermediate_output_k244); end
  def test_intermediate_output_l244; assert_equal("na", worksheet.intermediate_output_l244); end
  def test_intermediate_output_m244; assert_equal("na", worksheet.intermediate_output_m244); end
  def test_intermediate_output_n244; assert_equal("na", worksheet.intermediate_output_n244); end
  def test_intermediate_output_o244; assert_equal("na", worksheet.intermediate_output_o244); end
  def test_intermediate_output_p244; assert_equal("na", worksheet.intermediate_output_p244); end
  def test_intermediate_output_c246; assert_equal("Total", worksheet.intermediate_output_c246); end
  def test_intermediate_output_c247; assert_equal("V.b", worksheet.intermediate_output_c247); end
  def test_intermediate_output_d247; assert_equal("V.03", worksheet.intermediate_output_d247); end
  def test_intermediate_output_e247; assert_equal("Solid hydrocarbons", worksheet.intermediate_output_e247); end
  def test_intermediate_output_g247; assert_equal(:value, worksheet.intermediate_output_g247); end
  def test_intermediate_output_h247; assert_equal(:value, worksheet.intermediate_output_h247); end
  def test_intermediate_output_i247; assert_equal(:value, worksheet.intermediate_output_i247); end
  def test_intermediate_output_j247; assert_equal(:value, worksheet.intermediate_output_j247); end
  def test_intermediate_output_k247; assert_equal(:value, worksheet.intermediate_output_k247); end
  def test_intermediate_output_l247; assert_equal(:value, worksheet.intermediate_output_l247); end
  def test_intermediate_output_m247; assert_equal(:value, worksheet.intermediate_output_m247); end
  def test_intermediate_output_n247; assert_equal(:value, worksheet.intermediate_output_n247); end
  def test_intermediate_output_o247; assert_equal(:value, worksheet.intermediate_output_o247); end
  def test_intermediate_output_p247; assert_equal(:value, worksheet.intermediate_output_p247); end
  def test_intermediate_output_c248; assert_equal("V.b", worksheet.intermediate_output_c248); end
  def test_intermediate_output_d248; assert_equal("V.04", worksheet.intermediate_output_d248); end
  def test_intermediate_output_e248; assert_equal("Liquid hydrocarbons", worksheet.intermediate_output_e248); end
  def test_intermediate_output_g248; assert_equal(:value, worksheet.intermediate_output_g248); end
  def test_intermediate_output_h248; assert_equal(:value, worksheet.intermediate_output_h248); end
  def test_intermediate_output_i248; assert_equal(:value, worksheet.intermediate_output_i248); end
  def test_intermediate_output_j248; assert_equal(:value, worksheet.intermediate_output_j248); end
  def test_intermediate_output_k248; assert_equal(:value, worksheet.intermediate_output_k248); end
  def test_intermediate_output_l248; assert_equal(:value, worksheet.intermediate_output_l248); end
  def test_intermediate_output_m248; assert_equal(:value, worksheet.intermediate_output_m248); end
  def test_intermediate_output_n248; assert_equal(:value, worksheet.intermediate_output_n248); end
  def test_intermediate_output_o248; assert_equal(:value, worksheet.intermediate_output_o248); end
  def test_intermediate_output_p248; assert_equal(:value, worksheet.intermediate_output_p248); end
  def test_intermediate_output_c249; assert_equal("V.b", worksheet.intermediate_output_c249); end
  def test_intermediate_output_d249; assert_equal("V.05", worksheet.intermediate_output_d249); end
  def test_intermediate_output_e249; assert_equal("Gaseous hydrocarbons", worksheet.intermediate_output_e249); end
  def test_intermediate_output_g249; assert_equal(:value, worksheet.intermediate_output_g249); end
  def test_intermediate_output_h249; assert_equal(:value, worksheet.intermediate_output_h249); end
  def test_intermediate_output_i249; assert_equal(:value, worksheet.intermediate_output_i249); end
  def test_intermediate_output_j249; assert_equal(:value, worksheet.intermediate_output_j249); end
  def test_intermediate_output_k249; assert_equal(:value, worksheet.intermediate_output_k249); end
  def test_intermediate_output_l249; assert_equal(:value, worksheet.intermediate_output_l249); end
  def test_intermediate_output_m249; assert_equal(:value, worksheet.intermediate_output_m249); end
  def test_intermediate_output_n249; assert_equal(:value, worksheet.intermediate_output_n249); end
  def test_intermediate_output_o249; assert_equal(:value, worksheet.intermediate_output_o249); end
  def test_intermediate_output_p249; assert_equal(:value, worksheet.intermediate_output_p249); end
  def test_intermediate_output_b251; assert_equal("Hydro-carbon use by sector and Bio-energy share", worksheet.intermediate_output_b251); end
  def test_intermediate_output_g251; assert_equal("Please note: Bio-energy is not assigned to sectors but is assumed to replace fossil fuels up to maximum demand", worksheet.intermediate_output_g251); end
  def test_intermediate_output_c253; assert_equal("Solid Hydrocarbon consumption", worksheet.intermediate_output_c253); end
  def test_intermediate_output_g253; assert_in_epsilon(3834.6998815001843, worksheet.intermediate_output_g253, 0.002); end
  def test_intermediate_output_h253; assert_in_epsilon(4387.614989564262, worksheet.intermediate_output_h253, 0.002); end
  def test_intermediate_output_i253; assert_in_epsilon(4996.3751818790915, worksheet.intermediate_output_i253, 0.002); end
  def test_intermediate_output_j253; assert_in_epsilon(5714.815533887691, worksheet.intermediate_output_j253, 0.002); end
  def test_intermediate_output_k253; assert_in_epsilon(6633.232367796969, worksheet.intermediate_output_k253, 0.002); end
  def test_intermediate_output_l253; assert_in_epsilon(7721.450173951748, worksheet.intermediate_output_l253, 0.002); end
  def test_intermediate_output_m253; assert_in_epsilon(9105.093942728541, worksheet.intermediate_output_m253, 0.002); end
  def test_intermediate_output_n253; assert_in_epsilon(10630.791857661889, worksheet.intermediate_output_n253, 0.002); end
  def test_intermediate_output_o253; assert_in_epsilon(12335.462173556538, worksheet.intermediate_output_o253, 0.002); end
  def test_intermediate_output_p253; assert_in_epsilon(14269.992391048163, worksheet.intermediate_output_p253, 0.002); end
  def test_intermediate_output_c254; assert_equal("V", worksheet.intermediate_output_c254); end
  def test_intermediate_output_d254; assert_equal("Share of solid biomass to total solid hydrocarbon consumption", worksheet.intermediate_output_d254); end
  def test_intermediate_output_g254; assert_equal(:na, worksheet.intermediate_output_g254); end
  def test_intermediate_output_h254; assert_equal(:na, worksheet.intermediate_output_h254); end
  def test_intermediate_output_i254; assert_equal(:na, worksheet.intermediate_output_i254); end
  def test_intermediate_output_j254; assert_equal(:na, worksheet.intermediate_output_j254); end
  def test_intermediate_output_k254; assert_equal(:na, worksheet.intermediate_output_k254); end
  def test_intermediate_output_l254; assert_equal(:na, worksheet.intermediate_output_l254); end
  def test_intermediate_output_m254; assert_equal(:na, worksheet.intermediate_output_m254); end
  def test_intermediate_output_n254; assert_equal(:na, worksheet.intermediate_output_n254); end
  def test_intermediate_output_o254; assert_equal(:na, worksheet.intermediate_output_o254); end
  def test_intermediate_output_p254; assert_equal(:na, worksheet.intermediate_output_p254); end
  def test_intermediate_output_c255; assert_equal("I.b", worksheet.intermediate_output_c255); end
  def test_intermediate_output_d255; assert_equal(:na, worksheet.intermediate_output_d255); end
  def test_intermediate_output_g255; assert_equal(:na, worksheet.intermediate_output_g255); end
  def test_intermediate_output_h255; assert_equal(:na, worksheet.intermediate_output_h255); end
  def test_intermediate_output_i255; assert_equal(:na, worksheet.intermediate_output_i255); end
  def test_intermediate_output_j255; assert_equal(:na, worksheet.intermediate_output_j255); end
  def test_intermediate_output_k255; assert_equal(:na, worksheet.intermediate_output_k255); end
  def test_intermediate_output_l255; assert_equal(:na, worksheet.intermediate_output_l255); end
  def test_intermediate_output_m255; assert_equal(:na, worksheet.intermediate_output_m255); end
  def test_intermediate_output_n255; assert_equal(:na, worksheet.intermediate_output_n255); end
  def test_intermediate_output_o255; assert_equal(:na, worksheet.intermediate_output_o255); end
  def test_intermediate_output_p255; assert_equal(:na, worksheet.intermediate_output_p255); end
  def test_intermediate_output_c256; assert_equal("Therm", worksheet.intermediate_output_c256); end
  def test_intermediate_output_d256; assert_equal(:na, worksheet.intermediate_output_d256); end
  def test_intermediate_output_g256; assert_in_epsilon(2439.722569085648, worksheet.intermediate_output_g256, 0.002); end
  def test_intermediate_output_h256; assert_in_epsilon(2891.4483740170663, worksheet.intermediate_output_h256, 0.002); end
  def test_intermediate_output_i256; assert_in_epsilon(3336.936905910514, worksheet.intermediate_output_i256, 0.002); end
  def test_intermediate_output_j256; assert_in_epsilon(3889.768274641967, worksheet.intermediate_output_j256, 0.002); end
  def test_intermediate_output_k256; assert_in_epsilon(4559.793124902451, worksheet.intermediate_output_k256, 0.002); end
  def test_intermediate_output_l256; assert_in_epsilon(5396.03197337762, worksheet.intermediate_output_l256, 0.002); end
  def test_intermediate_output_m256; assert_in_epsilon(6405.252709434222, worksheet.intermediate_output_m256, 0.002); end
  def test_intermediate_output_n256; assert_in_epsilon(7557.003301481831, worksheet.intermediate_output_n256, 0.002); end
  def test_intermediate_output_o256; assert_in_epsilon(8834.519639947115, worksheet.intermediate_output_o256, 0.002); end
  def test_intermediate_output_p256; assert_in_epsilon(10358.218984341218, worksheet.intermediate_output_p256, 0.002); end
  def test_intermediate_output_c257; assert_equal("XI", worksheet.intermediate_output_c257); end
  def test_intermediate_output_d257; assert_equal("Industry", worksheet.intermediate_output_d257); end
  def test_intermediate_output_g257; assert_equal(:na, worksheet.intermediate_output_g257); end
  def test_intermediate_output_h257; assert_equal(:na, worksheet.intermediate_output_h257); end
  def test_intermediate_output_i257; assert_equal(:na, worksheet.intermediate_output_i257); end
  def test_intermediate_output_j257; assert_equal(:na, worksheet.intermediate_output_j257); end
  def test_intermediate_output_k257; assert_equal(:na, worksheet.intermediate_output_k257); end
  def test_intermediate_output_l257; assert_equal(:na, worksheet.intermediate_output_l257); end
  def test_intermediate_output_m257; assert_equal(:na, worksheet.intermediate_output_m257); end
  def test_intermediate_output_n257; assert_equal(:na, worksheet.intermediate_output_n257); end
  def test_intermediate_output_o257; assert_equal(:na, worksheet.intermediate_output_o257); end
  def test_intermediate_output_p257; assert_equal(:na, worksheet.intermediate_output_p257); end
  def test_intermediate_output_c258; assert_equal("IX", worksheet.intermediate_output_c258); end
  def test_intermediate_output_d258; assert_equal("Heating", worksheet.intermediate_output_d258); end
  def test_intermediate_output_g258; assert_equal(:na, worksheet.intermediate_output_g258); end
  def test_intermediate_output_h258; assert_equal(:na, worksheet.intermediate_output_h258); end
  def test_intermediate_output_i258; assert_equal(:na, worksheet.intermediate_output_i258); end
  def test_intermediate_output_j258; assert_equal(:na, worksheet.intermediate_output_j258); end
  def test_intermediate_output_k258; assert_equal(:na, worksheet.intermediate_output_k258); end
  def test_intermediate_output_l258; assert_equal(:na, worksheet.intermediate_output_l258); end
  def test_intermediate_output_m258; assert_equal(:na, worksheet.intermediate_output_m258); end
  def test_intermediate_output_n258; assert_equal(:na, worksheet.intermediate_output_n258); end
  def test_intermediate_output_o258; assert_equal(:na, worksheet.intermediate_output_o258); end
  def test_intermediate_output_p258; assert_equal(:na, worksheet.intermediate_output_p258); end
  def test_intermediate_output_c260; assert_equal("Liquid Hydrocarbon consumption", worksheet.intermediate_output_c260); end
  def test_intermediate_output_g260; assert_in_epsilon(805.8333918168025, worksheet.intermediate_output_g260, 0.002); end
  def test_intermediate_output_h260; assert_in_epsilon(902.4616036601973, worksheet.intermediate_output_h260, 0.002); end
  def test_intermediate_output_i260; assert_in_epsilon(998.4101669129203, worksheet.intermediate_output_i260, 0.002); end
  def test_intermediate_output_j260; assert_in_epsilon(1091.4896327740196, worksheet.intermediate_output_j260, 0.002); end
  def test_intermediate_output_k260; assert_in_epsilon(1181.4608086628057, worksheet.intermediate_output_k260, 0.002); end
  def test_intermediate_output_l260; assert_in_epsilon(1269.822795462795, worksheet.intermediate_output_l260, 0.002); end
  def test_intermediate_output_m260; assert_in_epsilon(1362.0689317549038, worksheet.intermediate_output_m260, 0.002); end
  def test_intermediate_output_n260; assert_in_epsilon(1584.8773279138973, worksheet.intermediate_output_n260, 0.002); end
  def test_intermediate_output_o260; assert_in_epsilon(1545.7402925115405, worksheet.intermediate_output_o260, 0.002); end
  def test_intermediate_output_p260; assert_in_epsilon(1568.4539642850577, worksheet.intermediate_output_p260, 0.002); end
  def test_intermediate_output_c261; assert_equal("V", worksheet.intermediate_output_c261); end
  def test_intermediate_output_d261; assert_equal("Share of Bioliquids to total liquid hydrocarbon consumption", worksheet.intermediate_output_d261); end
  def test_intermediate_output_g261; assert_equal(:na, worksheet.intermediate_output_g261); end
  def test_intermediate_output_h261; assert_equal(:na, worksheet.intermediate_output_h261); end
  def test_intermediate_output_i261; assert_equal(:na, worksheet.intermediate_output_i261); end
  def test_intermediate_output_j261; assert_equal(:na, worksheet.intermediate_output_j261); end
  def test_intermediate_output_k261; assert_equal(:na, worksheet.intermediate_output_k261); end
  def test_intermediate_output_l261; assert_equal(:na, worksheet.intermediate_output_l261); end
  def test_intermediate_output_m261; assert_equal(:na, worksheet.intermediate_output_m261); end
  def test_intermediate_output_n261; assert_equal(:na, worksheet.intermediate_output_n261); end
  def test_intermediate_output_o261; assert_equal(:na, worksheet.intermediate_output_o261); end
  def test_intermediate_output_p261; assert_equal(:na, worksheet.intermediate_output_p261); end
  def test_intermediate_output_c262; assert_equal("XII", worksheet.intermediate_output_c262); end
  def test_intermediate_output_d262; assert_equal("Transport", worksheet.intermediate_output_d262); end
  def test_intermediate_output_g262; assert_equal(:na, worksheet.intermediate_output_g262); end
  def test_intermediate_output_h262; assert_equal(:na, worksheet.intermediate_output_h262); end
  def test_intermediate_output_i262; assert_equal(:na, worksheet.intermediate_output_i262); end
  def test_intermediate_output_j262; assert_equal(:na, worksheet.intermediate_output_j262); end
  def test_intermediate_output_k262; assert_equal(:na, worksheet.intermediate_output_k262); end
  def test_intermediate_output_l262; assert_equal(:na, worksheet.intermediate_output_l262); end
  def test_intermediate_output_m262; assert_equal(:na, worksheet.intermediate_output_m262); end
  def test_intermediate_output_n262; assert_equal(:na, worksheet.intermediate_output_n262); end
  def test_intermediate_output_o262; assert_equal(:na, worksheet.intermediate_output_o262); end
  def test_intermediate_output_p262; assert_equal(:na, worksheet.intermediate_output_p262); end
  def test_intermediate_output_c263; assert_equal("XI", worksheet.intermediate_output_c263); end
  def test_intermediate_output_d263; assert_equal("Industry", worksheet.intermediate_output_d263); end
  def test_intermediate_output_g263; assert_equal(:na, worksheet.intermediate_output_g263); end
  def test_intermediate_output_h263; assert_equal(:na, worksheet.intermediate_output_h263); end
  def test_intermediate_output_i263; assert_equal(:na, worksheet.intermediate_output_i263); end
  def test_intermediate_output_j263; assert_equal(:na, worksheet.intermediate_output_j263); end
  def test_intermediate_output_k263; assert_equal(:na, worksheet.intermediate_output_k263); end
  def test_intermediate_output_l263; assert_equal(:na, worksheet.intermediate_output_l263); end
  def test_intermediate_output_m263; assert_equal(:na, worksheet.intermediate_output_m263); end
  def test_intermediate_output_n263; assert_equal(:na, worksheet.intermediate_output_n263); end
  def test_intermediate_output_o263; assert_equal(:na, worksheet.intermediate_output_o263); end
  def test_intermediate_output_p263; assert_equal(:na, worksheet.intermediate_output_p263); end
  def test_intermediate_output_c264; assert_equal("XV.a", worksheet.intermediate_output_c264); end
  def test_intermediate_output_d264; assert_equal(:na, worksheet.intermediate_output_d264); end
  def test_intermediate_output_g264; assert_equal(:na, worksheet.intermediate_output_g264); end
  def test_intermediate_output_h264; assert_equal(:na, worksheet.intermediate_output_h264); end
  def test_intermediate_output_i264; assert_equal(:na, worksheet.intermediate_output_i264); end
  def test_intermediate_output_j264; assert_equal(:na, worksheet.intermediate_output_j264); end
  def test_intermediate_output_k264; assert_equal(:na, worksheet.intermediate_output_k264); end
  def test_intermediate_output_l264; assert_equal(:na, worksheet.intermediate_output_l264); end
  def test_intermediate_output_m264; assert_equal(:na, worksheet.intermediate_output_m264); end
  def test_intermediate_output_n264; assert_equal(:na, worksheet.intermediate_output_n264); end
  def test_intermediate_output_o264; assert_equal(:na, worksheet.intermediate_output_o264); end
  def test_intermediate_output_p264; assert_equal(:na, worksheet.intermediate_output_p264); end
  def test_intermediate_output_c266; assert_equal("Gaseous Hydrocarbon consumption", worksheet.intermediate_output_c266); end
  def test_intermediate_output_g266; assert_in_epsilon(188.5521537764063, worksheet.intermediate_output_g266, 0.002); end
  def test_intermediate_output_h266; assert_in_epsilon(206.88087954412626, worksheet.intermediate_output_h266, 0.002); end
  def test_intermediate_output_i266; assert_in_epsilon(231.75753802276904, worksheet.intermediate_output_i266, 0.002); end
  def test_intermediate_output_j266; assert_in_epsilon(255.89588797999113, worksheet.intermediate_output_j266, 0.002); end
  def test_intermediate_output_k266; assert_in_epsilon(289.75570253857563, worksheet.intermediate_output_k266, 0.002); end
  def test_intermediate_output_l266; assert_in_epsilon(322.77362179445345, worksheet.intermediate_output_l266, 0.002); end
  def test_intermediate_output_m266; assert_in_epsilon(310.93682089270357, worksheet.intermediate_output_m266, 0.002); end
  def test_intermediate_output_n266; assert_in_epsilon(362.84884987472964, worksheet.intermediate_output_n266, 0.002); end
  def test_intermediate_output_o266; assert_in_epsilon(412.59106615573387, worksheet.intermediate_output_o266, 0.002); end
  def test_intermediate_output_p266; assert_in_epsilon(455.0221337045418, worksheet.intermediate_output_p266, 0.002); end
  def test_intermediate_output_c267; assert_equal("V", worksheet.intermediate_output_c267); end
  def test_intermediate_output_d267; assert_equal("Share of Biogas to total gaseous hydrocarbon consumption", worksheet.intermediate_output_d267); end
  def test_intermediate_output_g267; assert_equal(:na, worksheet.intermediate_output_g267); end
  def test_intermediate_output_h267; assert_equal(:na, worksheet.intermediate_output_h267); end
  def test_intermediate_output_i267; assert_equal(:na, worksheet.intermediate_output_i267); end
  def test_intermediate_output_j267; assert_equal(:na, worksheet.intermediate_output_j267); end
  def test_intermediate_output_k267; assert_equal(:na, worksheet.intermediate_output_k267); end
  def test_intermediate_output_l267; assert_equal(:na, worksheet.intermediate_output_l267); end
  def test_intermediate_output_m267; assert_equal(:na, worksheet.intermediate_output_m267); end
  def test_intermediate_output_n267; assert_equal(:na, worksheet.intermediate_output_n267); end
  def test_intermediate_output_o267; assert_equal(:na, worksheet.intermediate_output_o267); end
  def test_intermediate_output_p267; assert_equal(:na, worksheet.intermediate_output_p267); end
  def test_intermediate_output_c268; assert_equal("IX.a", worksheet.intermediate_output_c268); end
  def test_intermediate_output_d268; assert_equal(:na, worksheet.intermediate_output_d268); end
  def test_intermediate_output_g268; assert_equal(:na, worksheet.intermediate_output_g268); end
  def test_intermediate_output_h268; assert_equal(:na, worksheet.intermediate_output_h268); end
  def test_intermediate_output_i268; assert_equal(:na, worksheet.intermediate_output_i268); end
  def test_intermediate_output_j268; assert_equal(:na, worksheet.intermediate_output_j268); end
  def test_intermediate_output_k268; assert_equal(:na, worksheet.intermediate_output_k268); end
  def test_intermediate_output_l268; assert_equal(:na, worksheet.intermediate_output_l268); end
  def test_intermediate_output_m268; assert_equal(:na, worksheet.intermediate_output_m268); end
  def test_intermediate_output_n268; assert_equal(:na, worksheet.intermediate_output_n268); end
  def test_intermediate_output_o268; assert_equal(:na, worksheet.intermediate_output_o268); end
  def test_intermediate_output_p268; assert_equal(:na, worksheet.intermediate_output_p268); end
  def test_intermediate_output_c269; assert_equal("IX.c", worksheet.intermediate_output_c269); end
  def test_intermediate_output_d269; assert_equal(:na, worksheet.intermediate_output_d269); end
  def test_intermediate_output_g269; assert_equal(:na, worksheet.intermediate_output_g269); end
  def test_intermediate_output_h269; assert_equal(:na, worksheet.intermediate_output_h269); end
  def test_intermediate_output_i269; assert_equal(:na, worksheet.intermediate_output_i269); end
  def test_intermediate_output_j269; assert_equal(:na, worksheet.intermediate_output_j269); end
  def test_intermediate_output_k269; assert_equal(:na, worksheet.intermediate_output_k269); end
  def test_intermediate_output_l269; assert_equal(:na, worksheet.intermediate_output_l269); end
  def test_intermediate_output_m269; assert_equal(:na, worksheet.intermediate_output_m269); end
  def test_intermediate_output_n269; assert_equal(:na, worksheet.intermediate_output_n269); end
  def test_intermediate_output_o269; assert_equal(:na, worksheet.intermediate_output_o269); end
  def test_intermediate_output_p269; assert_equal(:na, worksheet.intermediate_output_p269); end
  def test_intermediate_output_c270; assert_equal("XI", worksheet.intermediate_output_c270); end
  def test_intermediate_output_d270; assert_equal("Industry", worksheet.intermediate_output_d270); end
  def test_intermediate_output_g270; assert_equal(:na, worksheet.intermediate_output_g270); end
  def test_intermediate_output_h270; assert_equal(:na, worksheet.intermediate_output_h270); end
  def test_intermediate_output_i270; assert_equal(:na, worksheet.intermediate_output_i270); end
  def test_intermediate_output_j270; assert_equal(:na, worksheet.intermediate_output_j270); end
  def test_intermediate_output_k270; assert_equal(:na, worksheet.intermediate_output_k270); end
  def test_intermediate_output_l270; assert_equal(:na, worksheet.intermediate_output_l270); end
  def test_intermediate_output_m270; assert_equal(:na, worksheet.intermediate_output_m270); end
  def test_intermediate_output_n270; assert_equal(:na, worksheet.intermediate_output_n270); end
  def test_intermediate_output_o270; assert_equal(:na, worksheet.intermediate_output_o270); end
  def test_intermediate_output_p270; assert_equal(:na, worksheet.intermediate_output_p270); end
  def test_intermediate_output_c271; assert_equal("Therm", worksheet.intermediate_output_c271); end
  def test_intermediate_output_d271; assert_equal(:na, worksheet.intermediate_output_d271); end
  def test_intermediate_output_g271; assert_in_delta(0.0, (worksheet.intermediate_output_g271||0), 0.002); end
  def test_intermediate_output_h271; assert_in_delta(0.0, (worksheet.intermediate_output_h271||0), 0.002); end
  def test_intermediate_output_i271; assert_in_delta(0.0, (worksheet.intermediate_output_i271||0), 0.002); end
  def test_intermediate_output_j271; assert_in_delta(0.0, (worksheet.intermediate_output_j271||0), 0.002); end
  def test_intermediate_output_k271; assert_in_delta(0.0, (worksheet.intermediate_output_k271||0), 0.002); end
  def test_intermediate_output_l271; assert_in_delta(0.0, (worksheet.intermediate_output_l271||0), 0.002); end
  def test_intermediate_output_m271; assert_in_delta(0.0, (worksheet.intermediate_output_m271||0), 0.002); end
  def test_intermediate_output_n271; assert_in_delta(0.0, (worksheet.intermediate_output_n271||0), 0.002); end
  def test_intermediate_output_o271; assert_in_delta(0.0, (worksheet.intermediate_output_o271||0), 0.002); end
  def test_intermediate_output_p271; assert_in_delta(0.0, (worksheet.intermediate_output_p271||0), 0.002); end
  def test_intermediate_output_c272; assert_equal("I.b", worksheet.intermediate_output_c272); end
  def test_intermediate_output_d272; assert_equal(:na, worksheet.intermediate_output_d272); end
  def test_intermediate_output_g272; assert_equal(:na, worksheet.intermediate_output_g272); end
  def test_intermediate_output_h272; assert_equal(:na, worksheet.intermediate_output_h272); end
  def test_intermediate_output_i272; assert_equal(:na, worksheet.intermediate_output_i272); end
  def test_intermediate_output_j272; assert_equal(:na, worksheet.intermediate_output_j272); end
  def test_intermediate_output_k272; assert_equal(:na, worksheet.intermediate_output_k272); end
  def test_intermediate_output_l272; assert_equal(:na, worksheet.intermediate_output_l272); end
  def test_intermediate_output_m272; assert_equal(:na, worksheet.intermediate_output_m272); end
  def test_intermediate_output_n272; assert_equal(:na, worksheet.intermediate_output_n272); end
  def test_intermediate_output_o272; assert_equal(:na, worksheet.intermediate_output_o272); end
  def test_intermediate_output_p272; assert_equal(:na, worksheet.intermediate_output_p272); end
  def test_intermediate_output_d274; assert_equal("Bio type", worksheet.intermediate_output_d274); end
  def test_intermediate_output_e274; assert_equal("Column1", worksheet.intermediate_output_e274); end
  def test_intermediate_output_f274; assert_equal("Column2", worksheet.intermediate_output_f274); end
  def test_intermediate_output_g274; assert_equal("0", worksheet.intermediate_output_g274); end
  def test_intermediate_output_h274; assert_equal("2010", worksheet.intermediate_output_h274); end
  def test_intermediate_output_i274; assert_equal("2015", worksheet.intermediate_output_i274); end
  def test_intermediate_output_j274; assert_equal("2020", worksheet.intermediate_output_j274); end
  def test_intermediate_output_k274; assert_equal("2025", worksheet.intermediate_output_k274); end
  def test_intermediate_output_l274; assert_equal("2030", worksheet.intermediate_output_l274); end
  def test_intermediate_output_m274; assert_equal("2035", worksheet.intermediate_output_m274); end
  def test_intermediate_output_n274; assert_equal("2040", worksheet.intermediate_output_n274); end
  def test_intermediate_output_o274; assert_equal("2045", worksheet.intermediate_output_o274); end
  def test_intermediate_output_p274; assert_equal("2050", worksheet.intermediate_output_p274); end
  def test_intermediate_output_d275; assert_equal("Solid", worksheet.intermediate_output_d275); end
  def test_intermediate_output_g275; assert_equal(:na, worksheet.intermediate_output_g275); end
  def test_intermediate_output_h275; assert_equal(:na, worksheet.intermediate_output_h275); end
  def test_intermediate_output_i275; assert_equal(:na, worksheet.intermediate_output_i275); end
  def test_intermediate_output_j275; assert_equal(:na, worksheet.intermediate_output_j275); end
  def test_intermediate_output_k275; assert_equal(:na, worksheet.intermediate_output_k275); end
  def test_intermediate_output_l275; assert_equal(:na, worksheet.intermediate_output_l275); end
  def test_intermediate_output_m275; assert_equal(:na, worksheet.intermediate_output_m275); end
  def test_intermediate_output_n275; assert_equal(:na, worksheet.intermediate_output_n275); end
  def test_intermediate_output_o275; assert_equal(:na, worksheet.intermediate_output_o275); end
  def test_intermediate_output_p275; assert_equal(:na, worksheet.intermediate_output_p275); end
  def test_intermediate_output_d276; assert_equal("Liquid", worksheet.intermediate_output_d276); end
  def test_intermediate_output_g276; assert_equal(:na, worksheet.intermediate_output_g276); end
  def test_intermediate_output_h276; assert_equal(:na, worksheet.intermediate_output_h276); end
  def test_intermediate_output_i276; assert_equal(:na, worksheet.intermediate_output_i276); end
  def test_intermediate_output_j276; assert_equal(:na, worksheet.intermediate_output_j276); end
  def test_intermediate_output_k276; assert_equal(:na, worksheet.intermediate_output_k276); end
  def test_intermediate_output_l276; assert_equal(:na, worksheet.intermediate_output_l276); end
  def test_intermediate_output_m276; assert_equal(:na, worksheet.intermediate_output_m276); end
  def test_intermediate_output_n276; assert_equal(:na, worksheet.intermediate_output_n276); end
  def test_intermediate_output_o276; assert_equal(:na, worksheet.intermediate_output_o276); end
  def test_intermediate_output_p276; assert_equal(:na, worksheet.intermediate_output_p276); end
  def test_intermediate_output_d277; assert_equal("Gas", worksheet.intermediate_output_d277); end
  def test_intermediate_output_g277; assert_equal(:na, worksheet.intermediate_output_g277); end
  def test_intermediate_output_h277; assert_equal(:na, worksheet.intermediate_output_h277); end
  def test_intermediate_output_i277; assert_equal(:na, worksheet.intermediate_output_i277); end
  def test_intermediate_output_j277; assert_equal(:na, worksheet.intermediate_output_j277); end
  def test_intermediate_output_k277; assert_equal(:na, worksheet.intermediate_output_k277); end
  def test_intermediate_output_l277; assert_equal(:na, worksheet.intermediate_output_l277); end
  def test_intermediate_output_m277; assert_equal(:na, worksheet.intermediate_output_m277); end
  def test_intermediate_output_n277; assert_equal(:na, worksheet.intermediate_output_n277); end
  def test_intermediate_output_o277; assert_equal(:na, worksheet.intermediate_output_o277); end
  def test_intermediate_output_p277; assert_equal(:na, worksheet.intermediate_output_p277); end
  def test_intermediate_output_b279; assert_equal("Electricity Generation Emissions", worksheet.intermediate_output_b279); end
  def test_intermediate_output_c282; assert_equal("Emissions from Electricity Generation, exlcuding CHP", worksheet.intermediate_output_c282); end
  def test_intermediate_output_g282; assert_in_epsilon(2006.0, worksheet.intermediate_output_g282, 0.002); end
  def test_intermediate_output_h282; assert_equal("2010", worksheet.intermediate_output_h282); end
  def test_intermediate_output_i282; assert_equal("2015", worksheet.intermediate_output_i282); end
  def test_intermediate_output_j282; assert_equal("2020", worksheet.intermediate_output_j282); end
  def test_intermediate_output_k282; assert_equal("2025", worksheet.intermediate_output_k282); end
  def test_intermediate_output_l282; assert_equal("2030", worksheet.intermediate_output_l282); end
  def test_intermediate_output_m282; assert_equal("2035", worksheet.intermediate_output_m282); end
  def test_intermediate_output_n282; assert_equal("2040", worksheet.intermediate_output_n282); end
  def test_intermediate_output_o282; assert_equal("2045", worksheet.intermediate_output_o282); end
  def test_intermediate_output_p282; assert_equal("2050", worksheet.intermediate_output_p282); end
  def test_intermediate_output_c283; assert_equal("Power Generation", worksheet.intermediate_output_c283); end
  def test_intermediate_output_g283; assert_in_epsilon(236.06370693026741, worksheet.intermediate_output_g283, 0.002); end
  def test_intermediate_output_h283; assert_in_epsilon(280.3445420454828, worksheet.intermediate_output_h283, 0.002); end
  def test_intermediate_output_i283; assert_in_epsilon(323.7885070905598, worksheet.intermediate_output_i283, 0.002); end
  def test_intermediate_output_j283; assert_in_epsilon(377.250064603735, worksheet.intermediate_output_j283, 0.002); end
  def test_intermediate_output_k283; assert_in_epsilon(442.0681392379782, worksheet.intermediate_output_k283, 0.002); end
  def test_intermediate_output_l283; assert_in_epsilon(522.922793146215, worksheet.intermediate_output_l283, 0.002); end
  def test_intermediate_output_m283; assert_in_epsilon(620.5460391100246, worksheet.intermediate_output_m283, 0.002); end
  def test_intermediate_output_n283; assert_in_epsilon(731.9140551350114, worksheet.intermediate_output_n283, 0.002); end
  def test_intermediate_output_o283; assert_in_epsilon(854.7675113292124, worksheet.intermediate_output_o283, 0.002); end
  def test_intermediate_output_p283; assert_in_epsilon(1001.7427417689859, worksheet.intermediate_output_p283, 0.002); end
  def test_intermediate_output_d284; assert_equal("CCS in Power", worksheet.intermediate_output_d284); end
  def test_intermediate_output_d285; assert_equal("Bioenergy in Gas Power", worksheet.intermediate_output_d285); end
  def test_intermediate_output_d286; assert_equal("Bioenergy in Solid BM Power", worksheet.intermediate_output_d286); end
  def test_intermediate_output_d287; assert_equal("Bioenergy in Solid HC CCS Power", worksheet.intermediate_output_d287); end
  def test_intermediate_output_d288; assert_equal("Bioenergy in Gas CCS Power", worksheet.intermediate_output_d288); end
  def test_intermediate_output_c289; assert_equal("Total Emissions from Power", worksheet.intermediate_output_c289); end
  def test_intermediate_output_g289; assert_in_epsilon(236.06370693026741, worksheet.intermediate_output_g289, 0.002); end
  def test_intermediate_output_h289; assert_in_epsilon(280.3445420454828, worksheet.intermediate_output_h289, 0.002); end
  def test_intermediate_output_i289; assert_in_epsilon(323.7885070905598, worksheet.intermediate_output_i289, 0.002); end
  def test_intermediate_output_j289; assert_in_epsilon(377.250064603735, worksheet.intermediate_output_j289, 0.002); end
  def test_intermediate_output_k289; assert_in_epsilon(442.0681392379782, worksheet.intermediate_output_k289, 0.002); end
  def test_intermediate_output_l289; assert_in_epsilon(522.922793146215, worksheet.intermediate_output_l289, 0.002); end
  def test_intermediate_output_m289; assert_in_epsilon(620.5460391100246, worksheet.intermediate_output_m289, 0.002); end
  def test_intermediate_output_n289; assert_in_epsilon(731.9140551350114, worksheet.intermediate_output_n289, 0.002); end
  def test_intermediate_output_o289; assert_in_epsilon(854.7675113292124, worksheet.intermediate_output_o289, 0.002); end
  def test_intermediate_output_p289; assert_in_epsilon(1001.7427417689859, worksheet.intermediate_output_p289, 0.002); end
  def test_intermediate_output_c291; assert_equal("Emissions reclassified", worksheet.intermediate_output_c291); end
  def test_intermediate_output_g291; assert_in_epsilon(2006.0, worksheet.intermediate_output_g291, 0.002); end
  def test_intermediate_output_h291; assert_equal("2010", worksheet.intermediate_output_h291); end
  def test_intermediate_output_i291; assert_equal("2015", worksheet.intermediate_output_i291); end
  def test_intermediate_output_j291; assert_equal("2020", worksheet.intermediate_output_j291); end
  def test_intermediate_output_k291; assert_equal("2025", worksheet.intermediate_output_k291); end
  def test_intermediate_output_l291; assert_equal("2030", worksheet.intermediate_output_l291); end
  def test_intermediate_output_m291; assert_equal("2035", worksheet.intermediate_output_m291); end
  def test_intermediate_output_n291; assert_equal("2040", worksheet.intermediate_output_n291); end
  def test_intermediate_output_o291; assert_equal("2045", worksheet.intermediate_output_o291); end
  def test_intermediate_output_p291; assert_equal("2050", worksheet.intermediate_output_p291); end
  def test_intermediate_output_c292; assert_in_delta(1.0, worksheet.intermediate_output_c292, 0.002); end
  def test_intermediate_output_d292; assert_equal("Fuel Combustion", worksheet.intermediate_output_d292); end
  def test_intermediate_output_g292; assert_in_epsilon(236.06370693026741, worksheet.intermediate_output_g292, 0.002); end
  def test_intermediate_output_h292; assert_in_epsilon(280.3445420454828, worksheet.intermediate_output_h292, 0.002); end
  def test_intermediate_output_i292; assert_in_epsilon(323.7885070905598, worksheet.intermediate_output_i292, 0.002); end
  def test_intermediate_output_j292; assert_in_epsilon(377.250064603735, worksheet.intermediate_output_j292, 0.002); end
  def test_intermediate_output_k292; assert_in_epsilon(442.0681392379782, worksheet.intermediate_output_k292, 0.002); end
  def test_intermediate_output_l292; assert_in_epsilon(522.922793146215, worksheet.intermediate_output_l292, 0.002); end
  def test_intermediate_output_m292; assert_in_epsilon(620.5460391100246, worksheet.intermediate_output_m292, 0.002); end
  def test_intermediate_output_n292; assert_in_epsilon(731.9140551350114, worksheet.intermediate_output_n292, 0.002); end
  def test_intermediate_output_o292; assert_in_epsilon(854.7675113292124, worksheet.intermediate_output_o292, 0.002); end
  def test_intermediate_output_p292; assert_in_epsilon(1001.7427417689859, worksheet.intermediate_output_p292, 0.002); end
  def test_intermediate_output_c293; assert_equal("X2", worksheet.intermediate_output_c293); end
  def test_intermediate_output_d293; assert_equal("Bioenergy credit", worksheet.intermediate_output_d293); end
  def test_intermediate_output_g293; assert_in_delta(0.0, (worksheet.intermediate_output_g293||0), 0.002); end
  def test_intermediate_output_h293; assert_in_delta(0.0, (worksheet.intermediate_output_h293||0), 0.002); end
  def test_intermediate_output_i293; assert_in_delta(0.0, (worksheet.intermediate_output_i293||0), 0.002); end
  def test_intermediate_output_j293; assert_in_delta(0.0, (worksheet.intermediate_output_j293||0), 0.002); end
  def test_intermediate_output_k293; assert_in_delta(0.0, (worksheet.intermediate_output_k293||0), 0.002); end
  def test_intermediate_output_l293; assert_in_delta(0.0, (worksheet.intermediate_output_l293||0), 0.002); end
  def test_intermediate_output_m293; assert_in_delta(0.0, (worksheet.intermediate_output_m293||0), 0.002); end
  def test_intermediate_output_n293; assert_in_delta(0.0, (worksheet.intermediate_output_n293||0), 0.002); end
  def test_intermediate_output_o293; assert_in_delta(0.0, (worksheet.intermediate_output_o293||0), 0.002); end
  def test_intermediate_output_p293; assert_in_delta(0.0, (worksheet.intermediate_output_p293||0), 0.002); end
  def test_intermediate_output_c294; assert_equal("X3", worksheet.intermediate_output_c294); end
  def test_intermediate_output_d294; assert_equal("Carbon capture", worksheet.intermediate_output_d294); end
  def test_intermediate_output_g294; assert_in_delta(0.0, (worksheet.intermediate_output_g294||0), 0.002); end
  def test_intermediate_output_h294; assert_in_delta(0.0, (worksheet.intermediate_output_h294||0), 0.002); end
  def test_intermediate_output_i294; assert_in_delta(0.0, (worksheet.intermediate_output_i294||0), 0.002); end
  def test_intermediate_output_j294; assert_in_delta(0.0, (worksheet.intermediate_output_j294||0), 0.002); end
  def test_intermediate_output_k294; assert_in_delta(0.0, (worksheet.intermediate_output_k294||0), 0.002); end
  def test_intermediate_output_l294; assert_in_delta(0.0, (worksheet.intermediate_output_l294||0), 0.002); end
  def test_intermediate_output_m294; assert_in_delta(0.0, (worksheet.intermediate_output_m294||0), 0.002); end
  def test_intermediate_output_n294; assert_in_delta(0.0, (worksheet.intermediate_output_n294||0), 0.002); end
  def test_intermediate_output_o294; assert_in_delta(0.0, (worksheet.intermediate_output_o294||0), 0.002); end
  def test_intermediate_output_p294; assert_in_delta(0.0, (worksheet.intermediate_output_p294||0), 0.002); end
  def test_intermediate_output_d295; assert_equal("Total", worksheet.intermediate_output_d295); end
  def test_intermediate_output_g295; assert_in_epsilon(236.06370693026741, worksheet.intermediate_output_g295, 0.002); end
  def test_intermediate_output_h295; assert_in_epsilon(280.3445420454828, worksheet.intermediate_output_h295, 0.002); end
  def test_intermediate_output_i295; assert_in_epsilon(323.7885070905598, worksheet.intermediate_output_i295, 0.002); end
  def test_intermediate_output_j295; assert_in_epsilon(377.250064603735, worksheet.intermediate_output_j295, 0.002); end
  def test_intermediate_output_k295; assert_in_epsilon(442.0681392379782, worksheet.intermediate_output_k295, 0.002); end
  def test_intermediate_output_l295; assert_in_epsilon(522.922793146215, worksheet.intermediate_output_l295, 0.002); end
  def test_intermediate_output_m295; assert_in_epsilon(620.5460391100246, worksheet.intermediate_output_m295, 0.002); end
  def test_intermediate_output_n295; assert_in_epsilon(731.9140551350114, worksheet.intermediate_output_n295, 0.002); end
  def test_intermediate_output_o295; assert_in_epsilon(854.7675113292124, worksheet.intermediate_output_o295, 0.002); end
  def test_intermediate_output_p295; assert_in_epsilon(1001.7427417689859, worksheet.intermediate_output_p295, 0.002); end
  def test_intermediate_output_c297; assert_equal("Emissions intensity", worksheet.intermediate_output_c297); end
  def test_intermediate_output_e297; assert_equal("MtCO2e/TWh", worksheet.intermediate_output_e297); end
  def test_intermediate_output_g297; assert_in_delta(0.26468774668394796, worksheet.intermediate_output_g297, 0.002); end
  def test_intermediate_output_h297; assert_in_delta(0.2648941913409708, worksheet.intermediate_output_h297, 0.002); end
  def test_intermediate_output_i297; assert_in_delta(0.2595410091176297, worksheet.intermediate_output_i297, 0.002); end
  def test_intermediate_output_j297; assert_in_delta(0.25688880326297675, worksheet.intermediate_output_j297, 0.002); end
  def test_intermediate_output_k297; assert_in_delta(0.25564502671857536, worksheet.intermediate_output_k297, 0.002); end
  def test_intermediate_output_l297; assert_in_delta(0.25468438069752475, worksheet.intermediate_output_l297, 0.002); end
  def test_intermediate_output_m297; assert_in_delta(0.2528755225331316, worksheet.intermediate_output_m297, 0.002); end
  def test_intermediate_output_n297; assert_in_delta(0.25050712300033673, worksheet.intermediate_output_n297, 0.002); end
  def test_intermediate_output_o297; assert_in_delta(0.25215619273514356, worksheet.intermediate_output_o297, 0.002); end
  def test_intermediate_output_p297; assert_in_delta(0.25579445972263504, worksheet.intermediate_output_p297, 0.002); end
  def test_intermediate_output_e298; assert_equal("gCO2e/KWh", worksheet.intermediate_output_e298); end
  def test_intermediate_output_g298; assert_in_epsilon(264.687746683948, worksheet.intermediate_output_g298, 0.002); end
  def test_intermediate_output_h298; assert_in_epsilon(264.8941913409708, worksheet.intermediate_output_h298, 0.002); end
  def test_intermediate_output_i298; assert_in_epsilon(259.5410091176297, worksheet.intermediate_output_i298, 0.002); end
  def test_intermediate_output_j298; assert_in_epsilon(256.88880326297675, worksheet.intermediate_output_j298, 0.002); end
  def test_intermediate_output_k298; assert_in_epsilon(255.64502671857537, worksheet.intermediate_output_k298, 0.002); end
  def test_intermediate_output_l298; assert_in_epsilon(254.68438069752474, worksheet.intermediate_output_l298, 0.002); end
  def test_intermediate_output_m298; assert_in_epsilon(252.8755225331316, worksheet.intermediate_output_m298, 0.002); end
  def test_intermediate_output_n298; assert_in_epsilon(250.50712300033672, worksheet.intermediate_output_n298, 0.002); end
  def test_intermediate_output_o298; assert_in_epsilon(252.15619273514355, worksheet.intermediate_output_o298, 0.002); end
  def test_intermediate_output_p298; assert_in_epsilon(255.79445972263503, worksheet.intermediate_output_p298, 0.002); end
  def test_intermediate_output_c300; assert_equal("Note: Emissions from CHP are excluded, while emissions from district heating are included.", worksheet.intermediate_output_c300); end
  def test_intermediate_output_b303; assert_equal("Primary supply, format for web-based interface", worksheet.intermediate_output_b303); end
  def test_intermediate_output_c305; assert_equal("N.01", worksheet.intermediate_output_c305); end
  def test_intermediate_output_d305; assert_equal("Nuclear fission", worksheet.intermediate_output_d305); end
  def test_intermediate_output_e305; assert_in_delta(0.0, (worksheet.intermediate_output_e305||0), 0.002); end
  def test_intermediate_output_f305; assert_in_delta(0.0, (worksheet.intermediate_output_f305||0), 0.002); end
  def test_intermediate_output_g305; assert_in_epsilon(110.05713000000002, worksheet.intermediate_output_g305, 0.002); end
  def test_intermediate_output_h305; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_h305, 0.002); end
  def test_intermediate_output_i305; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_i305, 0.002); end
  def test_intermediate_output_j305; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_j305, 0.002); end
  def test_intermediate_output_k305; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_k305, 0.002); end
  def test_intermediate_output_l305; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_l305, 0.002); end
  def test_intermediate_output_m305; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_m305, 0.002); end
  def test_intermediate_output_n305; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_n305, 0.002); end
  def test_intermediate_output_o305; assert_in_epsilon(143.78431500000002, worksheet.intermediate_output_o305, 0.002); end
  def test_intermediate_output_p305; assert_in_delta(0.0, (worksheet.intermediate_output_p305||0), 0.002); end
  def test_intermediate_output_c306; assert_equal("R.01", worksheet.intermediate_output_c306); end
  def test_intermediate_output_d306; assert_equal("Solar", worksheet.intermediate_output_d306); end
  def test_intermediate_output_e306; assert_in_delta(0.0, (worksheet.intermediate_output_e306||0), 0.002); end
  def test_intermediate_output_f306; assert_in_delta(0.0, (worksheet.intermediate_output_f306||0), 0.002); end
  def test_intermediate_output_g306; assert_in_delta(0.0, (worksheet.intermediate_output_g306||0), 0.002); end
  def test_intermediate_output_h306; assert_in_delta(0.006711326312769469, worksheet.intermediate_output_h306, 0.002); end
  def test_intermediate_output_i306; assert_in_epsilon(12.646527649509972, worksheet.intermediate_output_i306, 0.002); end
  def test_intermediate_output_j306; assert_in_epsilon(15.962035311349528, worksheet.intermediate_output_j306, 0.002); end
  def test_intermediate_output_k306; assert_in_epsilon(15.96432877129077, worksheet.intermediate_output_k306, 0.002); end
  def test_intermediate_output_l306; assert_in_epsilon(15.967094888430221, worksheet.intermediate_output_l306, 0.002); end
  def test_intermediate_output_m306; assert_in_epsilon(15.970585665971518, worksheet.intermediate_output_m306, 0.002); end
  def test_intermediate_output_n306; assert_in_epsilon(15.974494321751466, worksheet.intermediate_output_n306, 0.002); end
  def test_intermediate_output_o306; assert_in_epsilon(15.97867018614877, worksheet.intermediate_output_o306, 0.002); end
  def test_intermediate_output_p306; assert_in_epsilon(15.983198109504743, worksheet.intermediate_output_p306, 0.002); end
  def test_intermediate_output_c307; assert_equal("R.02", worksheet.intermediate_output_c307); end
  def test_intermediate_output_d307; assert_equal("Wind", worksheet.intermediate_output_d307); end
  def test_intermediate_output_e307; assert_in_delta(0.0, (worksheet.intermediate_output_e307||0), 0.002); end
  def test_intermediate_output_f307; assert_in_delta(0.0, (worksheet.intermediate_output_f307||0), 0.002); end
  def test_intermediate_output_g307; assert_in_delta(0.02592772416, worksheet.intermediate_output_g307, 0.002); end
  def test_intermediate_output_h307; assert_in_delta(0.06859359936, worksheet.intermediate_output_h307, 0.002); end
  def test_intermediate_output_i307; assert_in_epsilon(11.57035420224, worksheet.intermediate_output_i307, 0.002); end
  def test_intermediate_output_j307; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_j307, 0.002); end
  def test_intermediate_output_k307; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_k307, 0.002); end
  def test_intermediate_output_l307; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_l307, 0.002); end
  def test_intermediate_output_m307; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_m307, 0.002); end
  def test_intermediate_output_n307; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_n307, 0.002); end
  def test_intermediate_output_o307; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_o307, 0.002); end
  def test_intermediate_output_p307; assert_in_epsilon(22.589636970240004, worksheet.intermediate_output_p307, 0.002); end
  def test_intermediate_output_c308; assert_equal(:ref, worksheet.intermediate_output_c308); end
  def test_intermediate_output_d308; assert_equal(:ref, worksheet.intermediate_output_d308); end
  def test_intermediate_output_e308; assert_equal(:ref, worksheet.intermediate_output_e308); end
  def test_intermediate_output_f308; assert_equal(:ref, worksheet.intermediate_output_f308); end
  def test_intermediate_output_g308; assert_equal(:ref, worksheet.intermediate_output_g308); end
  def test_intermediate_output_h308; assert_equal(:ref, worksheet.intermediate_output_h308); end
  def test_intermediate_output_i308; assert_equal(:ref, worksheet.intermediate_output_i308); end
  def test_intermediate_output_j308; assert_equal(:ref, worksheet.intermediate_output_j308); end
  def test_intermediate_output_k308; assert_equal(:ref, worksheet.intermediate_output_k308); end
  def test_intermediate_output_l308; assert_equal(:ref, worksheet.intermediate_output_l308); end
  def test_intermediate_output_m308; assert_equal(:ref, worksheet.intermediate_output_m308); end
  def test_intermediate_output_n308; assert_equal(:ref, worksheet.intermediate_output_n308); end
  def test_intermediate_output_o308; assert_equal(:ref, worksheet.intermediate_output_o308); end
  def test_intermediate_output_p308; assert_equal(:ref, worksheet.intermediate_output_p308); end
  def test_intermediate_output_c309; assert_equal(:ref, worksheet.intermediate_output_c309); end
  def test_intermediate_output_d309; assert_equal(:ref, worksheet.intermediate_output_d309); end
  def test_intermediate_output_e309; assert_equal(:ref, worksheet.intermediate_output_e309); end
  def test_intermediate_output_f309; assert_equal(:ref, worksheet.intermediate_output_f309); end
  def test_intermediate_output_g309; assert_equal(:ref, worksheet.intermediate_output_g309); end
  def test_intermediate_output_h309; assert_equal(:ref, worksheet.intermediate_output_h309); end
  def test_intermediate_output_i309; assert_equal(:ref, worksheet.intermediate_output_i309); end
  def test_intermediate_output_j309; assert_equal(:ref, worksheet.intermediate_output_j309); end
  def test_intermediate_output_k309; assert_equal(:ref, worksheet.intermediate_output_k309); end
  def test_intermediate_output_l309; assert_equal(:ref, worksheet.intermediate_output_l309); end
  def test_intermediate_output_m309; assert_equal(:ref, worksheet.intermediate_output_m309); end
  def test_intermediate_output_n309; assert_equal(:ref, worksheet.intermediate_output_n309); end
  def test_intermediate_output_o309; assert_equal(:ref, worksheet.intermediate_output_o309); end
  def test_intermediate_output_p309; assert_equal(:ref, worksheet.intermediate_output_p309); end
  def test_intermediate_output_c310; assert_equal(:ref, worksheet.intermediate_output_c310); end
  def test_intermediate_output_d310; assert_equal(:ref, worksheet.intermediate_output_d310); end
  def test_intermediate_output_e310; assert_equal(:ref, worksheet.intermediate_output_e310); end
  def test_intermediate_output_f310; assert_equal(:ref, worksheet.intermediate_output_f310); end
  def test_intermediate_output_g310; assert_equal(:ref, worksheet.intermediate_output_g310); end
  def test_intermediate_output_h310; assert_equal(:ref, worksheet.intermediate_output_h310); end
  def test_intermediate_output_i310; assert_equal(:ref, worksheet.intermediate_output_i310); end
  def test_intermediate_output_j310; assert_equal(:ref, worksheet.intermediate_output_j310); end
  def test_intermediate_output_k310; assert_equal(:ref, worksheet.intermediate_output_k310); end
  def test_intermediate_output_l310; assert_equal(:ref, worksheet.intermediate_output_l310); end
  def test_intermediate_output_m310; assert_equal(:ref, worksheet.intermediate_output_m310); end
  def test_intermediate_output_n310; assert_equal(:ref, worksheet.intermediate_output_n310); end
  def test_intermediate_output_o310; assert_equal(:ref, worksheet.intermediate_output_o310); end
  def test_intermediate_output_p310; assert_equal(:ref, worksheet.intermediate_output_p310); end
  def test_intermediate_output_c311; assert_equal("R.06", worksheet.intermediate_output_c311); end
  def test_intermediate_output_d311; assert_equal("Hydro", worksheet.intermediate_output_d311); end
  def test_intermediate_output_e311; assert_in_delta(0.0, (worksheet.intermediate_output_e311||0), 0.002); end
  def test_intermediate_output_f311; assert_in_delta(0.0, (worksheet.intermediate_output_f311||0), 0.002); end
  def test_intermediate_output_g311; assert_in_epsilon(5.285898, worksheet.intermediate_output_g311, 0.002); end
  def test_intermediate_output_h311; assert_in_epsilon(5.285898, worksheet.intermediate_output_h311, 0.002); end
  def test_intermediate_output_i311; assert_in_epsilon(5.317455600000001, worksheet.intermediate_output_i311, 0.002); end
  def test_intermediate_output_j311; assert_in_epsilon(5.396349600000001, worksheet.intermediate_output_j311, 0.002); end
  def test_intermediate_output_k311; assert_in_epsilon(4.8440916, worksheet.intermediate_output_k311, 0.002); end
  def test_intermediate_output_l311; assert_in_epsilon(4.8440916, worksheet.intermediate_output_l311, 0.002); end
  def test_intermediate_output_m311; assert_in_epsilon(4.8440916, worksheet.intermediate_output_m311, 0.002); end
  def test_intermediate_output_n311; assert_in_epsilon(4.8440916, worksheet.intermediate_output_n311, 0.002); end
  def test_intermediate_output_o311; assert_in_epsilon(4.8440916, worksheet.intermediate_output_o311, 0.002); end
  def test_intermediate_output_p311; assert_in_epsilon(4.8440916, worksheet.intermediate_output_p311, 0.002); end
  def test_intermediate_output_c312; assert_equal("Y.02", worksheet.intermediate_output_c312); end
  def test_intermediate_output_d312; assert_equal("Electricity oversupply (imports)", worksheet.intermediate_output_d312); end
  def test_intermediate_output_e312; assert_in_delta(0.0, (worksheet.intermediate_output_e312||0), 0.002); end
  def test_intermediate_output_f312; assert_in_delta(0.0, (worksheet.intermediate_output_f312||0), 0.002); end
  def test_intermediate_output_g312; assert_in_delta(0.0, (worksheet.intermediate_output_g312||0), 0.002); end
  def test_intermediate_output_h312; assert_in_delta(0.0, (worksheet.intermediate_output_h312||0), 0.002); end
  def test_intermediate_output_i312; assert_in_delta(0.0, (worksheet.intermediate_output_i312||0), 0.002); end
  def test_intermediate_output_j312; assert_in_delta(0.0, (worksheet.intermediate_output_j312||0), 0.002); end
  def test_intermediate_output_k312; assert_in_delta(0.0, (worksheet.intermediate_output_k312||0), 0.002); end
  def test_intermediate_output_l312; assert_in_delta(0.0, (worksheet.intermediate_output_l312||0), 0.002); end
  def test_intermediate_output_m312; assert_in_delta(0.0, (worksheet.intermediate_output_m312||0), 0.002); end
  def test_intermediate_output_n312; assert_in_delta(0.0, (worksheet.intermediate_output_n312||0), 0.002); end
  def test_intermediate_output_o312; assert_in_delta(0.0, (worksheet.intermediate_output_o312||0), 0.002); end
  def test_intermediate_output_p312; assert_in_delta(0.0, (worksheet.intermediate_output_p312||0), 0.002); end
  def test_intermediate_output_c313; assert_equal("R.07", worksheet.intermediate_output_c313); end
  def test_intermediate_output_d313; assert_equal("Environmental heat", worksheet.intermediate_output_d313); end
  def test_intermediate_output_e313; assert_in_delta(0.0, (worksheet.intermediate_output_e313||0), 0.002); end
  def test_intermediate_output_f313; assert_in_delta(0.0, (worksheet.intermediate_output_f313||0), 0.002); end
  def test_intermediate_output_g313; assert_in_delta(0.0, (worksheet.intermediate_output_g313||0), 0.002); end
  def test_intermediate_output_h313; assert_in_delta(0.0, (worksheet.intermediate_output_h313||0), 0.002); end
  def test_intermediate_output_i313; assert_in_delta(0.0, (worksheet.intermediate_output_i313||0), 0.002); end
  def test_intermediate_output_j313; assert_in_delta(0.0, (worksheet.intermediate_output_j313||0), 0.002); end
  def test_intermediate_output_k313; assert_in_delta(0.0, (worksheet.intermediate_output_k313||0), 0.002); end
  def test_intermediate_output_l313; assert_in_delta(0.0, (worksheet.intermediate_output_l313||0), 0.002); end
  def test_intermediate_output_m313; assert_in_delta(0.0, (worksheet.intermediate_output_m313||0), 0.002); end
  def test_intermediate_output_n313; assert_in_delta(0.0, (worksheet.intermediate_output_n313||0), 0.002); end
  def test_intermediate_output_o313; assert_in_delta(0.0, (worksheet.intermediate_output_o313||0), 0.002); end
  def test_intermediate_output_p313; assert_in_delta(0.0, (worksheet.intermediate_output_p313||0), 0.002); end
  def test_intermediate_output_d314; assert_equal("Bioenergy", worksheet.intermediate_output_d314); end
  def test_intermediate_output_e314; assert_in_delta(0.0, (worksheet.intermediate_output_e314||0), 0.002); end
  def test_intermediate_output_f314; assert_in_delta(0.0, (worksheet.intermediate_output_f314||0), 0.002); end
  def test_intermediate_output_g314; assert_in_delta(0.0, (worksheet.intermediate_output_g314||0), 0.002); end
  def test_intermediate_output_h314; assert_in_delta(0.0, (worksheet.intermediate_output_h314||0), 0.002); end
  def test_intermediate_output_i314; assert_in_delta(0.0, (worksheet.intermediate_output_i314||0), 0.002); end
  def test_intermediate_output_j314; assert_in_delta(0.0, (worksheet.intermediate_output_j314||0), 0.002); end
  def test_intermediate_output_k314; assert_in_delta(0.0, (worksheet.intermediate_output_k314||0), 0.002); end
  def test_intermediate_output_l314; assert_in_delta(0.0, (worksheet.intermediate_output_l314||0), 0.002); end
  def test_intermediate_output_m314; assert_in_delta(0.0, (worksheet.intermediate_output_m314||0), 0.002); end
  def test_intermediate_output_n314; assert_in_delta(0.0, (worksheet.intermediate_output_n314||0), 0.002); end
  def test_intermediate_output_o314; assert_in_delta(0.0, (worksheet.intermediate_output_o314||0), 0.002); end
  def test_intermediate_output_p314; assert_in_delta(0.0, (worksheet.intermediate_output_p314||0), 0.002); end
  def test_intermediate_output_d315; assert_equal("Coal", worksheet.intermediate_output_d315); end
  def test_intermediate_output_e315; assert_in_delta(0.0, (worksheet.intermediate_output_e315||0), 0.002); end
  def test_intermediate_output_f315; assert_in_delta(0.0, (worksheet.intermediate_output_f315||0), 0.002); end
  def test_intermediate_output_g315; assert_in_epsilon(3834.6998815001843, worksheet.intermediate_output_g315, 0.002); end
  def test_intermediate_output_h315; assert_in_epsilon(4387.614989564262, worksheet.intermediate_output_h315, 0.002); end
  def test_intermediate_output_i315; assert_in_epsilon(4996.3751818790915, worksheet.intermediate_output_i315, 0.002); end
  def test_intermediate_output_j315; assert_in_epsilon(5714.815533887691, worksheet.intermediate_output_j315, 0.002); end
  def test_intermediate_output_k315; assert_in_epsilon(6633.232367796969, worksheet.intermediate_output_k315, 0.002); end
  def test_intermediate_output_l315; assert_in_epsilon(7721.450173951748, worksheet.intermediate_output_l315, 0.002); end
  def test_intermediate_output_m315; assert_in_epsilon(9105.093942728541, worksheet.intermediate_output_m315, 0.002); end
  def test_intermediate_output_n315; assert_in_epsilon(10630.791857661889, worksheet.intermediate_output_n315, 0.002); end
  def test_intermediate_output_o315; assert_in_epsilon(12335.462173556538, worksheet.intermediate_output_o315, 0.002); end
  def test_intermediate_output_p315; assert_in_epsilon(14269.992391048163, worksheet.intermediate_output_p315, 0.002); end
  def test_intermediate_output_d316; assert_equal("Oil", worksheet.intermediate_output_d316); end
  def test_intermediate_output_e316; assert_in_delta(0.0, (worksheet.intermediate_output_e316||0), 0.002); end
  def test_intermediate_output_f316; assert_in_delta(0.0, (worksheet.intermediate_output_f316||0), 0.002); end
  def test_intermediate_output_g316; assert_in_epsilon(553.8553914230257, worksheet.intermediate_output_g316, 0.002); end
  def test_intermediate_output_h316; assert_in_epsilon(649.6521092479593, worksheet.intermediate_output_h316, 0.002); end
  def test_intermediate_output_i316; assert_in_epsilon(745.6199008308481, worksheet.intermediate_output_i316, 0.002); end
  def test_intermediate_output_j316; assert_in_epsilon(838.6799743554361, worksheet.intermediate_output_j316, 0.002); end
  def test_intermediate_output_k316; assert_in_epsilon(928.7166761345673, worksheet.intermediate_output_k316, 0.002); end
  def test_intermediate_output_l316; assert_in_epsilon(1016.9935964965312, worksheet.intermediate_output_l316, 0.002); end
  def test_intermediate_output_m316; assert_in_epsilon(1162.557114168934, worksheet.intermediate_output_m316, 0.002); end
  def test_intermediate_output_n316; assert_in_epsilon(1385.3655103279275, worksheet.intermediate_output_n316, 0.002); end
  def test_intermediate_output_o316; assert_in_epsilon(1346.2284749255707, worksheet.intermediate_output_o316, 0.002); end
  def test_intermediate_output_p316; assert_in_epsilon(1368.942146699088, worksheet.intermediate_output_p316, 0.002); end
  def test_intermediate_output_d317; assert_equal("Natural gas", worksheet.intermediate_output_d317); end
  def test_intermediate_output_e317; assert_in_delta(0.0, (worksheet.intermediate_output_e317||0), 0.002); end
  def test_intermediate_output_f317; assert_in_delta(0.0, (worksheet.intermediate_output_f317||0), 0.002); end
  def test_intermediate_output_g317; assert_in_epsilon(188.5521537764063, worksheet.intermediate_output_g317, 0.002); end
  def test_intermediate_output_h317; assert_in_epsilon(216.5730074441263, worksheet.intermediate_output_h317, 0.002); end
  def test_intermediate_output_i317; assert_in_epsilon(247.44244514991374, worksheet.intermediate_output_i317, 0.002); end
  def test_intermediate_output_j317; assert_in_epsilon(272.4755684466806, worksheet.intermediate_output_j317, 0.002); end
  def test_intermediate_output_k317; assert_in_epsilon(307.45615647262196, worksheet.intermediate_output_k317, 0.002); end
  def test_intermediate_output_l317; assert_in_epsilon(341.5547295731642, worksheet.intermediate_output_l317, 0.002); end
  def test_intermediate_output_m317; assert_in_epsilon(330.77347634740937, worksheet.intermediate_output_m317, 0.002); end
  def test_intermediate_output_n317; assert_in_epsilon(383.4021657132359, worksheet.intermediate_output_n317, 0.002); end
  def test_intermediate_output_o317; assert_in_epsilon(424.3261338122037, worksheet.intermediate_output_o317, 0.002); end
  def test_intermediate_output_p317; assert_in_epsilon(462.4199561633733, worksheet.intermediate_output_p317, 0.002); end
  def test_intermediate_output_d318; assert_equal("Total Primary Supply", worksheet.intermediate_output_d318); end
  def test_intermediate_output_e318; assert_in_delta(0.0, (worksheet.intermediate_output_e318||0), 0.002); end
  def test_intermediate_output_f318; assert_in_delta(0.0, (worksheet.intermediate_output_f318||0), 0.002); end
  def test_intermediate_output_g318; assert_in_epsilon(4673.338170423776, worksheet.intermediate_output_g318, 0.002); end
  def test_intermediate_output_h318; assert_in_epsilon(5383.847412182021, worksheet.intermediate_output_h318, 0.002); end
  def test_intermediate_output_i318; assert_in_epsilon(6143.617968311603, worksheet.intermediate_output_i318, 0.002); end
  def test_intermediate_output_j318; assert_in_epsilon(6994.565201571398, worksheet.intermediate_output_j318, 0.002); end
  def test_intermediate_output_k318; assert_in_epsilon(8037.449360745689, worksheet.intermediate_output_k318, 0.002); end
  def test_intermediate_output_l318; assert_in_epsilon(9248.045426480114, worksheet.intermediate_output_l318, 0.002); end
  def test_intermediate_output_m318; assert_in_epsilon(10766.474950481095, worksheet.intermediate_output_m318, 0.002); end
  def test_intermediate_output_n318; assert_in_epsilon(12567.613859595043, worksheet.intermediate_output_n318, 0.002); end
  def test_intermediate_output_o318; assert_in_epsilon(14274.0752840507, worksheet.intermediate_output_o318, 0.002); end
  def test_intermediate_output_p318; assert_in_epsilon(16125.63320859037, worksheet.intermediate_output_p318, 0.002); end
  def test_intermediate_output_d319; assert_equal("Imported energy", worksheet.intermediate_output_d319); end
  def test_intermediate_output_f319; assert_in_delta(0.0, (worksheet.intermediate_output_f319||0), 0.002); end
  def test_intermediate_output_g319; assert_in_epsilon(791.2496751994321, worksheet.intermediate_output_g319, 0.002); end
  def test_intermediate_output_h319; assert_in_epsilon(965.2094316920856, worksheet.intermediate_output_h319, 0.002); end
  def test_intermediate_output_i319; assert_in_epsilon(1110.3927089807619, worksheet.intermediate_output_i319, 0.002); end
  def test_intermediate_output_j319; assert_in_epsilon(1239.3190636856368, worksheet.intermediate_output_j319, 0.002); end
  def test_intermediate_output_k319; assert_in_epsilon(1379.9571476071894, worksheet.intermediate_output_k319, 0.002); end
  def test_intermediate_output_l319; assert_in_epsilon(1502.3326410696955, worksheet.intermediate_output_l319, 0.002); end
  def test_intermediate_output_m319; assert_in_epsilon(1637.1149055163435, worksheet.intermediate_output_m319, 0.002); end
  def test_intermediate_output_n319; assert_in_epsilon(1912.5519910411635, worksheet.intermediate_output_n319, 0.002); end
  def test_intermediate_output_o319; assert_in_epsilon(1914.3389237377744, worksheet.intermediate_output_o319, 0.002); end
  def test_intermediate_output_p319; assert_in_epsilon(1831.3621028624611, worksheet.intermediate_output_p319, 0.002); end
  def test_intermediate_output_d321; assert_equal("Primary demand", worksheet.intermediate_output_d321); end
  def test_intermediate_output_f321; assert_in_delta(0.0, (worksheet.intermediate_output_f321||0), 0.002); end
  def test_intermediate_output_g321; assert_in_epsilon(4258.874472381894, worksheet.intermediate_output_g321, 0.002); end
  def test_intermediate_output_h321; assert_in_epsilon(4980.766956553645, worksheet.intermediate_output_h321, 0.002); end
  def test_intermediate_output_i321; assert_in_epsilon(5748.261744895644, worksheet.intermediate_output_i321, 0.002); end
  def test_intermediate_output_j321; assert_in_epsilon(6618.32908769354, worksheet.intermediate_output_j321, 0.002); end
  def test_intermediate_output_k321; assert_in_epsilon(7674.184340782227, worksheet.intermediate_output_k321, 0.002); end
  def test_intermediate_output_l321; assert_in_epsilon(8893.180023943703, worksheet.intermediate_output_l321, 0.002); end
  def test_intermediate_output_m321; assert_in_epsilon(10438.0222371304, worksheet.intermediate_output_m321, 0.002); end
  def test_intermediate_output_n321; assert_in_epsilon(12259.988233801987, worksheet.intermediate_output_n321, 0.002); end
  def test_intermediate_output_o321; assert_in_epsilon(13973.197393858574, worksheet.intermediate_output_o321, 0.002); end
  def test_intermediate_output_p321; assert_in_epsilon(15848.48742695164, worksheet.intermediate_output_p321, 0.002); end
  def test_intermediate_output_b324; assert_equal("Electricity, format for web-based interface", worksheet.intermediate_output_b324); end
  def test_intermediate_output_c326; assert_equal("V.01", worksheet.intermediate_output_c326); end
  def test_intermediate_output_g326; assert_in_epsilon(2006.0, worksheet.intermediate_output_g326, 0.002); end
  def test_intermediate_output_h326; assert_in_epsilon(2010.0, worksheet.intermediate_output_h326, 0.002); end
  def test_intermediate_output_i326; assert_in_epsilon(2015.0, worksheet.intermediate_output_i326, 0.002); end
  def test_intermediate_output_j326; assert_in_epsilon(2020.0, worksheet.intermediate_output_j326, 0.002); end
  def test_intermediate_output_k326; assert_in_epsilon(2025.0, worksheet.intermediate_output_k326, 0.002); end
  def test_intermediate_output_l326; assert_in_epsilon(2030.0, worksheet.intermediate_output_l326, 0.002); end
  def test_intermediate_output_m326; assert_in_epsilon(2035.0, worksheet.intermediate_output_m326, 0.002); end
  def test_intermediate_output_n326; assert_in_epsilon(2040.0, worksheet.intermediate_output_n326, 0.002); end
  def test_intermediate_output_o326; assert_in_epsilon(2045.0, worksheet.intermediate_output_o326, 0.002); end
  def test_intermediate_output_p326; assert_in_epsilon(2050.0, worksheet.intermediate_output_p326, 0.002); end
  def test_intermediate_output_q326; assert_equal("PJ", worksheet.intermediate_output_q326); end
  def test_intermediate_output_c328; assert_equal("VIII.a", worksheet.intermediate_output_c328); end
  def test_intermediate_output_d328; assert_equal(:na, worksheet.intermediate_output_d328); end
  def test_intermediate_output_g328; assert_equal(:ref, worksheet.intermediate_output_g328); end
  def test_intermediate_output_h328; assert_equal(:ref, worksheet.intermediate_output_h328); end
  def test_intermediate_output_i328; assert_equal(:ref, worksheet.intermediate_output_i328); end
  def test_intermediate_output_j328; assert_equal(:ref, worksheet.intermediate_output_j328); end
  def test_intermediate_output_k328; assert_equal(:ref, worksheet.intermediate_output_k328); end
  def test_intermediate_output_l328; assert_equal(:ref, worksheet.intermediate_output_l328); end
  def test_intermediate_output_m328; assert_equal(:ref, worksheet.intermediate_output_m328); end
  def test_intermediate_output_n328; assert_equal(:ref, worksheet.intermediate_output_n328); end
  def test_intermediate_output_o328; assert_equal(:ref, worksheet.intermediate_output_o328); end
  def test_intermediate_output_p328; assert_equal(:ref, worksheet.intermediate_output_p328); end
  def test_intermediate_output_c329; assert_equal("VI.a", worksheet.intermediate_output_c329); end
  def test_intermediate_output_d329; assert_equal(:na, worksheet.intermediate_output_d329); end
  def test_intermediate_output_g329; assert_equal(:ref, worksheet.intermediate_output_g329); end
  def test_intermediate_output_h329; assert_equal(:ref, worksheet.intermediate_output_h329); end
  def test_intermediate_output_i329; assert_equal(:ref, worksheet.intermediate_output_i329); end
  def test_intermediate_output_j329; assert_equal(:ref, worksheet.intermediate_output_j329); end
  def test_intermediate_output_k329; assert_equal(:ref, worksheet.intermediate_output_k329); end
  def test_intermediate_output_l329; assert_equal(:ref, worksheet.intermediate_output_l329); end
  def test_intermediate_output_m329; assert_equal(:ref, worksheet.intermediate_output_m329); end
  def test_intermediate_output_n329; assert_equal(:ref, worksheet.intermediate_output_n329); end
  def test_intermediate_output_o329; assert_equal(:ref, worksheet.intermediate_output_o329); end
  def test_intermediate_output_p329; assert_equal(:ref, worksheet.intermediate_output_p329); end
  def test_intermediate_output_c330; assert_equal("IV.b", worksheet.intermediate_output_c330); end
  def test_intermediate_output_d330; assert_equal(:na, worksheet.intermediate_output_d330); end
  def test_intermediate_output_g330; assert_equal(:ref, worksheet.intermediate_output_g330); end
  def test_intermediate_output_h330; assert_equal(:ref, worksheet.intermediate_output_h330); end
  def test_intermediate_output_i330; assert_equal(:ref, worksheet.intermediate_output_i330); end
  def test_intermediate_output_j330; assert_equal(:ref, worksheet.intermediate_output_j330); end
  def test_intermediate_output_k330; assert_equal(:ref, worksheet.intermediate_output_k330); end
  def test_intermediate_output_l330; assert_equal(:ref, worksheet.intermediate_output_l330); end
  def test_intermediate_output_m330; assert_equal(:ref, worksheet.intermediate_output_m330); end
  def test_intermediate_output_n330; assert_equal(:ref, worksheet.intermediate_output_n330); end
  def test_intermediate_output_o330; assert_equal(:ref, worksheet.intermediate_output_o330); end
  def test_intermediate_output_p330; assert_equal(:ref, worksheet.intermediate_output_p330); end
  def test_intermediate_output_c331; assert_equal("IX.a", worksheet.intermediate_output_c331); end
  def test_intermediate_output_d331; assert_equal(:na, worksheet.intermediate_output_d331); end
  def test_intermediate_output_g331; assert_equal(:ref, worksheet.intermediate_output_g331); end
  def test_intermediate_output_h331; assert_equal(:ref, worksheet.intermediate_output_h331); end
  def test_intermediate_output_i331; assert_equal(:ref, worksheet.intermediate_output_i331); end
  def test_intermediate_output_j331; assert_equal(:ref, worksheet.intermediate_output_j331); end
  def test_intermediate_output_k331; assert_equal(:ref, worksheet.intermediate_output_k331); end
  def test_intermediate_output_l331; assert_equal(:ref, worksheet.intermediate_output_l331); end
  def test_intermediate_output_m331; assert_equal(:ref, worksheet.intermediate_output_m331); end
  def test_intermediate_output_n331; assert_equal(:ref, worksheet.intermediate_output_n331); end
  def test_intermediate_output_o331; assert_equal(:ref, worksheet.intermediate_output_o331); end
  def test_intermediate_output_p331; assert_equal(:ref, worksheet.intermediate_output_p331); end
  def test_intermediate_output_c332; assert_equal("IX.c", worksheet.intermediate_output_c332); end
  def test_intermediate_output_d332; assert_equal(:na, worksheet.intermediate_output_d332); end
  def test_intermediate_output_g332; assert_equal(:ref, worksheet.intermediate_output_g332); end
  def test_intermediate_output_h332; assert_equal(:ref, worksheet.intermediate_output_h332); end
  def test_intermediate_output_i332; assert_equal(:ref, worksheet.intermediate_output_i332); end
  def test_intermediate_output_j332; assert_equal(:ref, worksheet.intermediate_output_j332); end
  def test_intermediate_output_k332; assert_equal(:ref, worksheet.intermediate_output_k332); end
  def test_intermediate_output_l332; assert_equal(:ref, worksheet.intermediate_output_l332); end
  def test_intermediate_output_m332; assert_equal(:ref, worksheet.intermediate_output_m332); end
  def test_intermediate_output_n332; assert_equal(:ref, worksheet.intermediate_output_n332); end
  def test_intermediate_output_o332; assert_equal(:ref, worksheet.intermediate_output_o332); end
  def test_intermediate_output_p332; assert_equal(:ref, worksheet.intermediate_output_p332); end
  def test_intermediate_output_c333; assert_equal("X.a", worksheet.intermediate_output_c333); end
  def test_intermediate_output_d333; assert_equal(:na, worksheet.intermediate_output_d333); end
  def test_intermediate_output_g333; assert_equal(:ref, worksheet.intermediate_output_g333); end
  def test_intermediate_output_h333; assert_equal(:ref, worksheet.intermediate_output_h333); end
  def test_intermediate_output_i333; assert_equal(:ref, worksheet.intermediate_output_i333); end
  def test_intermediate_output_j333; assert_equal(:ref, worksheet.intermediate_output_j333); end
  def test_intermediate_output_k333; assert_equal(:ref, worksheet.intermediate_output_k333); end
  def test_intermediate_output_l333; assert_equal(:ref, worksheet.intermediate_output_l333); end
  def test_intermediate_output_m333; assert_equal(:ref, worksheet.intermediate_output_m333); end
  def test_intermediate_output_n333; assert_equal(:ref, worksheet.intermediate_output_n333); end
  def test_intermediate_output_o333; assert_equal(:ref, worksheet.intermediate_output_o333); end
  def test_intermediate_output_p333; assert_equal(:ref, worksheet.intermediate_output_p333); end
  def test_intermediate_output_c334; assert_equal("X.b", worksheet.intermediate_output_c334); end
  def test_intermediate_output_d334; assert_equal("Commercial lighting, appliances, and catering", worksheet.intermediate_output_d334); end
  def test_intermediate_output_g334; assert_equal(:ref, worksheet.intermediate_output_g334); end
  def test_intermediate_output_h334; assert_equal(:ref, worksheet.intermediate_output_h334); end
  def test_intermediate_output_i334; assert_equal(:ref, worksheet.intermediate_output_i334); end
  def test_intermediate_output_j334; assert_equal(:ref, worksheet.intermediate_output_j334); end
  def test_intermediate_output_k334; assert_equal(:ref, worksheet.intermediate_output_k334); end
  def test_intermediate_output_l334; assert_equal(:ref, worksheet.intermediate_output_l334); end
  def test_intermediate_output_m334; assert_equal(:ref, worksheet.intermediate_output_m334); end
  def test_intermediate_output_n334; assert_equal(:ref, worksheet.intermediate_output_n334); end
  def test_intermediate_output_o334; assert_equal(:ref, worksheet.intermediate_output_o334); end
  def test_intermediate_output_p334; assert_equal(:ref, worksheet.intermediate_output_p334); end
  def test_intermediate_output_c335; assert_equal("XI.a", worksheet.intermediate_output_c335); end
  def test_intermediate_output_d335; assert_equal("Industrial processes", worksheet.intermediate_output_d335); end
  def test_intermediate_output_g335; assert_equal(:ref, worksheet.intermediate_output_g335); end
  def test_intermediate_output_h335; assert_equal(:ref, worksheet.intermediate_output_h335); end
  def test_intermediate_output_i335; assert_equal(:ref, worksheet.intermediate_output_i335); end
  def test_intermediate_output_j335; assert_equal(:ref, worksheet.intermediate_output_j335); end
  def test_intermediate_output_k335; assert_equal(:ref, worksheet.intermediate_output_k335); end
  def test_intermediate_output_l335; assert_equal(:ref, worksheet.intermediate_output_l335); end
  def test_intermediate_output_m335; assert_equal(:ref, worksheet.intermediate_output_m335); end
  def test_intermediate_output_n335; assert_equal(:ref, worksheet.intermediate_output_n335); end
  def test_intermediate_output_o335; assert_equal(:ref, worksheet.intermediate_output_o335); end
  def test_intermediate_output_p335; assert_equal(:ref, worksheet.intermediate_output_p335); end
  def test_intermediate_output_c336; assert_equal("XII.a", worksheet.intermediate_output_c336); end
  def test_intermediate_output_d336; assert_equal("Domestic passenger transport", worksheet.intermediate_output_d336); end
  def test_intermediate_output_g336; assert_equal(:ref, worksheet.intermediate_output_g336); end
  def test_intermediate_output_h336; assert_equal(:ref, worksheet.intermediate_output_h336); end
  def test_intermediate_output_i336; assert_equal(:ref, worksheet.intermediate_output_i336); end
  def test_intermediate_output_j336; assert_equal(:ref, worksheet.intermediate_output_j336); end
  def test_intermediate_output_k336; assert_equal(:ref, worksheet.intermediate_output_k336); end
  def test_intermediate_output_l336; assert_equal(:ref, worksheet.intermediate_output_l336); end
  def test_intermediate_output_m336; assert_equal(:ref, worksheet.intermediate_output_m336); end
  def test_intermediate_output_n336; assert_equal(:ref, worksheet.intermediate_output_n336); end
  def test_intermediate_output_o336; assert_equal(:ref, worksheet.intermediate_output_o336); end
  def test_intermediate_output_p336; assert_equal(:ref, worksheet.intermediate_output_p336); end
  def test_intermediate_output_c337; assert_equal("XII.b", worksheet.intermediate_output_c337); end
  def test_intermediate_output_d337; assert_equal("Domestic freight", worksheet.intermediate_output_d337); end
  def test_intermediate_output_g337; assert_equal(:ref, worksheet.intermediate_output_g337); end
  def test_intermediate_output_h337; assert_equal(:ref, worksheet.intermediate_output_h337); end
  def test_intermediate_output_i337; assert_equal(:ref, worksheet.intermediate_output_i337); end
  def test_intermediate_output_j337; assert_equal(:ref, worksheet.intermediate_output_j337); end
  def test_intermediate_output_k337; assert_equal(:ref, worksheet.intermediate_output_k337); end
  def test_intermediate_output_l337; assert_equal(:ref, worksheet.intermediate_output_l337); end
  def test_intermediate_output_m337; assert_equal(:ref, worksheet.intermediate_output_m337); end
  def test_intermediate_output_n337; assert_equal(:ref, worksheet.intermediate_output_n337); end
  def test_intermediate_output_o337; assert_equal(:ref, worksheet.intermediate_output_o337); end
  def test_intermediate_output_p337; assert_equal(:ref, worksheet.intermediate_output_p337); end
  def test_intermediate_output_c338; assert_equal("XIV.a", worksheet.intermediate_output_c338); end
  def test_intermediate_output_d338; assert_equal("Geosequestration", worksheet.intermediate_output_d338); end
  def test_intermediate_output_g338; assert_equal(:ref, worksheet.intermediate_output_g338); end
  def test_intermediate_output_h338; assert_equal(:na, worksheet.intermediate_output_h338); end
  def test_intermediate_output_i338; assert_equal(:na, worksheet.intermediate_output_i338); end
  def test_intermediate_output_j338; assert_equal(:na, worksheet.intermediate_output_j338); end
  def test_intermediate_output_k338; assert_equal(:na, worksheet.intermediate_output_k338); end
  def test_intermediate_output_l338; assert_equal(:na, worksheet.intermediate_output_l338); end
  def test_intermediate_output_m338; assert_equal(:na, worksheet.intermediate_output_m338); end
  def test_intermediate_output_n338; assert_equal(:na, worksheet.intermediate_output_n338); end
  def test_intermediate_output_o338; assert_equal(:na, worksheet.intermediate_output_o338); end
  def test_intermediate_output_p338; assert_equal(:na, worksheet.intermediate_output_p338); end
  def test_intermediate_output_c339; assert_equal("XV.a", worksheet.intermediate_output_c339); end
  def test_intermediate_output_d339; assert_equal(:na, worksheet.intermediate_output_d339); end
  def test_intermediate_output_g339; assert_equal(:ref, worksheet.intermediate_output_g339); end
  def test_intermediate_output_h339; assert_equal(:ref, worksheet.intermediate_output_h339); end
  def test_intermediate_output_i339; assert_equal(:ref, worksheet.intermediate_output_i339); end
  def test_intermediate_output_j339; assert_equal(:ref, worksheet.intermediate_output_j339); end
  def test_intermediate_output_k339; assert_equal(:ref, worksheet.intermediate_output_k339); end
  def test_intermediate_output_l339; assert_equal(:ref, worksheet.intermediate_output_l339); end
  def test_intermediate_output_m339; assert_equal(:ref, worksheet.intermediate_output_m339); end
  def test_intermediate_output_n339; assert_equal(:ref, worksheet.intermediate_output_n339); end
  def test_intermediate_output_o339; assert_equal(:ref, worksheet.intermediate_output_o339); end
  def test_intermediate_output_p339; assert_equal(:ref, worksheet.intermediate_output_p339); end
  def test_intermediate_output_c340; assert_equal("XV.b", worksheet.intermediate_output_c340); end
  def test_intermediate_output_d340; assert_equal(:na, worksheet.intermediate_output_d340); end
  def test_intermediate_output_g340; assert_equal(:ref, worksheet.intermediate_output_g340); end
  def test_intermediate_output_h340; assert_equal(:ref, worksheet.intermediate_output_h340); end
  def test_intermediate_output_i340; assert_equal(:ref, worksheet.intermediate_output_i340); end
  def test_intermediate_output_j340; assert_equal(:ref, worksheet.intermediate_output_j340); end
  def test_intermediate_output_k340; assert_equal(:ref, worksheet.intermediate_output_k340); end
  def test_intermediate_output_l340; assert_equal(:ref, worksheet.intermediate_output_l340); end
  def test_intermediate_output_m340; assert_equal(:ref, worksheet.intermediate_output_m340); end
  def test_intermediate_output_n340; assert_equal(:ref, worksheet.intermediate_output_n340); end
  def test_intermediate_output_o340; assert_equal(:ref, worksheet.intermediate_output_o340); end
  def test_intermediate_output_p340; assert_equal(:ref, worksheet.intermediate_output_p340); end
  def test_intermediate_output_c341; assert_equal("XVII.a", worksheet.intermediate_output_c341); end
  def test_intermediate_output_d341; assert_equal("District heating effective demand", worksheet.intermediate_output_d341); end
  def test_intermediate_output_g341; assert_equal(:ref, worksheet.intermediate_output_g341); end
  def test_intermediate_output_h341; assert_equal(:ref, worksheet.intermediate_output_h341); end
  def test_intermediate_output_i341; assert_equal(:ref, worksheet.intermediate_output_i341); end
  def test_intermediate_output_j341; assert_equal(:ref, worksheet.intermediate_output_j341); end
  def test_intermediate_output_k341; assert_equal(:ref, worksheet.intermediate_output_k341); end
  def test_intermediate_output_l341; assert_equal(:ref, worksheet.intermediate_output_l341); end
  def test_intermediate_output_m341; assert_equal(:ref, worksheet.intermediate_output_m341); end
  def test_intermediate_output_n341; assert_equal(:ref, worksheet.intermediate_output_n341); end
  def test_intermediate_output_o341; assert_equal(:ref, worksheet.intermediate_output_o341); end
  def test_intermediate_output_p341; assert_equal(:ref, worksheet.intermediate_output_p341); end
  def test_intermediate_output_d342; assert_equal("Total", worksheet.intermediate_output_d342); end
  def test_intermediate_output_g342; assert_equal(:ref, worksheet.intermediate_output_g342); end
  def test_intermediate_output_h342; assert_equal(:ref, worksheet.intermediate_output_h342); end
  def test_intermediate_output_i342; assert_equal(:ref, worksheet.intermediate_output_i342); end
  def test_intermediate_output_j342; assert_equal(:ref, worksheet.intermediate_output_j342); end
  def test_intermediate_output_k342; assert_equal(:ref, worksheet.intermediate_output_k342); end
  def test_intermediate_output_l342; assert_equal(:ref, worksheet.intermediate_output_l342); end
  def test_intermediate_output_m342; assert_equal(:ref, worksheet.intermediate_output_m342); end
  def test_intermediate_output_n342; assert_equal(:ref, worksheet.intermediate_output_n342); end
  def test_intermediate_output_o342; assert_equal(:ref, worksheet.intermediate_output_o342); end
  def test_intermediate_output_p342; assert_equal(:ref, worksheet.intermediate_output_p342); end
  def test_intermediate_output_d344; assert_equal("Transport", worksheet.intermediate_output_d344); end
  def test_intermediate_output_g344; assert_equal(:ref, worksheet.intermediate_output_g344); end
  def test_intermediate_output_h344; assert_equal(:ref, worksheet.intermediate_output_h344); end
  def test_intermediate_output_i344; assert_equal(:ref, worksheet.intermediate_output_i344); end
  def test_intermediate_output_j344; assert_equal(:ref, worksheet.intermediate_output_j344); end
  def test_intermediate_output_k344; assert_equal(:ref, worksheet.intermediate_output_k344); end
  def test_intermediate_output_l344; assert_equal(:ref, worksheet.intermediate_output_l344); end
  def test_intermediate_output_m344; assert_equal(:ref, worksheet.intermediate_output_m344); end
  def test_intermediate_output_n344; assert_equal(:ref, worksheet.intermediate_output_n344); end
  def test_intermediate_output_o344; assert_equal(:ref, worksheet.intermediate_output_o344); end
  def test_intermediate_output_p344; assert_equal(:ref, worksheet.intermediate_output_p344); end
  def test_intermediate_output_d345; assert_equal("Industry", worksheet.intermediate_output_d345); end
  def test_intermediate_output_g345; assert_equal(:ref, worksheet.intermediate_output_g345); end
  def test_intermediate_output_h345; assert_equal(:na, worksheet.intermediate_output_h345); end
  def test_intermediate_output_i345; assert_equal(:na, worksheet.intermediate_output_i345); end
  def test_intermediate_output_j345; assert_equal(:na, worksheet.intermediate_output_j345); end
  def test_intermediate_output_k345; assert_equal(:na, worksheet.intermediate_output_k345); end
  def test_intermediate_output_l345; assert_equal(:na, worksheet.intermediate_output_l345); end
  def test_intermediate_output_m345; assert_equal(:na, worksheet.intermediate_output_m345); end
  def test_intermediate_output_n345; assert_equal(:na, worksheet.intermediate_output_n345); end
  def test_intermediate_output_o345; assert_equal(:na, worksheet.intermediate_output_o345); end
  def test_intermediate_output_p345; assert_equal(:na, worksheet.intermediate_output_p345); end
  def test_intermediate_output_d346; assert_equal("Heating and cooling", worksheet.intermediate_output_d346); end
  def test_intermediate_output_g346; assert_equal(:ref, worksheet.intermediate_output_g346); end
  def test_intermediate_output_h346; assert_equal(:ref, worksheet.intermediate_output_h346); end
  def test_intermediate_output_i346; assert_equal(:ref, worksheet.intermediate_output_i346); end
  def test_intermediate_output_j346; assert_equal(:ref, worksheet.intermediate_output_j346); end
  def test_intermediate_output_k346; assert_equal(:ref, worksheet.intermediate_output_k346); end
  def test_intermediate_output_l346; assert_equal(:ref, worksheet.intermediate_output_l346); end
  def test_intermediate_output_m346; assert_equal(:ref, worksheet.intermediate_output_m346); end
  def test_intermediate_output_n346; assert_equal(:ref, worksheet.intermediate_output_n346); end
  def test_intermediate_output_o346; assert_equal(:ref, worksheet.intermediate_output_o346); end
  def test_intermediate_output_p346; assert_equal(:ref, worksheet.intermediate_output_p346); end
  def test_intermediate_output_d347; assert_equal("Lighting & appliances", worksheet.intermediate_output_d347); end
  def test_intermediate_output_g347; assert_equal(:ref, worksheet.intermediate_output_g347); end
  def test_intermediate_output_h347; assert_equal(:ref, worksheet.intermediate_output_h347); end
  def test_intermediate_output_i347; assert_equal(:ref, worksheet.intermediate_output_i347); end
  def test_intermediate_output_j347; assert_equal(:ref, worksheet.intermediate_output_j347); end
  def test_intermediate_output_k347; assert_equal(:ref, worksheet.intermediate_output_k347); end
  def test_intermediate_output_l347; assert_equal(:ref, worksheet.intermediate_output_l347); end
  def test_intermediate_output_m347; assert_equal(:ref, worksheet.intermediate_output_m347); end
  def test_intermediate_output_n347; assert_equal(:ref, worksheet.intermediate_output_n347); end
  def test_intermediate_output_o347; assert_equal(:ref, worksheet.intermediate_output_o347); end
  def test_intermediate_output_p347; assert_equal(:ref, worksheet.intermediate_output_p347); end
  def test_intermediate_output_d348; assert_equal("Total", worksheet.intermediate_output_d348); end
  def test_intermediate_output_g348; assert_equal(:ref, worksheet.intermediate_output_g348); end
  def test_intermediate_output_h348; assert_equal(:ref, worksheet.intermediate_output_h348); end
  def test_intermediate_output_i348; assert_equal(:ref, worksheet.intermediate_output_i348); end
  def test_intermediate_output_j348; assert_equal(:ref, worksheet.intermediate_output_j348); end
  def test_intermediate_output_k348; assert_equal(:ref, worksheet.intermediate_output_k348); end
  def test_intermediate_output_l348; assert_equal(:ref, worksheet.intermediate_output_l348); end
  def test_intermediate_output_m348; assert_equal(:ref, worksheet.intermediate_output_m348); end
  def test_intermediate_output_n348; assert_equal(:ref, worksheet.intermediate_output_n348); end
  def test_intermediate_output_o348; assert_equal(:ref, worksheet.intermediate_output_o348); end
  def test_intermediate_output_p348; assert_equal(:ref, worksheet.intermediate_output_p348); end
  def test_intermediate_output_b351; assert_equal("Heating, format for web-based interface", worksheet.intermediate_output_b351); end
  def test_intermediate_output_d353; assert_equal("2050 Split of heating technology", worksheet.intermediate_output_d353); end
  def test_intermediate_output_e353; assert_equal("Residential ", worksheet.intermediate_output_e353); end
  def test_intermediate_output_f353; assert_equal("Commercial", worksheet.intermediate_output_f353); end
  def test_intermediate_output_d354; assert_equal(:ref, worksheet.intermediate_output_d354); end
  def test_intermediate_output_e354; assert_equal(:ref, worksheet.intermediate_output_e354); end
  def test_intermediate_output_f354; assert_equal(:ref, worksheet.intermediate_output_f354); end
  def test_intermediate_output_d355; assert_equal(:ref, worksheet.intermediate_output_d355); end
  def test_intermediate_output_e355; assert_equal(:ref, worksheet.intermediate_output_e355); end
  def test_intermediate_output_f355; assert_equal(:ref, worksheet.intermediate_output_f355); end
  def test_intermediate_output_d356; assert_equal(:ref, worksheet.intermediate_output_d356); end
  def test_intermediate_output_e356; assert_equal(:ref, worksheet.intermediate_output_e356); end
  def test_intermediate_output_f356; assert_equal(:ref, worksheet.intermediate_output_f356); end
  def test_intermediate_output_d357; assert_equal(:ref, worksheet.intermediate_output_d357); end
  def test_intermediate_output_e357; assert_equal(:ref, worksheet.intermediate_output_e357); end
  def test_intermediate_output_f357; assert_equal(:ref, worksheet.intermediate_output_f357); end
  def test_intermediate_output_d358; assert_equal(:ref, worksheet.intermediate_output_d358); end
  def test_intermediate_output_e358; assert_equal(:ref, worksheet.intermediate_output_e358); end
  def test_intermediate_output_f358; assert_equal(:ref, worksheet.intermediate_output_f358); end
  def test_intermediate_output_d359; assert_equal(:ref, worksheet.intermediate_output_d359); end
  def test_intermediate_output_e359; assert_equal(:ref, worksheet.intermediate_output_e359); end
  def test_intermediate_output_f359; assert_equal(:ref, worksheet.intermediate_output_f359); end
  def test_intermediate_output_d360; assert_equal(:ref, worksheet.intermediate_output_d360); end
  def test_intermediate_output_e360; assert_equal(:ref, worksheet.intermediate_output_e360); end
  def test_intermediate_output_f360; assert_equal(:ref, worksheet.intermediate_output_f360); end
  def test_intermediate_output_d361; assert_equal(:ref, worksheet.intermediate_output_d361); end
  def test_intermediate_output_e361; assert_equal(:ref, worksheet.intermediate_output_e361); end
  def test_intermediate_output_f361; assert_equal(:ref, worksheet.intermediate_output_f361); end
  def test_intermediate_output_d362; assert_equal(:ref, worksheet.intermediate_output_d362); end
  def test_intermediate_output_e362; assert_equal(:ref, worksheet.intermediate_output_e362); end
  def test_intermediate_output_f362; assert_equal(:ref, worksheet.intermediate_output_f362); end
  def test_intermediate_output_d363; assert_equal(:ref, worksheet.intermediate_output_d363); end
  def test_intermediate_output_e363; assert_equal(:ref, worksheet.intermediate_output_e363); end
  def test_intermediate_output_f363; assert_equal(:ref, worksheet.intermediate_output_f363); end
  def test_intermediate_output_d364; assert_equal(:ref, worksheet.intermediate_output_d364); end
  def test_intermediate_output_e364; assert_equal(:ref, worksheet.intermediate_output_e364); end
  def test_intermediate_output_f364; assert_equal(:ref, worksheet.intermediate_output_f364); end
  def test_intermediate_output_d365; assert_equal(:ref, worksheet.intermediate_output_d365); end
  def test_intermediate_output_e365; assert_equal(:ref, worksheet.intermediate_output_e365); end
  def test_intermediate_output_f365; assert_equal(:ref, worksheet.intermediate_output_f365); end
  def test_intermediate_output_d366; assert_equal(:ref, worksheet.intermediate_output_d366); end
  def test_intermediate_output_e366; assert_equal(:ref, worksheet.intermediate_output_e366); end
  def test_intermediate_output_f366; assert_equal(:ref, worksheet.intermediate_output_f366); end
  def test_intermediate_output_d367; assert_equal(:ref, worksheet.intermediate_output_d367); end
  def test_intermediate_output_e367; assert_equal(:ref, worksheet.intermediate_output_e367); end
  def test_intermediate_output_f367; assert_equal(:ref, worksheet.intermediate_output_f367); end
  def test_flows_b2; assert_equal("Flows through the energy system (for producing an energy flow diagram)", worksheet.flows_b2); end
  def test_flows_s2; assert_equal("Cross check of flows through the energy system (based on the idea that energy is transformed, but not destroyed)", worksheet.flows_s2); end
  def test_flows_p4; assert_equal("PJ", worksheet.flows_p4); end
  def test_flows_u4; assert_equal("Values flowing from the transformation", worksheet.flows_u4); end
  def test_flows_af4; assert_equal("Values flowing to the transformation", worksheet.flows_af4); end
  def test_flows_aq4; assert_equal("Check that flows in equal flows out", worksheet.flows_aq4); end
  def test_flows_c5; assert_equal("From", worksheet.flows_c5); end
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
  def test_flows_t5; assert_equal("Transformation", worksheet.flows_t5); end
  def test_flows_u5; assert_in_epsilon(2006.0, worksheet.flows_u5, 0.002); end
  def test_flows_v5; assert_in_epsilon(2010.0, worksheet.flows_v5, 0.002); end
  def test_flows_w5; assert_in_epsilon(2015.0, worksheet.flows_w5, 0.002); end
  def test_flows_x5; assert_in_epsilon(2020.0, worksheet.flows_x5, 0.002); end
  def test_flows_y5; assert_in_epsilon(2025.0, worksheet.flows_y5, 0.002); end
  def test_flows_z5; assert_in_epsilon(2030.0, worksheet.flows_z5, 0.002); end
  def test_flows_aa5; assert_in_epsilon(2035.0, worksheet.flows_aa5, 0.002); end
  def test_flows_ab5; assert_in_epsilon(2040.0, worksheet.flows_ab5, 0.002); end
  def test_flows_ac5; assert_in_epsilon(2045.0, worksheet.flows_ac5, 0.002); end
  def test_flows_ad5; assert_in_epsilon(2050.0, worksheet.flows_ad5, 0.002); end
  def test_flows_af5; assert_in_epsilon(2006.0, worksheet.flows_af5, 0.002); end
  def test_flows_ag5; assert_in_epsilon(2010.0, worksheet.flows_ag5, 0.002); end
  def test_flows_ah5; assert_in_epsilon(2015.0, worksheet.flows_ah5, 0.002); end
  def test_flows_ai5; assert_in_epsilon(2020.0, worksheet.flows_ai5, 0.002); end
  def test_flows_aj5; assert_in_epsilon(2025.0, worksheet.flows_aj5, 0.002); end
  def test_flows_ak5; assert_in_epsilon(2030.0, worksheet.flows_ak5, 0.002); end
  def test_flows_al5; assert_in_epsilon(2035.0, worksheet.flows_al5, 0.002); end
  def test_flows_am5; assert_in_epsilon(2040.0, worksheet.flows_am5, 0.002); end
  def test_flows_an5; assert_in_epsilon(2045.0, worksheet.flows_an5, 0.002); end
  def test_flows_ao5; assert_in_epsilon(2050.0, worksheet.flows_ao5, 0.002); end
  def test_flows_aq5; assert_in_epsilon(2006.0, worksheet.flows_aq5, 0.002); end
  def test_flows_ar5; assert_in_epsilon(2010.0, worksheet.flows_ar5, 0.002); end
  def test_flows_as5; assert_in_epsilon(2015.0, worksheet.flows_as5, 0.002); end
  def test_flows_at5; assert_in_epsilon(2020.0, worksheet.flows_at5, 0.002); end
  def test_flows_au5; assert_in_epsilon(2025.0, worksheet.flows_au5, 0.002); end
  def test_flows_av5; assert_in_epsilon(2030.0, worksheet.flows_av5, 0.002); end
  def test_flows_aw5; assert_in_epsilon(2035.0, worksheet.flows_aw5, 0.002); end
  def test_flows_ax5; assert_in_epsilon(2040.0, worksheet.flows_ax5, 0.002); end
  def test_flows_ay5; assert_in_epsilon(2045.0, worksheet.flows_ay5, 0.002); end
  def test_flows_az5; assert_in_epsilon(2050.0, worksheet.flows_az5, 0.002); end
  def test_flows_c6; assert_equal("Coal reserves", worksheet.flows_c6); end
  def test_flows_d6; assert_equal("FOS.SUP", worksheet.flows_d6); end
  def test_flows_e6; assert_equal("Coal", worksheet.flows_e6); end
  def test_flows_f6; assert_equal("Q.01", worksheet.flows_f6); end
  def test_flows_g6; assert_in_epsilon(3834.6998815001843, worksheet.flows_g6, 0.002); end
  def test_flows_h6; assert_in_epsilon(4387.614989564262, worksheet.flows_h6, 0.002); end
  def test_flows_i6; assert_in_epsilon(4996.3751818790915, worksheet.flows_i6, 0.002); end
  def test_flows_j6; assert_in_epsilon(5714.815533887691, worksheet.flows_j6, 0.002); end
  def test_flows_k6; assert_in_epsilon(6633.232367796969, worksheet.flows_k6, 0.002); end
  def test_flows_l6; assert_in_epsilon(7721.450173951748, worksheet.flows_l6, 0.002); end
  def test_flows_m6; assert_in_epsilon(9105.093942728541, worksheet.flows_m6, 0.002); end
  def test_flows_n6; assert_in_epsilon(10630.791857661889, worksheet.flows_n6, 0.002); end
  def test_flows_o6; assert_in_epsilon(12335.462173556538, worksheet.flows_o6, 0.002); end
  def test_flows_p6; assert_in_epsilon(14269.992391048163, worksheet.flows_p6, 0.002); end
  def test_flows_t6; assert_equal("Agricultural 'waste'", worksheet.flows_t6); end
  def test_flows_u6; assert_equal(:ref, worksheet.flows_u6); end
  def test_flows_v6; assert_equal(:ref, worksheet.flows_v6); end
  def test_flows_w6; assert_equal(:ref, worksheet.flows_w6); end
  def test_flows_x6; assert_equal(:ref, worksheet.flows_x6); end
  def test_flows_y6; assert_equal(:ref, worksheet.flows_y6); end
  def test_flows_z6; assert_equal(:ref, worksheet.flows_z6); end
  def test_flows_aa6; assert_equal(:ref, worksheet.flows_aa6); end
  def test_flows_ab6; assert_equal(:ref, worksheet.flows_ab6); end
  def test_flows_ac6; assert_equal(:ref, worksheet.flows_ac6); end
  def test_flows_ad6; assert_equal(:ref, worksheet.flows_ad6); end
  def test_flows_af6; assert_in_delta(0.0, (worksheet.flows_af6||0), 0.002); end
  def test_flows_ag6; assert_in_delta(0.0, (worksheet.flows_ag6||0), 0.002); end
  def test_flows_ah6; assert_in_delta(0.0, (worksheet.flows_ah6||0), 0.002); end
  def test_flows_ai6; assert_in_delta(0.0, (worksheet.flows_ai6||0), 0.002); end
  def test_flows_aj6; assert_in_delta(0.0, (worksheet.flows_aj6||0), 0.002); end
  def test_flows_ak6; assert_in_delta(0.0, (worksheet.flows_ak6||0), 0.002); end
  def test_flows_al6; assert_in_delta(0.0, (worksheet.flows_al6||0), 0.002); end
  def test_flows_am6; assert_in_delta(0.0, (worksheet.flows_am6||0), 0.002); end
  def test_flows_an6; assert_in_delta(0.0, (worksheet.flows_an6||0), 0.002); end
  def test_flows_ao6; assert_in_delta(0.0, (worksheet.flows_ao6||0), 0.002); end
  def test_flows_t7; assert_equal("Agriculture", worksheet.flows_t7); end
  def test_flows_u7; assert_in_delta(0.0, (worksheet.flows_u7||0), 0.002); end
  def test_flows_v7; assert_in_delta(0.0, (worksheet.flows_v7||0), 0.002); end
  def test_flows_w7; assert_in_delta(0.0, (worksheet.flows_w7||0), 0.002); end
  def test_flows_x7; assert_in_delta(0.0, (worksheet.flows_x7||0), 0.002); end
  def test_flows_y7; assert_in_delta(0.0, (worksheet.flows_y7||0), 0.002); end
  def test_flows_z7; assert_in_delta(0.0, (worksheet.flows_z7||0), 0.002); end
  def test_flows_aa7; assert_in_delta(0.0, (worksheet.flows_aa7||0), 0.002); end
  def test_flows_ab7; assert_in_delta(0.0, (worksheet.flows_ab7||0), 0.002); end
  def test_flows_ac7; assert_in_delta(0.0, (worksheet.flows_ac7||0), 0.002); end
  def test_flows_ad7; assert_in_delta(0.0, (worksheet.flows_ad7||0), 0.002); end
  def test_flows_af7; assert_equal(:ref, worksheet.flows_af7); end
  def test_flows_ag7; assert_equal(:ref, worksheet.flows_ag7); end
  def test_flows_ah7; assert_equal(:ref, worksheet.flows_ah7); end
  def test_flows_ai7; assert_equal(:ref, worksheet.flows_ai7); end
  def test_flows_aj7; assert_equal(:ref, worksheet.flows_aj7); end
  def test_flows_ak7; assert_equal(:ref, worksheet.flows_ak7); end
  def test_flows_al7; assert_equal(:ref, worksheet.flows_al7); end
  def test_flows_am7; assert_equal(:ref, worksheet.flows_am7); end
  def test_flows_an7; assert_equal(:ref, worksheet.flows_an7); end
  def test_flows_ao7; assert_equal(:ref, worksheet.flows_ao7); end
  def test_flows_c8; assert_equal("Oil reserves", worksheet.flows_c8); end
  def test_flows_e8; assert_equal("Oil", worksheet.flows_e8); end
  def test_flows_g8; assert_in_delta(0.0, (worksheet.flows_g8||0), 0.002); end
  def test_flows_h8; assert_in_delta(0.0, (worksheet.flows_h8||0), 0.002); end
  def test_flows_i8; assert_in_delta(0.0, (worksheet.flows_i8||0), 0.002); end
  def test_flows_j8; assert_in_delta(0.0, (worksheet.flows_j8||0), 0.002); end
  def test_flows_k8; assert_in_delta(0.0, (worksheet.flows_k8||0), 0.002); end
  def test_flows_l8; assert_in_delta(0.0, (worksheet.flows_l8||0), 0.002); end
  def test_flows_m8; assert_in_delta(0.0, (worksheet.flows_m8||0), 0.002); end
  def test_flows_n8; assert_in_delta(0.0, (worksheet.flows_n8||0), 0.002); end
  def test_flows_o8; assert_in_delta(0.0, (worksheet.flows_o8||0), 0.002); end
  def test_flows_p8; assert_in_delta(0.0, (worksheet.flows_p8||0), 0.002); end
  def test_flows_t8; assert_equal("Bio-conversion", worksheet.flows_t8); end
  def test_flows_u8; assert_equal(:ref, worksheet.flows_u8); end
  def test_flows_v8; assert_equal(:ref, worksheet.flows_v8); end
  def test_flows_w8; assert_equal(:ref, worksheet.flows_w8); end
  def test_flows_x8; assert_equal(:ref, worksheet.flows_x8); end
  def test_flows_y8; assert_equal(:ref, worksheet.flows_y8); end
  def test_flows_z8; assert_equal(:ref, worksheet.flows_z8); end
  def test_flows_aa8; assert_equal(:ref, worksheet.flows_aa8); end
  def test_flows_ab8; assert_equal(:ref, worksheet.flows_ab8); end
  def test_flows_ac8; assert_equal(:ref, worksheet.flows_ac8); end
  def test_flows_ad8; assert_equal(:ref, worksheet.flows_ad8); end
  def test_flows_af8; assert_equal(:ref, worksheet.flows_af8); end
  def test_flows_ag8; assert_equal(:ref, worksheet.flows_ag8); end
  def test_flows_ah8; assert_equal(:ref, worksheet.flows_ah8); end
  def test_flows_ai8; assert_equal(:ref, worksheet.flows_ai8); end
  def test_flows_aj8; assert_equal(:ref, worksheet.flows_aj8); end
  def test_flows_ak8; assert_equal(:ref, worksheet.flows_ak8); end
  def test_flows_al8; assert_equal(:ref, worksheet.flows_al8); end
  def test_flows_am8; assert_equal(:ref, worksheet.flows_am8); end
  def test_flows_an8; assert_equal(:ref, worksheet.flows_an8); end
  def test_flows_ao8; assert_equal(:ref, worksheet.flows_ao8); end
  def test_flows_aq8; assert_equal(:ref, worksheet.flows_aq8); end
  def test_flows_ar8; assert_equal(:ref, worksheet.flows_ar8); end
  def test_flows_as8; assert_equal(:ref, worksheet.flows_as8); end
  def test_flows_at8; assert_equal(:ref, worksheet.flows_at8); end
  def test_flows_au8; assert_equal(:ref, worksheet.flows_au8); end
  def test_flows_av8; assert_equal(:ref, worksheet.flows_av8); end
  def test_flows_aw8; assert_equal(:ref, worksheet.flows_aw8); end
  def test_flows_ax8; assert_equal(:ref, worksheet.flows_ax8); end
  def test_flows_ay8; assert_equal(:ref, worksheet.flows_ay8); end
  def test_flows_az8; assert_equal(:ref, worksheet.flows_az8); end
  def test_flows_c9; assert_equal("Oil imports", worksheet.flows_c9); end
  def test_flows_e9; assert_equal("Oil", worksheet.flows_e9); end
  def test_flows_g9; assert_in_epsilon(553.8553914230257, worksheet.flows_g9, 0.002); end
  def test_flows_h9; assert_in_epsilon(649.6521092479593, worksheet.flows_h9, 0.002); end
  def test_flows_i9; assert_in_epsilon(745.6199008308481, worksheet.flows_i9, 0.002); end
  def test_flows_j9; assert_in_epsilon(838.6799743554361, worksheet.flows_j9, 0.002); end
  def test_flows_k9; assert_in_epsilon(928.7166761345673, worksheet.flows_k9, 0.002); end
  def test_flows_l9; assert_in_epsilon(1016.9935964965312, worksheet.flows_l9, 0.002); end
  def test_flows_m9; assert_in_epsilon(1162.557114168934, worksheet.flows_m9, 0.002); end
  def test_flows_n9; assert_in_epsilon(1385.3655103279275, worksheet.flows_n9, 0.002); end
  def test_flows_o9; assert_in_epsilon(1346.2284749255707, worksheet.flows_o9, 0.002); end
  def test_flows_p9; assert_in_epsilon(1368.942146699088, worksheet.flows_p9, 0.002); end
  def test_flows_t9; assert_equal("Biofuel imports", worksheet.flows_t9); end
  def test_flows_u9; assert_equal(:ref, worksheet.flows_u9); end
  def test_flows_v9; assert_equal(:ref, worksheet.flows_v9); end
  def test_flows_w9; assert_equal(:ref, worksheet.flows_w9); end
  def test_flows_x9; assert_equal(:ref, worksheet.flows_x9); end
  def test_flows_y9; assert_equal(:ref, worksheet.flows_y9); end
  def test_flows_z9; assert_equal(:ref, worksheet.flows_z9); end
  def test_flows_aa9; assert_equal(:ref, worksheet.flows_aa9); end
  def test_flows_ab9; assert_equal(:ref, worksheet.flows_ab9); end
  def test_flows_ac9; assert_equal(:ref, worksheet.flows_ac9); end
  def test_flows_ad9; assert_equal(:ref, worksheet.flows_ad9); end
  def test_flows_af9; assert_in_delta(0.0, (worksheet.flows_af9||0), 0.002); end
  def test_flows_ag9; assert_in_delta(0.0, (worksheet.flows_ag9||0), 0.002); end
  def test_flows_ah9; assert_in_delta(0.0, (worksheet.flows_ah9||0), 0.002); end
  def test_flows_ai9; assert_in_delta(0.0, (worksheet.flows_ai9||0), 0.002); end
  def test_flows_aj9; assert_in_delta(0.0, (worksheet.flows_aj9||0), 0.002); end
  def test_flows_ak9; assert_in_delta(0.0, (worksheet.flows_ak9||0), 0.002); end
  def test_flows_al9; assert_in_delta(0.0, (worksheet.flows_al9||0), 0.002); end
  def test_flows_am9; assert_in_delta(0.0, (worksheet.flows_am9||0), 0.002); end
  def test_flows_an9; assert_in_delta(0.0, (worksheet.flows_an9||0), 0.002); end
  def test_flows_ao9; assert_in_delta(0.0, (worksheet.flows_ao9||0), 0.002); end
  def test_flows_c10; assert_equal("Gas reserves", worksheet.flows_c10); end
  def test_flows_d10; assert_equal("FOS.SUP", worksheet.flows_d10); end
  def test_flows_e10; assert_equal("Natural Gas", worksheet.flows_e10); end
  def test_flows_f10; assert_equal("Q.03", worksheet.flows_f10); end
  def test_flows_g10; assert_in_epsilon(61.214999999999996, worksheet.flows_g10, 0.002); end
  def test_flows_h10; assert_in_epsilon(44.8, worksheet.flows_h10, 0.002); end
  def test_flows_i10; assert_in_epsilon(26.453952000000008, worksheet.flows_i10, 0.002); end
  def test_flows_j10; assert_in_epsilon(15.62079411648001, worksheet.flows_j10, 0.002); end
  def test_flows_k10; assert_in_delta(0.0, (worksheet.flows_k10||0), 0.002); end
  def test_flows_l10; assert_in_delta(0.0, (worksheet.flows_l10||0), 0.002); end
  def test_flows_m10; assert_in_delta(0.0, (worksheet.flows_m10||0), 0.002); end
  def test_flows_n10; assert_in_delta(0.0, (worksheet.flows_n10||0), 0.002); end
  def test_flows_o10; assert_in_delta(0.0, (worksheet.flows_o10||0), 0.002); end
  def test_flows_p10; assert_in_delta(0.0, (worksheet.flows_p10||0), 0.002); end
  def test_flows_t10; assert_equal("Biomass imports", worksheet.flows_t10); end
  def test_flows_u10; assert_equal(:ref, worksheet.flows_u10); end
  def test_flows_v10; assert_equal(:ref, worksheet.flows_v10); end
  def test_flows_w10; assert_equal(:ref, worksheet.flows_w10); end
  def test_flows_x10; assert_equal(:ref, worksheet.flows_x10); end
  def test_flows_y10; assert_equal(:ref, worksheet.flows_y10); end
  def test_flows_z10; assert_equal(:ref, worksheet.flows_z10); end
  def test_flows_aa10; assert_equal(:ref, worksheet.flows_aa10); end
  def test_flows_ab10; assert_equal(:ref, worksheet.flows_ab10); end
  def test_flows_ac10; assert_equal(:ref, worksheet.flows_ac10); end
  def test_flows_ad10; assert_equal(:ref, worksheet.flows_ad10); end
  def test_flows_af10; assert_in_delta(0.0, (worksheet.flows_af10||0), 0.002); end
  def test_flows_ag10; assert_in_delta(0.0, (worksheet.flows_ag10||0), 0.002); end
  def test_flows_ah10; assert_in_delta(0.0, (worksheet.flows_ah10||0), 0.002); end
  def test_flows_ai10; assert_in_delta(0.0, (worksheet.flows_ai10||0), 0.002); end
  def test_flows_aj10; assert_in_delta(0.0, (worksheet.flows_aj10||0), 0.002); end
  def test_flows_ak10; assert_in_delta(0.0, (worksheet.flows_ak10||0), 0.002); end
  def test_flows_al10; assert_in_delta(0.0, (worksheet.flows_al10||0), 0.002); end
  def test_flows_am10; assert_in_delta(0.0, (worksheet.flows_am10||0), 0.002); end
  def test_flows_an10; assert_in_delta(0.0, (worksheet.flows_an10||0), 0.002); end
  def test_flows_ao10; assert_in_delta(0.0, (worksheet.flows_ao10||0), 0.002); end
  def test_flows_c11; assert_equal("Gas imports", worksheet.flows_c11); end
  def test_flows_d11; assert_equal("FOS.SUP", worksheet.flows_d11); end
  def test_flows_e11; assert_equal("Natural Gas", worksheet.flows_e11); end
  def test_flows_f11; assert_equal("Y.06", worksheet.flows_f11); end
  def test_flows_g11; assert_in_epsilon(127.3371537764063, worksheet.flows_g11, 0.002); end
  def test_flows_h11; assert_in_epsilon(162.08087954412628, worksheet.flows_h11, 0.002); end
  def test_flows_i11; assert_in_epsilon(205.30358602276903, worksheet.flows_i11, 0.002); end
  def test_flows_j11; assert_in_epsilon(240.27509386351113, worksheet.flows_j11, 0.002); end
  def test_flows_k11; assert_in_epsilon(289.75570253857563, worksheet.flows_k11, 0.002); end
  def test_flows_l11; assert_in_epsilon(322.77362179445345, worksheet.flows_l11, 0.002); end
  def test_flows_m11; assert_in_epsilon(310.93682089270357, worksheet.flows_m11, 0.002); end
  def test_flows_n11; assert_in_epsilon(362.84884987472964, worksheet.flows_n11, 0.002); end
  def test_flows_o11; assert_in_epsilon(412.59106615573387, worksheet.flows_o11, 0.002); end
  def test_flows_p11; assert_in_epsilon(455.0221337045418, worksheet.flows_p11, 0.002); end
  def test_flows_t11; assert_equal("CHP", worksheet.flows_t11); end
  def test_flows_u11; assert_equal(:ref, worksheet.flows_u11); end
  def test_flows_v11; assert_equal(:ref, worksheet.flows_v11); end
  def test_flows_w11; assert_equal(:ref, worksheet.flows_w11); end
  def test_flows_x11; assert_equal(:ref, worksheet.flows_x11); end
  def test_flows_y11; assert_equal(:ref, worksheet.flows_y11); end
  def test_flows_z11; assert_equal(:ref, worksheet.flows_z11); end
  def test_flows_aa11; assert_equal(:ref, worksheet.flows_aa11); end
  def test_flows_ab11; assert_equal(:ref, worksheet.flows_ab11); end
  def test_flows_ac11; assert_equal(:ref, worksheet.flows_ac11); end
  def test_flows_ad11; assert_equal(:ref, worksheet.flows_ad11); end
  def test_flows_af11; assert_equal(:ref, worksheet.flows_af11); end
  def test_flows_ag11; assert_equal(:ref, worksheet.flows_ag11); end
  def test_flows_ah11; assert_equal(:ref, worksheet.flows_ah11); end
  def test_flows_ai11; assert_equal(:ref, worksheet.flows_ai11); end
  def test_flows_aj11; assert_equal(:ref, worksheet.flows_aj11); end
  def test_flows_ak11; assert_equal(:ref, worksheet.flows_ak11); end
  def test_flows_al11; assert_equal(:ref, worksheet.flows_al11); end
  def test_flows_am11; assert_equal(:ref, worksheet.flows_am11); end
  def test_flows_an11; assert_equal(:ref, worksheet.flows_an11); end
  def test_flows_ao11; assert_equal(:ref, worksheet.flows_ao11); end
  def test_flows_aq11; assert_equal(:ref, worksheet.flows_aq11); end
  def test_flows_ar11; assert_equal(:ref, worksheet.flows_ar11); end
  def test_flows_as11; assert_equal(:ref, worksheet.flows_as11); end
  def test_flows_at11; assert_equal(:ref, worksheet.flows_at11); end
  def test_flows_au11; assert_equal(:ref, worksheet.flows_au11); end
  def test_flows_av11; assert_equal(:ref, worksheet.flows_av11); end
  def test_flows_aw11; assert_equal(:ref, worksheet.flows_aw11); end
  def test_flows_ax11; assert_equal(:ref, worksheet.flows_ax11); end
  def test_flows_ay11; assert_equal(:ref, worksheet.flows_ay11); end
  def test_flows_az11; assert_equal(:ref, worksheet.flows_az11); end
  def test_flows_t12; assert_equal("Coal", worksheet.flows_t12); end
  def test_flows_u12; assert_in_epsilon(3834.6998815001843, worksheet.flows_u12, 0.002); end
  def test_flows_v12; assert_in_epsilon(4387.614989564262, worksheet.flows_v12, 0.002); end
  def test_flows_w12; assert_in_epsilon(4996.3751818790915, worksheet.flows_w12, 0.002); end
  def test_flows_x12; assert_in_epsilon(5714.815533887691, worksheet.flows_x12, 0.002); end
  def test_flows_y12; assert_in_epsilon(6633.232367796969, worksheet.flows_y12, 0.002); end
  def test_flows_z12; assert_in_epsilon(7721.450173951748, worksheet.flows_z12, 0.002); end
  def test_flows_aa12; assert_in_epsilon(9105.093942728541, worksheet.flows_aa12, 0.002); end
  def test_flows_ab12; assert_in_epsilon(10630.791857661889, worksheet.flows_ab12, 0.002); end
  def test_flows_ac12; assert_in_epsilon(12335.462173556538, worksheet.flows_ac12, 0.002); end
  def test_flows_ad12; assert_in_epsilon(14269.992391048163, worksheet.flows_ad12, 0.002); end
  def test_flows_af12; assert_in_epsilon(3834.6998815001843, worksheet.flows_af12, 0.002); end
  def test_flows_ag12; assert_in_epsilon(4387.614989564262, worksheet.flows_ag12, 0.002); end
  def test_flows_ah12; assert_in_epsilon(4996.3751818790915, worksheet.flows_ah12, 0.002); end
  def test_flows_ai12; assert_in_epsilon(5714.815533887691, worksheet.flows_ai12, 0.002); end
  def test_flows_aj12; assert_in_epsilon(6633.232367796969, worksheet.flows_aj12, 0.002); end
  def test_flows_ak12; assert_in_epsilon(7721.450173951748, worksheet.flows_ak12, 0.002); end
  def test_flows_al12; assert_in_epsilon(9105.093942728541, worksheet.flows_al12, 0.002); end
  def test_flows_am12; assert_in_epsilon(10630.791857661889, worksheet.flows_am12, 0.002); end
  def test_flows_an12; assert_in_epsilon(12335.462173556538, worksheet.flows_an12, 0.002); end
  def test_flows_ao12; assert_in_epsilon(14269.992391048163, worksheet.flows_ao12, 0.002); end
  def test_flows_aq12; assert_in_delta(0.0, (worksheet.flows_aq12||0), 0.002); end
  def test_flows_ar12; assert_in_delta(0.0, (worksheet.flows_ar12||0), 0.002); end
  def test_flows_as12; assert_in_delta(0.0, (worksheet.flows_as12||0), 0.002); end
  def test_flows_at12; assert_in_delta(0.0, (worksheet.flows_at12||0), 0.002); end
  def test_flows_au12; assert_in_delta(0.0, (worksheet.flows_au12||0), 0.002); end
  def test_flows_av12; assert_in_delta(0.0, (worksheet.flows_av12||0), 0.002); end
  def test_flows_aw12; assert_in_delta(0.0, (worksheet.flows_aw12||0), 0.002); end
  def test_flows_ax12; assert_in_delta(0.0, (worksheet.flows_ax12||0), 0.002); end
  def test_flows_ay12; assert_in_delta(0.0, (worksheet.flows_ay12||0), 0.002); end
  def test_flows_az12; assert_in_delta(0.0, (worksheet.flows_az12||0), 0.002); end
  def test_flows_t13; assert_equal("Coal imports", worksheet.flows_t13); end
  def test_flows_u13; assert_in_delta(0.0, (worksheet.flows_u13||0), 0.002); end
  def test_flows_v13; assert_in_delta(0.0, (worksheet.flows_v13||0), 0.002); end
  def test_flows_w13; assert_in_delta(0.0, (worksheet.flows_w13||0), 0.002); end
  def test_flows_x13; assert_in_delta(0.0, (worksheet.flows_x13||0), 0.002); end
  def test_flows_y13; assert_in_delta(0.0, (worksheet.flows_y13||0), 0.002); end
  def test_flows_z13; assert_in_delta(0.0, (worksheet.flows_z13||0), 0.002); end
  def test_flows_aa13; assert_in_delta(0.0, (worksheet.flows_aa13||0), 0.002); end
  def test_flows_ab13; assert_in_delta(0.0, (worksheet.flows_ab13||0), 0.002); end
  def test_flows_ac13; assert_in_delta(0.0, (worksheet.flows_ac13||0), 0.002); end
  def test_flows_ad13; assert_in_delta(0.0, (worksheet.flows_ad13||0), 0.002); end
  def test_flows_af13; assert_in_delta(0.0, (worksheet.flows_af13||0), 0.002); end
  def test_flows_ag13; assert_in_delta(0.0, (worksheet.flows_ag13||0), 0.002); end
  def test_flows_ah13; assert_in_delta(0.0, (worksheet.flows_ah13||0), 0.002); end
  def test_flows_ai13; assert_in_delta(0.0, (worksheet.flows_ai13||0), 0.002); end
  def test_flows_aj13; assert_in_delta(0.0, (worksheet.flows_aj13||0), 0.002); end
  def test_flows_ak13; assert_in_delta(0.0, (worksheet.flows_ak13||0), 0.002); end
  def test_flows_al13; assert_in_delta(0.0, (worksheet.flows_al13||0), 0.002); end
  def test_flows_am13; assert_in_delta(0.0, (worksheet.flows_am13||0), 0.002); end
  def test_flows_an13; assert_in_delta(0.0, (worksheet.flows_an13||0), 0.002); end
  def test_flows_ao13; assert_in_delta(0.0, (worksheet.flows_ao13||0), 0.002); end
  def test_flows_c14; assert_equal("Agricultural 'waste'", worksheet.flows_c14); end
  def test_flows_e14; assert_equal("Bio-conversion", worksheet.flows_e14); end
  def test_flows_g14; assert_equal(:ref, worksheet.flows_g14); end
  def test_flows_h14; assert_equal(:ref, worksheet.flows_h14); end
  def test_flows_i14; assert_equal(:ref, worksheet.flows_i14); end
  def test_flows_j14; assert_equal(:ref, worksheet.flows_j14); end
  def test_flows_k14; assert_equal(:ref, worksheet.flows_k14); end
  def test_flows_l14; assert_equal(:ref, worksheet.flows_l14); end
  def test_flows_m14; assert_equal(:ref, worksheet.flows_m14); end
  def test_flows_n14; assert_equal(:ref, worksheet.flows_n14); end
  def test_flows_o14; assert_equal(:ref, worksheet.flows_o14); end
  def test_flows_p14; assert_equal(:ref, worksheet.flows_p14); end
  def test_flows_t14; assert_equal("Coal reserves", worksheet.flows_t14); end
  def test_flows_u14; assert_in_epsilon(3834.6998815001843, worksheet.flows_u14, 0.002); end
  def test_flows_v14; assert_in_epsilon(4387.614989564262, worksheet.flows_v14, 0.002); end
  def test_flows_w14; assert_in_epsilon(4996.3751818790915, worksheet.flows_w14, 0.002); end
  def test_flows_x14; assert_in_epsilon(5714.815533887691, worksheet.flows_x14, 0.002); end
  def test_flows_y14; assert_in_epsilon(6633.232367796969, worksheet.flows_y14, 0.002); end
  def test_flows_z14; assert_in_epsilon(7721.450173951748, worksheet.flows_z14, 0.002); end
  def test_flows_aa14; assert_in_epsilon(9105.093942728541, worksheet.flows_aa14, 0.002); end
  def test_flows_ab14; assert_in_epsilon(10630.791857661889, worksheet.flows_ab14, 0.002); end
  def test_flows_ac14; assert_in_epsilon(12335.462173556538, worksheet.flows_ac14, 0.002); end
  def test_flows_ad14; assert_in_epsilon(14269.992391048163, worksheet.flows_ad14, 0.002); end
  def test_flows_af14; assert_in_delta(0.0, (worksheet.flows_af14||0), 0.002); end
  def test_flows_ag14; assert_in_delta(0.0, (worksheet.flows_ag14||0), 0.002); end
  def test_flows_ah14; assert_in_delta(0.0, (worksheet.flows_ah14||0), 0.002); end
  def test_flows_ai14; assert_in_delta(0.0, (worksheet.flows_ai14||0), 0.002); end
  def test_flows_aj14; assert_in_delta(0.0, (worksheet.flows_aj14||0), 0.002); end
  def test_flows_ak14; assert_in_delta(0.0, (worksheet.flows_ak14||0), 0.002); end
  def test_flows_al14; assert_in_delta(0.0, (worksheet.flows_al14||0), 0.002); end
  def test_flows_am14; assert_in_delta(0.0, (worksheet.flows_am14||0), 0.002); end
  def test_flows_an14; assert_in_delta(0.0, (worksheet.flows_an14||0), 0.002); end
  def test_flows_ao14; assert_in_delta(0.0, (worksheet.flows_ao14||0), 0.002); end
  def test_flows_c15; assert_equal("Other waste", worksheet.flows_c15); end
  def test_flows_e15; assert_equal("Bio-conversion", worksheet.flows_e15); end
  def test_flows_g15; assert_equal(:ref, worksheet.flows_g15); end
  def test_flows_h15; assert_equal(:ref, worksheet.flows_h15); end
  def test_flows_i15; assert_equal(:ref, worksheet.flows_i15); end
  def test_flows_j15; assert_equal(:ref, worksheet.flows_j15); end
  def test_flows_k15; assert_equal(:ref, worksheet.flows_k15); end
  def test_flows_l15; assert_equal(:ref, worksheet.flows_l15); end
  def test_flows_m15; assert_equal(:ref, worksheet.flows_m15); end
  def test_flows_n15; assert_equal(:ref, worksheet.flows_n15); end
  def test_flows_o15; assert_equal(:ref, worksheet.flows_o15); end
  def test_flows_p15; assert_equal(:ref, worksheet.flows_p15); end
  def test_flows_t15; assert_equal("District heating", worksheet.flows_t15); end
  def test_flows_u15; assert_in_delta(0.0, (worksheet.flows_u15||0), 0.002); end
  def test_flows_v15; assert_in_delta(0.0, (worksheet.flows_v15||0), 0.002); end
  def test_flows_w15; assert_in_delta(0.0, (worksheet.flows_w15||0), 0.002); end
  def test_flows_x15; assert_in_delta(0.0, (worksheet.flows_x15||0), 0.002); end
  def test_flows_y15; assert_in_delta(0.0, (worksheet.flows_y15||0), 0.002); end
  def test_flows_z15; assert_in_delta(0.0, (worksheet.flows_z15||0), 0.002); end
  def test_flows_aa15; assert_in_delta(0.0, (worksheet.flows_aa15||0), 0.002); end
  def test_flows_ab15; assert_in_delta(0.0, (worksheet.flows_ab15||0), 0.002); end
  def test_flows_ac15; assert_in_delta(0.0, (worksheet.flows_ac15||0), 0.002); end
  def test_flows_ad15; assert_in_delta(0.0, (worksheet.flows_ad15||0), 0.002); end
  def test_flows_af15; assert_in_delta(0.0, (worksheet.flows_af15||0), 0.002); end
  def test_flows_ag15; assert_in_delta(0.0, (worksheet.flows_ag15||0), 0.002); end
  def test_flows_ah15; assert_in_delta(0.0, (worksheet.flows_ah15||0), 0.002); end
  def test_flows_ai15; assert_in_delta(0.0, (worksheet.flows_ai15||0), 0.002); end
  def test_flows_aj15; assert_in_delta(0.0, (worksheet.flows_aj15||0), 0.002); end
  def test_flows_ak15; assert_in_delta(0.0, (worksheet.flows_ak15||0), 0.002); end
  def test_flows_al15; assert_in_delta(0.0, (worksheet.flows_al15||0), 0.002); end
  def test_flows_am15; assert_in_delta(0.0, (worksheet.flows_am15||0), 0.002); end
  def test_flows_an15; assert_in_delta(0.0, (worksheet.flows_an15||0), 0.002); end
  def test_flows_ao15; assert_in_delta(0.0, (worksheet.flows_ao15||0), 0.002); end
  def test_flows_aq15; assert_in_delta(0.0, (worksheet.flows_aq15||0), 0.002); end
  def test_flows_ar15; assert_in_delta(0.0, (worksheet.flows_ar15||0), 0.002); end
  def test_flows_as15; assert_in_delta(0.0, (worksheet.flows_as15||0), 0.002); end
  def test_flows_at15; assert_in_delta(0.0, (worksheet.flows_at15||0), 0.002); end
  def test_flows_au15; assert_in_delta(0.0, (worksheet.flows_au15||0), 0.002); end
  def test_flows_av15; assert_in_delta(0.0, (worksheet.flows_av15||0), 0.002); end
  def test_flows_aw15; assert_in_delta(0.0, (worksheet.flows_aw15||0), 0.002); end
  def test_flows_ax15; assert_in_delta(0.0, (worksheet.flows_ax15||0), 0.002); end
  def test_flows_ay15; assert_in_delta(0.0, (worksheet.flows_ay15||0), 0.002); end
  def test_flows_az15; assert_in_delta(0.0, (worksheet.flows_az15||0), 0.002); end
  def test_flows_c16; assert_equal("Other waste", worksheet.flows_c16); end
  def test_flows_e16; assert_equal("Solid", worksheet.flows_e16); end
  def test_flows_g16; assert_equal(:ref, worksheet.flows_g16); end
  def test_flows_h16; assert_equal(:ref, worksheet.flows_h16); end
  def test_flows_i16; assert_equal(:ref, worksheet.flows_i16); end
  def test_flows_j16; assert_equal(:ref, worksheet.flows_j16); end
  def test_flows_k16; assert_equal(:ref, worksheet.flows_k16); end
  def test_flows_l16; assert_equal(:ref, worksheet.flows_l16); end
  def test_flows_m16; assert_equal(:ref, worksheet.flows_m16); end
  def test_flows_n16; assert_equal(:ref, worksheet.flows_n16); end
  def test_flows_o16; assert_equal(:ref, worksheet.flows_o16); end
  def test_flows_p16; assert_equal(:ref, worksheet.flows_p16); end
  def test_flows_t16; assert_equal("Domestic aviation", worksheet.flows_t16); end
  def test_flows_u16; assert_in_delta(0.0, (worksheet.flows_u16||0), 0.002); end
  def test_flows_v16; assert_in_delta(0.0, (worksheet.flows_v16||0), 0.002); end
  def test_flows_w16; assert_in_delta(0.0, (worksheet.flows_w16||0), 0.002); end
  def test_flows_x16; assert_in_delta(0.0, (worksheet.flows_x16||0), 0.002); end
  def test_flows_y16; assert_in_delta(0.0, (worksheet.flows_y16||0), 0.002); end
  def test_flows_z16; assert_in_delta(0.0, (worksheet.flows_z16||0), 0.002); end
  def test_flows_aa16; assert_in_delta(0.0, (worksheet.flows_aa16||0), 0.002); end
  def test_flows_ab16; assert_in_delta(0.0, (worksheet.flows_ab16||0), 0.002); end
  def test_flows_ac16; assert_in_delta(0.0, (worksheet.flows_ac16||0), 0.002); end
  def test_flows_ad16; assert_in_delta(0.0, (worksheet.flows_ad16||0), 0.002); end
  def test_flows_af16; assert_equal(:ref, worksheet.flows_af16); end
  def test_flows_ag16; assert_equal(:ref, worksheet.flows_ag16); end
  def test_flows_ah16; assert_equal(:ref, worksheet.flows_ah16); end
  def test_flows_ai16; assert_equal(:ref, worksheet.flows_ai16); end
  def test_flows_aj16; assert_equal(:ref, worksheet.flows_aj16); end
  def test_flows_ak16; assert_equal(:ref, worksheet.flows_ak16); end
  def test_flows_al16; assert_equal(:ref, worksheet.flows_al16); end
  def test_flows_am16; assert_equal(:ref, worksheet.flows_am16); end
  def test_flows_an16; assert_equal(:ref, worksheet.flows_an16); end
  def test_flows_ao16; assert_equal(:ref, worksheet.flows_ao16); end
  def test_flows_c17; assert_equal("Biomass imports", worksheet.flows_c17); end
  def test_flows_e17; assert_equal("Solid", worksheet.flows_e17); end
  def test_flows_g17; assert_equal(:ref, worksheet.flows_g17); end
  def test_flows_h17; assert_equal(:ref, worksheet.flows_h17); end
  def test_flows_i17; assert_equal(:ref, worksheet.flows_i17); end
  def test_flows_j17; assert_equal(:ref, worksheet.flows_j17); end
  def test_flows_k17; assert_equal(:ref, worksheet.flows_k17); end
  def test_flows_l17; assert_equal(:ref, worksheet.flows_l17); end
  def test_flows_m17; assert_equal(:ref, worksheet.flows_m17); end
  def test_flows_n17; assert_equal(:ref, worksheet.flows_n17); end
  def test_flows_o17; assert_equal(:ref, worksheet.flows_o17); end
  def test_flows_p17; assert_equal(:ref, worksheet.flows_p17); end
  def test_flows_t17; assert_equal("Electricity grid", worksheet.flows_t17); end
  def test_flows_u17; assert_equal(:ref, worksheet.flows_u17); end
  def test_flows_v17; assert_equal(:ref, worksheet.flows_v17); end
  def test_flows_w17; assert_equal(:ref, worksheet.flows_w17); end
  def test_flows_x17; assert_equal(:ref, worksheet.flows_x17); end
  def test_flows_y17; assert_equal(:ref, worksheet.flows_y17); end
  def test_flows_z17; assert_equal(:ref, worksheet.flows_z17); end
  def test_flows_aa17; assert_equal(:ref, worksheet.flows_aa17); end
  def test_flows_ab17; assert_equal(:ref, worksheet.flows_ab17); end
  def test_flows_ac17; assert_equal(:ref, worksheet.flows_ac17); end
  def test_flows_ad17; assert_equal(:ref, worksheet.flows_ad17); end
  def test_flows_af17; assert_equal(:ref, worksheet.flows_af17); end
  def test_flows_ag17; assert_equal(:ref, worksheet.flows_ag17); end
  def test_flows_ah17; assert_equal(:ref, worksheet.flows_ah17); end
  def test_flows_ai17; assert_equal(:ref, worksheet.flows_ai17); end
  def test_flows_aj17; assert_equal(:ref, worksheet.flows_aj17); end
  def test_flows_ak17; assert_equal(:ref, worksheet.flows_ak17); end
  def test_flows_al17; assert_equal(:ref, worksheet.flows_al17); end
  def test_flows_am17; assert_equal(:ref, worksheet.flows_am17); end
  def test_flows_an17; assert_equal(:ref, worksheet.flows_an17); end
  def test_flows_ao17; assert_equal(:ref, worksheet.flows_ao17); end
  def test_flows_aq17; assert_equal(:ref, worksheet.flows_aq17); end
  def test_flows_ar17; assert_equal(:ref, worksheet.flows_ar17); end
  def test_flows_as17; assert_equal(:ref, worksheet.flows_as17); end
  def test_flows_at17; assert_equal(:ref, worksheet.flows_at17); end
  def test_flows_au17; assert_equal(:ref, worksheet.flows_au17); end
  def test_flows_av17; assert_equal(:ref, worksheet.flows_av17); end
  def test_flows_aw17; assert_equal(:ref, worksheet.flows_aw17); end
  def test_flows_ax17; assert_equal(:ref, worksheet.flows_ax17); end
  def test_flows_ay17; assert_equal(:ref, worksheet.flows_ay17); end
  def test_flows_az17; assert_equal(:ref, worksheet.flows_az17); end
  def test_flows_c18; assert_equal("Biofuel imports", worksheet.flows_c18); end
  def test_flows_e18; assert_equal("Liquid", worksheet.flows_e18); end
  def test_flows_g18; assert_equal(:ref, worksheet.flows_g18); end
  def test_flows_h18; assert_equal(:ref, worksheet.flows_h18); end
  def test_flows_i18; assert_equal(:ref, worksheet.flows_i18); end
  def test_flows_j18; assert_equal(:ref, worksheet.flows_j18); end
  def test_flows_k18; assert_equal(:ref, worksheet.flows_k18); end
  def test_flows_l18; assert_equal(:ref, worksheet.flows_l18); end
  def test_flows_m18; assert_equal(:ref, worksheet.flows_m18); end
  def test_flows_n18; assert_equal(:ref, worksheet.flows_n18); end
  def test_flows_o18; assert_equal(:ref, worksheet.flows_o18); end
  def test_flows_p18; assert_equal(:ref, worksheet.flows_p18); end
  def test_flows_t18; assert_equal("Electricity imports", worksheet.flows_t18); end
  def test_flows_u18; assert_in_delta(0.0, (worksheet.flows_u18||0), 0.002); end
  def test_flows_v18; assert_in_delta(0.0, (worksheet.flows_v18||0), 0.002); end
  def test_flows_w18; assert_in_delta(0.0, (worksheet.flows_w18||0), 0.002); end
  def test_flows_x18; assert_in_delta(0.0, (worksheet.flows_x18||0), 0.002); end
  def test_flows_y18; assert_in_delta(0.0, (worksheet.flows_y18||0), 0.002); end
  def test_flows_z18; assert_in_delta(0.0, (worksheet.flows_z18||0), 0.002); end
  def test_flows_aa18; assert_in_delta(0.0, (worksheet.flows_aa18||0), 0.002); end
  def test_flows_ab18; assert_in_delta(0.0, (worksheet.flows_ab18||0), 0.002); end
  def test_flows_ac18; assert_in_delta(0.0, (worksheet.flows_ac18||0), 0.002); end
  def test_flows_ad18; assert_in_delta(0.0, (worksheet.flows_ad18||0), 0.002); end
  def test_flows_af18; assert_in_delta(0.0, (worksheet.flows_af18||0), 0.002); end
  def test_flows_ag18; assert_in_delta(0.0, (worksheet.flows_ag18||0), 0.002); end
  def test_flows_ah18; assert_in_delta(0.0, (worksheet.flows_ah18||0), 0.002); end
  def test_flows_ai18; assert_in_delta(0.0, (worksheet.flows_ai18||0), 0.002); end
  def test_flows_aj18; assert_in_delta(0.0, (worksheet.flows_aj18||0), 0.002); end
  def test_flows_ak18; assert_in_delta(0.0, (worksheet.flows_ak18||0), 0.002); end
  def test_flows_al18; assert_in_delta(0.0, (worksheet.flows_al18||0), 0.002); end
  def test_flows_am18; assert_in_delta(0.0, (worksheet.flows_am18||0), 0.002); end
  def test_flows_an18; assert_in_delta(0.0, (worksheet.flows_an18||0), 0.002); end
  def test_flows_ao18; assert_in_delta(0.0, (worksheet.flows_ao18||0), 0.002); end
  def test_flows_c19; assert_equal("Coal", worksheet.flows_c19); end
  def test_flows_e19; assert_equal("Solid", worksheet.flows_e19); end
  def test_flows_g19; assert_in_epsilon(3834.6998815001843, worksheet.flows_g19, 0.002); end
  def test_flows_h19; assert_in_epsilon(4387.614989564262, worksheet.flows_h19, 0.002); end
  def test_flows_i19; assert_in_epsilon(4996.3751818790915, worksheet.flows_i19, 0.002); end
  def test_flows_j19; assert_in_epsilon(5714.815533887691, worksheet.flows_j19, 0.002); end
  def test_flows_k19; assert_in_epsilon(6633.232367796969, worksheet.flows_k19, 0.002); end
  def test_flows_l19; assert_in_epsilon(7721.450173951748, worksheet.flows_l19, 0.002); end
  def test_flows_m19; assert_in_epsilon(9105.093942728541, worksheet.flows_m19, 0.002); end
  def test_flows_n19; assert_in_epsilon(10630.791857661889, worksheet.flows_n19, 0.002); end
  def test_flows_o19; assert_in_epsilon(12335.462173556538, worksheet.flows_o19, 0.002); end
  def test_flows_p19; assert_in_epsilon(14269.992391048163, worksheet.flows_p19, 0.002); end
  def test_flows_t19; assert_equal("Gas", worksheet.flows_t19); end
  def test_flows_u19; assert_equal(:ref, worksheet.flows_u19); end
  def test_flows_v19; assert_equal(:ref, worksheet.flows_v19); end
  def test_flows_w19; assert_equal(:ref, worksheet.flows_w19); end
  def test_flows_x19; assert_equal(:ref, worksheet.flows_x19); end
  def test_flows_y19; assert_equal(:ref, worksheet.flows_y19); end
  def test_flows_z19; assert_equal(:ref, worksheet.flows_z19); end
  def test_flows_aa19; assert_equal(:ref, worksheet.flows_aa19); end
  def test_flows_ab19; assert_equal(:ref, worksheet.flows_ab19); end
  def test_flows_ac19; assert_equal(:ref, worksheet.flows_ac19); end
  def test_flows_ad19; assert_equal(:ref, worksheet.flows_ad19); end
  def test_flows_af19; assert_equal(:ref, worksheet.flows_af19); end
  def test_flows_ag19; assert_equal(:ref, worksheet.flows_ag19); end
  def test_flows_ah19; assert_equal(:ref, worksheet.flows_ah19); end
  def test_flows_ai19; assert_equal(:ref, worksheet.flows_ai19); end
  def test_flows_aj19; assert_equal(:ref, worksheet.flows_aj19); end
  def test_flows_ak19; assert_equal(:ref, worksheet.flows_ak19); end
  def test_flows_al19; assert_equal(:ref, worksheet.flows_al19); end
  def test_flows_am19; assert_equal(:ref, worksheet.flows_am19); end
  def test_flows_an19; assert_equal(:ref, worksheet.flows_an19); end
  def test_flows_ao19; assert_equal(:ref, worksheet.flows_ao19); end
  def test_flows_aq19; assert_equal(:ref, worksheet.flows_aq19); end
  def test_flows_ar19; assert_equal(:ref, worksheet.flows_ar19); end
  def test_flows_as19; assert_equal(:ref, worksheet.flows_as19); end
  def test_flows_at19; assert_equal(:ref, worksheet.flows_at19); end
  def test_flows_au19; assert_equal(:ref, worksheet.flows_au19); end
  def test_flows_av19; assert_equal(:ref, worksheet.flows_av19); end
  def test_flows_aw19; assert_equal(:ref, worksheet.flows_aw19); end
  def test_flows_ax19; assert_equal(:ref, worksheet.flows_ax19); end
  def test_flows_ay19; assert_equal(:ref, worksheet.flows_ay19); end
  def test_flows_az19; assert_equal(:ref, worksheet.flows_az19); end
  def test_flows_c20; assert_equal("Oil", worksheet.flows_c20); end
  def test_flows_e20; assert_equal("Liquid", worksheet.flows_e20); end
  def test_flows_g20; assert_in_epsilon(553.8553914230257, worksheet.flows_g20, 0.002); end
  def test_flows_h20; assert_in_epsilon(649.6521092479593, worksheet.flows_h20, 0.002); end
  def test_flows_i20; assert_in_epsilon(745.6199008308481, worksheet.flows_i20, 0.002); end
  def test_flows_j20; assert_in_epsilon(838.6799743554361, worksheet.flows_j20, 0.002); end
  def test_flows_k20; assert_in_epsilon(928.7166761345673, worksheet.flows_k20, 0.002); end
  def test_flows_l20; assert_in_epsilon(1016.9935964965312, worksheet.flows_l20, 0.002); end
  def test_flows_m20; assert_in_epsilon(1162.557114168934, worksheet.flows_m20, 0.002); end
  def test_flows_n20; assert_in_epsilon(1385.3655103279275, worksheet.flows_n20, 0.002); end
  def test_flows_o20; assert_in_epsilon(1346.2284749255707, worksheet.flows_o20, 0.002); end
  def test_flows_p20; assert_in_epsilon(1368.942146699088, worksheet.flows_p20, 0.002); end
  def test_flows_t20; assert_equal("Gas imports", worksheet.flows_t20); end
  def test_flows_u20; assert_in_epsilon(127.3371537764063, worksheet.flows_u20, 0.002); end
  def test_flows_v20; assert_in_epsilon(162.08087954412628, worksheet.flows_v20, 0.002); end
  def test_flows_w20; assert_in_epsilon(205.30358602276903, worksheet.flows_w20, 0.002); end
  def test_flows_x20; assert_in_epsilon(240.27509386351113, worksheet.flows_x20, 0.002); end
  def test_flows_y20; assert_in_epsilon(289.75570253857563, worksheet.flows_y20, 0.002); end
  def test_flows_z20; assert_in_epsilon(322.77362179445345, worksheet.flows_z20, 0.002); end
  def test_flows_aa20; assert_in_epsilon(310.93682089270357, worksheet.flows_aa20, 0.002); end
  def test_flows_ab20; assert_in_epsilon(362.84884987472964, worksheet.flows_ab20, 0.002); end
  def test_flows_ac20; assert_in_epsilon(412.59106615573387, worksheet.flows_ac20, 0.002); end
  def test_flows_ad20; assert_in_epsilon(455.0221337045418, worksheet.flows_ad20, 0.002); end
  def test_flows_af20; assert_in_delta(0.0, (worksheet.flows_af20||0), 0.002); end
  def test_flows_ag20; assert_in_delta(0.0, (worksheet.flows_ag20||0), 0.002); end
  def test_flows_ah20; assert_in_delta(0.0, (worksheet.flows_ah20||0), 0.002); end
  def test_flows_ai20; assert_in_delta(0.0, (worksheet.flows_ai20||0), 0.002); end
  def test_flows_aj20; assert_in_delta(0.0, (worksheet.flows_aj20||0), 0.002); end
  def test_flows_ak20; assert_in_delta(0.0, (worksheet.flows_ak20||0), 0.002); end
  def test_flows_al20; assert_in_delta(0.0, (worksheet.flows_al20||0), 0.002); end
  def test_flows_am20; assert_in_delta(0.0, (worksheet.flows_am20||0), 0.002); end
  def test_flows_an20; assert_in_delta(0.0, (worksheet.flows_an20||0), 0.002); end
  def test_flows_ao20; assert_in_delta(0.0, (worksheet.flows_ao20||0), 0.002); end
  def test_flows_c21; assert_equal("Natural Gas", worksheet.flows_c21); end
  def test_flows_e21; assert_equal("Gas", worksheet.flows_e21); end
  def test_flows_g21; assert_in_epsilon(188.5521537764063, worksheet.flows_g21, 0.002); end
  def test_flows_h21; assert_in_epsilon(206.8808795441263, worksheet.flows_h21, 0.002); end
  def test_flows_i21; assert_in_epsilon(231.75753802276904, worksheet.flows_i21, 0.002); end
  def test_flows_j21; assert_in_epsilon(255.89588797999113, worksheet.flows_j21, 0.002); end
  def test_flows_k21; assert_in_epsilon(289.75570253857563, worksheet.flows_k21, 0.002); end
  def test_flows_l21; assert_in_epsilon(322.77362179445345, worksheet.flows_l21, 0.002); end
  def test_flows_m21; assert_in_epsilon(310.93682089270357, worksheet.flows_m21, 0.002); end
  def test_flows_n21; assert_in_epsilon(362.84884987472964, worksheet.flows_n21, 0.002); end
  def test_flows_o21; assert_in_epsilon(412.59106615573387, worksheet.flows_o21, 0.002); end
  def test_flows_p21; assert_in_epsilon(455.0221337045418, worksheet.flows_p21, 0.002); end
  def test_flows_t21; assert_equal("Gas reserves", worksheet.flows_t21); end
  def test_flows_u21; assert_in_epsilon(61.214999999999996, worksheet.flows_u21, 0.002); end
  def test_flows_v21; assert_in_epsilon(44.8, worksheet.flows_v21, 0.002); end
  def test_flows_w21; assert_in_epsilon(26.453952000000008, worksheet.flows_w21, 0.002); end
  def test_flows_x21; assert_in_epsilon(15.62079411648001, worksheet.flows_x21, 0.002); end
  def test_flows_y21; assert_in_delta(0.0, (worksheet.flows_y21||0), 0.002); end
  def test_flows_z21; assert_in_delta(0.0, (worksheet.flows_z21||0), 0.002); end
  def test_flows_aa21; assert_in_delta(0.0, (worksheet.flows_aa21||0), 0.002); end
  def test_flows_ab21; assert_in_delta(0.0, (worksheet.flows_ab21||0), 0.002); end
  def test_flows_ac21; assert_in_delta(0.0, (worksheet.flows_ac21||0), 0.002); end
  def test_flows_ad21; assert_in_delta(0.0, (worksheet.flows_ad21||0), 0.002); end
  def test_flows_af21; assert_in_delta(0.0, (worksheet.flows_af21||0), 0.002); end
  def test_flows_ag21; assert_in_delta(0.0, (worksheet.flows_ag21||0), 0.002); end
  def test_flows_ah21; assert_in_delta(0.0, (worksheet.flows_ah21||0), 0.002); end
  def test_flows_ai21; assert_in_delta(0.0, (worksheet.flows_ai21||0), 0.002); end
  def test_flows_aj21; assert_in_delta(0.0, (worksheet.flows_aj21||0), 0.002); end
  def test_flows_ak21; assert_in_delta(0.0, (worksheet.flows_ak21||0), 0.002); end
  def test_flows_al21; assert_in_delta(0.0, (worksheet.flows_al21||0), 0.002); end
  def test_flows_am21; assert_in_delta(0.0, (worksheet.flows_am21||0), 0.002); end
  def test_flows_an21; assert_in_delta(0.0, (worksheet.flows_an21||0), 0.002); end
  def test_flows_ao21; assert_in_delta(0.0, (worksheet.flows_ao21||0), 0.002); end
  def test_flows_c22; assert_equal("Solar", worksheet.flows_c22); end
  def test_flows_d22; assert_equal("Re.d", worksheet.flows_d22); end
  def test_flows_e22; assert_equal("Electricity end use", worksheet.flows_e22); end
  def test_flows_f22; assert_equal("R.01", worksheet.flows_f22); end
  def test_flows_g22; assert_in_delta(0.0, (worksheet.flows_g22||0), 0.002); end
  def test_flows_h22; assert_in_delta(0.006711326312769469, worksheet.flows_h22, 0.002); end
  def test_flows_i22; assert_in_delta(0.008340001509972272, worksheet.flows_i22, 0.002); end
  def test_flows_j22; assert_in_delta(0.010299663349527349, worksheet.flows_j22, 0.002); end
  def test_flows_k22; assert_in_delta(0.012593123290769876, worksheet.flows_k22, 0.002); end
  def test_flows_l22; assert_in_delta(0.015359240430222318, worksheet.flows_l22, 0.002); end
  def test_flows_m22; assert_in_delta(0.018850017971518945, worksheet.flows_m22, 0.002); end
  def test_flows_n22; assert_in_delta(0.022758673751466917, worksheet.flows_n22, 0.002); end
  def test_flows_o22; assert_in_delta(0.026934538148770892, worksheet.flows_o22, 0.002); end
  def test_flows_p22; assert_in_delta(0.03146246150474343, worksheet.flows_p22, 0.002); end
  def test_flows_t22; assert_equal("Geosequestration", worksheet.flows_t22); end
  def test_flows_u22; assert_in_delta(0.0, (worksheet.flows_u22||0), 0.002); end
  def test_flows_v22; assert_in_delta(0.0, (worksheet.flows_v22||0), 0.002); end
  def test_flows_w22; assert_in_delta(0.0, (worksheet.flows_w22||0), 0.002); end
  def test_flows_x22; assert_in_delta(0.0, (worksheet.flows_x22||0), 0.002); end
  def test_flows_y22; assert_in_delta(0.0, (worksheet.flows_y22||0), 0.002); end
  def test_flows_z22; assert_in_delta(0.0, (worksheet.flows_z22||0), 0.002); end
  def test_flows_aa22; assert_in_delta(0.0, (worksheet.flows_aa22||0), 0.002); end
  def test_flows_ab22; assert_in_delta(0.0, (worksheet.flows_ab22||0), 0.002); end
  def test_flows_ac22; assert_in_delta(0.0, (worksheet.flows_ac22||0), 0.002); end
  def test_flows_ad22; assert_in_delta(0.0, (worksheet.flows_ad22||0), 0.002); end
  def test_flows_af22; assert_equal(:ref, worksheet.flows_af22); end
  def test_flows_ag22; assert_equal(:na, worksheet.flows_ag22); end
  def test_flows_ah22; assert_equal(:na, worksheet.flows_ah22); end
  def test_flows_ai22; assert_equal(:na, worksheet.flows_ai22); end
  def test_flows_aj22; assert_equal(:na, worksheet.flows_aj22); end
  def test_flows_ak22; assert_equal(:na, worksheet.flows_ak22); end
  def test_flows_al22; assert_equal(:na, worksheet.flows_al22); end
  def test_flows_am22; assert_equal(:na, worksheet.flows_am22); end
  def test_flows_an22; assert_equal(:na, worksheet.flows_an22); end
  def test_flows_ao22; assert_equal(:na, worksheet.flows_ao22); end
  def test_flows_c23; assert_equal("Solar", worksheet.flows_c23); end
  def test_flows_d23; assert_equal("Re.e", worksheet.flows_d23); end
  def test_flows_e23; assert_equal("Electricity grid", worksheet.flows_e23); end
  def test_flows_f23; assert_equal("R.01", worksheet.flows_f23); end
  def test_flows_g23; assert_in_delta(0.0, (worksheet.flows_g23||0), 0.002); end
  def test_flows_h23; assert_in_delta(0.0, (worksheet.flows_h23||0), 0.002); end
  def test_flows_i23; assert_in_epsilon(10.650058847999999, worksheet.flows_i23, 0.002); end
  def test_flows_j23; assert_in_epsilon(10.650058847999999, worksheet.flows_j23, 0.002); end
  def test_flows_k23; assert_in_epsilon(10.650058847999999, worksheet.flows_k23, 0.002); end
  def test_flows_l23; assert_in_epsilon(10.650058847999999, worksheet.flows_l23, 0.002); end
  def test_flows_m23; assert_in_epsilon(10.650058847999999, worksheet.flows_m23, 0.002); end
  def test_flows_n23; assert_in_epsilon(10.650058847999999, worksheet.flows_n23, 0.002); end
  def test_flows_o23; assert_in_epsilon(10.650058847999999, worksheet.flows_o23, 0.002); end
  def test_flows_p23; assert_in_epsilon(10.650058847999999, worksheet.flows_p23, 0.002); end
  def test_flows_t23; assert_equal("Geothermal", worksheet.flows_t23); end
  def test_flows_u23; assert_in_delta(0.0, (worksheet.flows_u23||0), 0.002); end
  def test_flows_v23; assert_in_delta(0.0, (worksheet.flows_v23||0), 0.002); end
  def test_flows_w23; assert_in_delta(0.0, (worksheet.flows_w23||0), 0.002); end
  def test_flows_x23; assert_in_delta(0.0, (worksheet.flows_x23||0), 0.002); end
  def test_flows_y23; assert_in_delta(0.0, (worksheet.flows_y23||0), 0.002); end
  def test_flows_z23; assert_in_delta(0.0, (worksheet.flows_z23||0), 0.002); end
  def test_flows_aa23; assert_in_delta(0.0, (worksheet.flows_aa23||0), 0.002); end
  def test_flows_ab23; assert_in_delta(0.0, (worksheet.flows_ab23||0), 0.002); end
  def test_flows_ac23; assert_in_delta(0.0, (worksheet.flows_ac23||0), 0.002); end
  def test_flows_ad23; assert_in_delta(0.0, (worksheet.flows_ad23||0), 0.002); end
  def test_flows_af23; assert_in_delta(0.0, (worksheet.flows_af23||0), 0.002); end
  def test_flows_ag23; assert_in_delta(0.0, (worksheet.flows_ag23||0), 0.002); end
  def test_flows_ah23; assert_in_delta(0.0, (worksheet.flows_ah23||0), 0.002); end
  def test_flows_ai23; assert_in_delta(0.0, (worksheet.flows_ai23||0), 0.002); end
  def test_flows_aj23; assert_in_delta(0.0, (worksheet.flows_aj23||0), 0.002); end
  def test_flows_ak23; assert_in_delta(0.0, (worksheet.flows_ak23||0), 0.002); end
  def test_flows_al23; assert_in_delta(0.0, (worksheet.flows_al23||0), 0.002); end
  def test_flows_am23; assert_in_delta(0.0, (worksheet.flows_am23||0), 0.002); end
  def test_flows_an23; assert_in_delta(0.0, (worksheet.flows_an23||0), 0.002); end
  def test_flows_ao23; assert_in_delta(0.0, (worksheet.flows_ao23||0), 0.002); end
  def test_flows_c24; assert_equal("Solar", worksheet.flows_c24); end
  def test_flows_d24; assert_equal("Re.c", worksheet.flows_d24); end
  def test_flows_e24; assert_equal("Electricity grid", worksheet.flows_e24); end
  def test_flows_f24; assert_equal("R.01", worksheet.flows_f24); end
  def test_flows_g24; assert_in_delta(0.0, (worksheet.flows_g24||0), 0.002); end
  def test_flows_h24; assert_in_delta(0.0, (worksheet.flows_h24||0), 0.002); end
  def test_flows_i24; assert_in_epsilon(1.9881288, worksheet.flows_i24, 0.002); end
  def test_flows_j24; assert_in_epsilon(5.301676800000001, worksheet.flows_j24, 0.002); end
  def test_flows_k24; assert_in_epsilon(5.301676800000001, worksheet.flows_k24, 0.002); end
  def test_flows_l24; assert_in_epsilon(5.301676800000001, worksheet.flows_l24, 0.002); end
  def test_flows_m24; assert_in_epsilon(5.301676800000001, worksheet.flows_m24, 0.002); end
  def test_flows_n24; assert_in_epsilon(5.301676800000001, worksheet.flows_n24, 0.002); end
  def test_flows_o24; assert_in_epsilon(5.301676800000001, worksheet.flows_o24, 0.002); end
  def test_flows_p24; assert_in_epsilon(5.301676800000001, worksheet.flows_p24, 0.002); end
  def test_flows_t24; assert_equal("H2", worksheet.flows_t24); end
  def test_flows_u24; assert_in_delta(0.0, (worksheet.flows_u24||0), 0.002); end
  def test_flows_v24; assert_in_delta(0.0, (worksheet.flows_v24||0), 0.002); end
  def test_flows_w24; assert_in_epsilon(-1.7173138929823613, worksheet.flows_w24, 0.002); end
  def test_flows_x24; assert_in_epsilon(-4.028821762223899, worksheet.flows_x24, 0.002); end
  def test_flows_y24; assert_in_epsilon(-6.86817743367345, worksheet.flows_y24, 0.002); end
  def test_flows_z24; assert_in_epsilon(-10.312317762429334, worksheet.flows_z24, 0.002); end
  def test_flows_aa24; assert_in_epsilon(-14.08696617000999, worksheet.flows_aa24, 0.002); end
  def test_flows_ab24; assert_in_epsilon(-22.264881242815637, worksheet.flows_ab24, 0.002); end
  def test_flows_ac24; assert_in_epsilon(-23.355137341712116, worksheet.flows_ac24, 0.002); end
  def test_flows_ad24; assert_in_epsilon(-26.251659343904574, worksheet.flows_ad24, 0.002); end
  def test_flows_af24; assert_in_delta(0.0, (worksheet.flows_af24||0), 0.002); end
  def test_flows_ag24; assert_in_delta(0.0, (worksheet.flows_ag24||0), 0.002); end
  def test_flows_ah24; assert_in_epsilon(1.7173138929823613, worksheet.flows_ah24, 0.002); end
  def test_flows_ai24; assert_in_epsilon(4.028821762223899, worksheet.flows_ai24, 0.002); end
  def test_flows_aj24; assert_in_epsilon(6.86817743367345, worksheet.flows_aj24, 0.002); end
  def test_flows_ak24; assert_in_epsilon(10.312317762429334, worksheet.flows_ak24, 0.002); end
  def test_flows_al24; assert_in_epsilon(14.08696617000999, worksheet.flows_al24, 0.002); end
  def test_flows_am24; assert_in_epsilon(22.264881242815637, worksheet.flows_am24, 0.002); end
  def test_flows_an24; assert_in_epsilon(23.355137341712116, worksheet.flows_an24, 0.002); end
  def test_flows_ao24; assert_in_epsilon(26.251659343904574, worksheet.flows_ao24, 0.002); end
  def test_flows_aq24; assert_in_delta(0.0, (worksheet.flows_aq24||0), 0.002); end
  def test_flows_ar24; assert_in_delta(0.0, (worksheet.flows_ar24||0), 0.002); end
  def test_flows_as24; assert_in_epsilon(-3.4346277859647225, worksheet.flows_as24, 0.002); end
  def test_flows_at24; assert_in_epsilon(-8.057643524447798, worksheet.flows_at24, 0.002); end
  def test_flows_au24; assert_in_epsilon(-13.7363548673469, worksheet.flows_au24, 0.002); end
  def test_flows_av24; assert_in_epsilon(-20.624635524858668, worksheet.flows_av24, 0.002); end
  def test_flows_aw24; assert_in_epsilon(-28.17393234001998, worksheet.flows_aw24, 0.002); end
  def test_flows_ax24; assert_in_epsilon(-44.529762485631274, worksheet.flows_ax24, 0.002); end
  def test_flows_ay24; assert_in_epsilon(-46.71027468342423, worksheet.flows_ay24, 0.002); end
  def test_flows_az24; assert_in_epsilon(-52.50331868780915, worksheet.flows_az24, 0.002); end
  def test_flows_c26; assert_equal("Bio-conversion", worksheet.flows_c26); end
  def test_flows_e26; assert_equal("Solid", worksheet.flows_e26); end
  def test_flows_g26; assert_equal(:ref, worksheet.flows_g26); end
  def test_flows_h26; assert_equal(:ref, worksheet.flows_h26); end
  def test_flows_i26; assert_equal(:ref, worksheet.flows_i26); end
  def test_flows_j26; assert_equal(:ref, worksheet.flows_j26); end
  def test_flows_k26; assert_equal(:ref, worksheet.flows_k26); end
  def test_flows_l26; assert_equal(:ref, worksheet.flows_l26); end
  def test_flows_m26; assert_equal(:ref, worksheet.flows_m26); end
  def test_flows_n26; assert_equal(:ref, worksheet.flows_n26); end
  def test_flows_o26; assert_equal(:ref, worksheet.flows_o26); end
  def test_flows_p26; assert_equal(:ref, worksheet.flows_p26); end
  def test_flows_t26; assert_equal("H2 conversion", worksheet.flows_t26); end
  def test_flows_u26; assert_in_delta(0.0, (worksheet.flows_u26||0), 0.002); end
  def test_flows_v26; assert_in_delta(0.0, (worksheet.flows_v26||0), 0.002); end
  def test_flows_w26; assert_in_epsilon(2.451264840412251, worksheet.flows_w26, 0.002); end
  def test_flows_x26; assert_in_epsilon(5.875111875983116, worksheet.flows_x26, 0.002); end
  def test_flows_y26; assert_in_epsilon(9.91805642072119, worksheet.flows_y26, 0.002); end
  def test_flows_z26; assert_in_epsilon(14.697317090407353, worksheet.flows_z26, 0.002); end
  def test_flows_aa26; assert_in_epsilon(19.749252363226145, worksheet.flows_aa26, 0.002); end
  def test_flows_ab26; assert_in_epsilon(30.687750321846366, worksheet.flows_ab26, 0.002); end
  def test_flows_ac26; assert_in_epsilon(31.404540776698518, worksheet.flows_ac26, 0.002); end
  def test_flows_ad26; assert_in_epsilon(34.09306408299295, worksheet.flows_ad26, 0.002); end
  def test_flows_af26; assert_in_delta(0.0, (worksheet.flows_af26||0), 0.002); end
  def test_flows_ag26; assert_in_delta(0.0, (worksheet.flows_ag26||0), 0.002); end
  def test_flows_ah26; assert_in_epsilon(-2.451264840412251, worksheet.flows_ah26, 0.002); end
  def test_flows_ai26; assert_in_epsilon(-5.875111875983116, worksheet.flows_ai26, 0.002); end
  def test_flows_aj26; assert_in_epsilon(-9.91805642072119, worksheet.flows_aj26, 0.002); end
  def test_flows_ak26; assert_in_epsilon(-14.69628585863111, worksheet.flows_ak26, 0.002); end
  def test_flows_al26; assert_in_epsilon(-19.747843666609143, worksheet.flows_al26, 0.002); end
  def test_flows_am26; assert_in_epsilon(-30.687750321846366, worksheet.flows_am26, 0.002); end
  def test_flows_an26; assert_in_epsilon(-31.404540776698518, worksheet.flows_an26, 0.002); end
  def test_flows_ao26; assert_in_epsilon(-34.09306408299295, worksheet.flows_ao26, 0.002); end
  def test_flows_aq26; assert_in_delta(0.0, (worksheet.flows_aq26||0), 0.002); end
  def test_flows_ar26; assert_in_delta(0.0, (worksheet.flows_ar26||0), 0.002); end
  def test_flows_as26; assert_in_epsilon(4.902529680824502, worksheet.flows_as26, 0.002); end
  def test_flows_at26; assert_in_epsilon(11.750223751966232, worksheet.flows_at26, 0.002); end
  def test_flows_au26; assert_in_epsilon(19.83611284144238, worksheet.flows_au26, 0.002); end
  def test_flows_av26; assert_in_epsilon(29.393602949038463, worksheet.flows_av26, 0.002); end
  def test_flows_aw26; assert_in_epsilon(39.49709602983529, worksheet.flows_aw26, 0.002); end
  def test_flows_ax26; assert_in_epsilon(61.37550064369273, worksheet.flows_ax26, 0.002); end
  def test_flows_ay26; assert_in_epsilon(62.809081553397036, worksheet.flows_ay26, 0.002); end
  def test_flows_az26; assert_in_epsilon(68.1861281659859, worksheet.flows_az26, 0.002); end
  def test_flows_c27; assert_equal("Bio-conversion", worksheet.flows_c27); end
  def test_flows_e27; assert_equal("Liquid", worksheet.flows_e27); end
  def test_flows_g27; assert_equal(:ref, worksheet.flows_g27); end
  def test_flows_h27; assert_equal(:ref, worksheet.flows_h27); end
  def test_flows_i27; assert_equal(:ref, worksheet.flows_i27); end
  def test_flows_j27; assert_equal(:ref, worksheet.flows_j27); end
  def test_flows_k27; assert_equal(:ref, worksheet.flows_k27); end
  def test_flows_l27; assert_equal(:ref, worksheet.flows_l27); end
  def test_flows_m27; assert_equal(:ref, worksheet.flows_m27); end
  def test_flows_n27; assert_equal(:ref, worksheet.flows_n27); end
  def test_flows_o27; assert_equal(:ref, worksheet.flows_o27); end
  def test_flows_p27; assert_equal(:ref, worksheet.flows_p27); end
  def test_flows_t27; assert_equal("Heating and cooling - commercial", worksheet.flows_t27); end
  def test_flows_u27; assert_in_delta(0.0, (worksheet.flows_u27||0), 0.002); end
  def test_flows_v27; assert_in_delta(0.0, (worksheet.flows_v27||0), 0.002); end
  def test_flows_w27; assert_in_delta(0.0, (worksheet.flows_w27||0), 0.002); end
  def test_flows_x27; assert_in_delta(0.0, (worksheet.flows_x27||0), 0.002); end
  def test_flows_y27; assert_in_delta(0.0, (worksheet.flows_y27||0), 0.002); end
  def test_flows_z27; assert_in_delta(0.0, (worksheet.flows_z27||0), 0.002); end
  def test_flows_aa27; assert_in_delta(0.0, (worksheet.flows_aa27||0), 0.002); end
  def test_flows_ab27; assert_in_delta(0.0, (worksheet.flows_ab27||0), 0.002); end
  def test_flows_ac27; assert_in_delta(0.0, (worksheet.flows_ac27||0), 0.002); end
  def test_flows_ad27; assert_in_delta(0.0, (worksheet.flows_ad27||0), 0.002); end
  def test_flows_af27; assert_in_epsilon(-205.2734052144267, worksheet.flows_af27, 0.002); end
  def test_flows_ag27; assert_in_epsilon(-226.43626538795172, worksheet.flows_ag27, 0.002); end
  def test_flows_ah27; assert_in_epsilon(-250.01276091525716, worksheet.flows_ah27, 0.002); end
  def test_flows_ai27; assert_in_epsilon(-275.09795514876106, worksheet.flows_ai27, 0.002); end
  def test_flows_aj27; assert_in_epsilon(-300.5432290339171, worksheet.flows_aj27, 0.002); end
  def test_flows_ak27; assert_in_epsilon(-328.144262181597, worksheet.flows_ak27, 0.002); end
  def test_flows_al27; assert_in_epsilon(-360.82500144934176, worksheet.flows_al27, 0.002); end
  def test_flows_am27; assert_in_epsilon(-391.4504371248232, worksheet.flows_am27, 0.002); end
  def test_flows_an27; assert_in_epsilon(-417.4754142034692, worksheet.flows_an27, 0.002); end
  def test_flows_ao27; assert_in_epsilon(-427.6066889855795, worksheet.flows_ao27, 0.002); end
  def test_flows_c28; assert_equal("Bio-conversion", worksheet.flows_c28); end
  def test_flows_e28; assert_equal("Gas", worksheet.flows_e28); end
  def test_flows_g28; assert_equal(:ref, worksheet.flows_g28); end
  def test_flows_h28; assert_equal(:ref, worksheet.flows_h28); end
  def test_flows_i28; assert_equal(:ref, worksheet.flows_i28); end
  def test_flows_j28; assert_equal(:ref, worksheet.flows_j28); end
  def test_flows_k28; assert_equal(:ref, worksheet.flows_k28); end
  def test_flows_l28; assert_equal(:ref, worksheet.flows_l28); end
  def test_flows_m28; assert_equal(:ref, worksheet.flows_m28); end
  def test_flows_n28; assert_equal(:ref, worksheet.flows_n28); end
  def test_flows_o28; assert_equal(:ref, worksheet.flows_o28); end
  def test_flows_p28; assert_equal(:ref, worksheet.flows_p28); end
  def test_flows_t28; assert_equal("Heating and cooling - homes", worksheet.flows_t28); end
  def test_flows_u28; assert_in_delta(0.0, (worksheet.flows_u28||0), 0.002); end
  def test_flows_v28; assert_in_delta(0.0, (worksheet.flows_v28||0), 0.002); end
  def test_flows_w28; assert_in_delta(0.0, (worksheet.flows_w28||0), 0.002); end
  def test_flows_x28; assert_in_delta(0.0, (worksheet.flows_x28||0), 0.002); end
  def test_flows_y28; assert_in_delta(0.0, (worksheet.flows_y28||0), 0.002); end
  def test_flows_z28; assert_in_delta(0.0, (worksheet.flows_z28||0), 0.002); end
  def test_flows_aa28; assert_in_delta(0.0, (worksheet.flows_aa28||0), 0.002); end
  def test_flows_ab28; assert_in_delta(0.0, (worksheet.flows_ab28||0), 0.002); end
  def test_flows_ac28; assert_in_delta(0.0, (worksheet.flows_ac28||0), 0.002); end
  def test_flows_ad28; assert_in_delta(0.0, (worksheet.flows_ad28||0), 0.002); end
  def test_flows_af28; assert_in_epsilon(-44.952051758738214, worksheet.flows_af28, 0.002); end
  def test_flows_ag28; assert_in_epsilon(-47.961862681020335, worksheet.flows_ag28, 0.002); end
  def test_flows_ah28; assert_in_epsilon(-51.91555755164863, worksheet.flows_ah28, 0.002); end
  def test_flows_ai28; assert_in_epsilon(-55.81073917664245, worksheet.flows_ai28, 0.002); end
  def test_flows_aj28; assert_in_epsilon(-59.5868456595081, worksheet.flows_aj28, 0.002); end
  def test_flows_ak28; assert_in_epsilon(-63.097135568940544, worksheet.flows_ak28, 0.002); end
  def test_flows_al28; assert_in_epsilon(-64.04433044171039, worksheet.flows_al28, 0.002); end
  def test_flows_am28; assert_in_epsilon(-64.89895961590851, worksheet.flows_am28, 0.002); end
  def test_flows_an28; assert_in_epsilon(-65.4967540529155, worksheet.flows_an28, 0.002); end
  def test_flows_ao28; assert_in_epsilon(-66.04490445425728, worksheet.flows_ao28, 0.002); end
  def test_flows_c29; assert_equal("Bio-conversion", worksheet.flows_c29); end
  def test_flows_e29; assert_equal("Losses", worksheet.flows_e29); end
  def test_flows_g29; assert_equal(:ref, worksheet.flows_g29); end
  def test_flows_h29; assert_equal(:ref, worksheet.flows_h29); end
  def test_flows_i29; assert_equal(:ref, worksheet.flows_i29); end
  def test_flows_j29; assert_equal(:ref, worksheet.flows_j29); end
  def test_flows_k29; assert_equal(:ref, worksheet.flows_k29); end
  def test_flows_l29; assert_equal(:ref, worksheet.flows_l29); end
  def test_flows_m29; assert_equal(:ref, worksheet.flows_m29); end
  def test_flows_n29; assert_equal(:ref, worksheet.flows_n29); end
  def test_flows_o29; assert_equal(:ref, worksheet.flows_o29); end
  def test_flows_p29; assert_equal(:ref, worksheet.flows_p29); end
  def test_flows_t29; assert_equal("Hydro", worksheet.flows_t29); end
  def test_flows_u29; assert_in_epsilon(5.285898, worksheet.flows_u29, 0.002); end
  def test_flows_v29; assert_in_epsilon(5.285898, worksheet.flows_v29, 0.002); end
  def test_flows_w29; assert_in_epsilon(5.317455600000001, worksheet.flows_w29, 0.002); end
  def test_flows_x29; assert_in_epsilon(5.396349600000001, worksheet.flows_x29, 0.002); end
  def test_flows_y29; assert_in_epsilon(4.8440916, worksheet.flows_y29, 0.002); end
  def test_flows_z29; assert_in_epsilon(4.8440916, worksheet.flows_z29, 0.002); end
  def test_flows_aa29; assert_in_epsilon(4.8440916, worksheet.flows_aa29, 0.002); end
  def test_flows_ab29; assert_in_epsilon(4.8440916, worksheet.flows_ab29, 0.002); end
  def test_flows_ac29; assert_in_epsilon(4.8440916, worksheet.flows_ac29, 0.002); end
  def test_flows_ad29; assert_in_epsilon(4.8440916, worksheet.flows_ad29, 0.002); end
  def test_flows_af29; assert_in_delta(0.0, (worksheet.flows_af29||0), 0.002); end
  def test_flows_ag29; assert_in_delta(0.0, (worksheet.flows_ag29||0), 0.002); end
  def test_flows_ah29; assert_in_delta(0.0, (worksheet.flows_ah29||0), 0.002); end
  def test_flows_ai29; assert_in_delta(0.0, (worksheet.flows_ai29||0), 0.002); end
  def test_flows_aj29; assert_in_delta(0.0, (worksheet.flows_aj29||0), 0.002); end
  def test_flows_ak29; assert_in_delta(0.0, (worksheet.flows_ak29||0), 0.002); end
  def test_flows_al29; assert_in_delta(0.0, (worksheet.flows_al29||0), 0.002); end
  def test_flows_am29; assert_in_delta(0.0, (worksheet.flows_am29||0), 0.002); end
  def test_flows_an29; assert_in_delta(0.0, (worksheet.flows_an29||0), 0.002); end
  def test_flows_ao29; assert_in_delta(0.0, (worksheet.flows_ao29||0), 0.002); end
  def test_flows_c30; assert_equal("Solid", worksheet.flows_c30); end
  def test_flows_e30; assert_equal("Over generation / exports", worksheet.flows_e30); end
  def test_flows_g30; assert_in_delta(0.0, (worksheet.flows_g30||0), 0.002); end
  def test_flows_h30; assert_in_delta(0.0, (worksheet.flows_h30||0), 0.002); end
  def test_flows_i30; assert_in_delta(0.0, (worksheet.flows_i30||0), 0.002); end
  def test_flows_j30; assert_in_delta(0.0, (worksheet.flows_j30||0), 0.002); end
  def test_flows_k30; assert_in_delta(0.0, (worksheet.flows_k30||0), 0.002); end
  def test_flows_l30; assert_in_delta(0.0, (worksheet.flows_l30||0), 0.002); end
  def test_flows_m30; assert_in_delta(0.0, (worksheet.flows_m30||0), 0.002); end
  def test_flows_n30; assert_in_delta(0.0, (worksheet.flows_n30||0), 0.002); end
  def test_flows_o30; assert_in_delta(0.0, (worksheet.flows_o30||0), 0.002); end
  def test_flows_p30; assert_in_delta(0.0, (worksheet.flows_p30||0), 0.002); end
  def test_flows_t30; assert_equal("Industry", worksheet.flows_t30); end
  def test_flows_u30; assert_in_delta(0.0, (worksheet.flows_u30||0), 0.002); end
  def test_flows_v30; assert_in_delta(0.0, (worksheet.flows_v30||0), 0.002); end
  def test_flows_w30; assert_in_delta(0.0, (worksheet.flows_w30||0), 0.002); end
  def test_flows_x30; assert_in_delta(0.0, (worksheet.flows_x30||0), 0.002); end
  def test_flows_y30; assert_in_delta(0.0, (worksheet.flows_y30||0), 0.002); end
  def test_flows_z30; assert_in_delta(0.0, (worksheet.flows_z30||0), 0.002); end
  def test_flows_aa30; assert_in_delta(0.0, (worksheet.flows_aa30||0), 0.002); end
  def test_flows_ab30; assert_in_delta(0.0, (worksheet.flows_ab30||0), 0.002); end
  def test_flows_ac30; assert_in_delta(0.0, (worksheet.flows_ac30||0), 0.002); end
  def test_flows_ad30; assert_in_delta(0.0, (worksheet.flows_ad30||0), 0.002); end
  def test_flows_af30; assert_equal(:ref, worksheet.flows_af30); end
  def test_flows_ag30; assert_equal(:ref, worksheet.flows_ag30); end
  def test_flows_ah30; assert_equal(:ref, worksheet.flows_ah30); end
  def test_flows_ai30; assert_equal(:ref, worksheet.flows_ai30); end
  def test_flows_aj30; assert_equal(:ref, worksheet.flows_aj30); end
  def test_flows_ak30; assert_equal(:ref, worksheet.flows_ak30); end
  def test_flows_al30; assert_equal(:ref, worksheet.flows_al30); end
  def test_flows_am30; assert_equal(:ref, worksheet.flows_am30); end
  def test_flows_an30; assert_equal(:ref, worksheet.flows_an30); end
  def test_flows_ao30; assert_equal(:ref, worksheet.flows_ao30); end
  def test_flows_c31; assert_equal("Liquid", worksheet.flows_c31); end
  def test_flows_e31; assert_equal("Over generation / exports", worksheet.flows_e31); end
  def test_flows_g31; assert_in_delta(0.0, (worksheet.flows_g31||0), 0.002); end
  def test_flows_h31; assert_in_delta(0.0, (worksheet.flows_h31||0), 0.002); end
  def test_flows_i31; assert_in_delta(0.0, (worksheet.flows_i31||0), 0.002); end
  def test_flows_j31; assert_in_delta(0.0, (worksheet.flows_j31||0), 0.002); end
  def test_flows_k31; assert_in_delta(0.0, (worksheet.flows_k31||0), 0.002); end
  def test_flows_l31; assert_in_delta(0.0, (worksheet.flows_l31||0), 0.002); end
  def test_flows_m31; assert_in_delta(0.0, (worksheet.flows_m31||0), 0.002); end
  def test_flows_n31; assert_in_delta(0.0, (worksheet.flows_n31||0), 0.002); end
  def test_flows_o31; assert_in_delta(0.0, (worksheet.flows_o31||0), 0.002); end
  def test_flows_p31; assert_in_delta(0.0, (worksheet.flows_p31||0), 0.002); end
  def test_flows_t31; assert_equal("International aviation", worksheet.flows_t31); end
  def test_flows_u31; assert_in_delta(0.0, (worksheet.flows_u31||0), 0.002); end
  def test_flows_v31; assert_in_delta(0.0, (worksheet.flows_v31||0), 0.002); end
  def test_flows_w31; assert_in_delta(0.0, (worksheet.flows_w31||0), 0.002); end
  def test_flows_x31; assert_in_delta(0.0, (worksheet.flows_x31||0), 0.002); end
  def test_flows_y31; assert_in_delta(0.0, (worksheet.flows_y31||0), 0.002); end
  def test_flows_z31; assert_in_delta(0.0, (worksheet.flows_z31||0), 0.002); end
  def test_flows_aa31; assert_in_delta(0.0, (worksheet.flows_aa31||0), 0.002); end
  def test_flows_ab31; assert_in_delta(0.0, (worksheet.flows_ab31||0), 0.002); end
  def test_flows_ac31; assert_in_delta(0.0, (worksheet.flows_ac31||0), 0.002); end
  def test_flows_ad31; assert_in_delta(0.0, (worksheet.flows_ad31||0), 0.002); end
  def test_flows_af31; assert_equal(:ref, worksheet.flows_af31); end
  def test_flows_ag31; assert_equal(:ref, worksheet.flows_ag31); end
  def test_flows_ah31; assert_equal(:ref, worksheet.flows_ah31); end
  def test_flows_ai31; assert_equal(:ref, worksheet.flows_ai31); end
  def test_flows_aj31; assert_equal(:ref, worksheet.flows_aj31); end
  def test_flows_ak31; assert_equal(:ref, worksheet.flows_ak31); end
  def test_flows_al31; assert_equal(:ref, worksheet.flows_al31); end
  def test_flows_am31; assert_equal(:ref, worksheet.flows_am31); end
  def test_flows_an31; assert_equal(:ref, worksheet.flows_an31); end
  def test_flows_ao31; assert_equal(:ref, worksheet.flows_ao31); end
  def test_flows_c32; assert_equal("Gas", worksheet.flows_c32); end
  def test_flows_e32; assert_equal("Over generation / exports", worksheet.flows_e32); end
  def test_flows_g32; assert_in_delta(0.0, (worksheet.flows_g32||0), 0.002); end
  def test_flows_h32; assert_in_delta(0.0, (worksheet.flows_h32||0), 0.002); end
  def test_flows_i32; assert_in_delta(0.0, (worksheet.flows_i32||0), 0.002); end
  def test_flows_j32; assert_in_delta(0.0, (worksheet.flows_j32||0), 0.002); end
  def test_flows_k32; assert_in_delta(0.0, (worksheet.flows_k32||0), 0.002); end
  def test_flows_l32; assert_in_delta(0.0, (worksheet.flows_l32||0), 0.002); end
  def test_flows_m32; assert_in_delta(0.0, (worksheet.flows_m32||0), 0.002); end
  def test_flows_n32; assert_in_delta(0.0, (worksheet.flows_n32||0), 0.002); end
  def test_flows_o32; assert_in_delta(0.0, (worksheet.flows_o32||0), 0.002); end
  def test_flows_p32; assert_in_delta(0.0, (worksheet.flows_p32||0), 0.002); end
  def test_flows_t32; assert_equal("International shipping", worksheet.flows_t32); end
  def test_flows_u32; assert_in_delta(0.0, (worksheet.flows_u32||0), 0.002); end
  def test_flows_v32; assert_in_delta(0.0, (worksheet.flows_v32||0), 0.002); end
  def test_flows_w32; assert_in_delta(0.0, (worksheet.flows_w32||0), 0.002); end
  def test_flows_x32; assert_in_delta(0.0, (worksheet.flows_x32||0), 0.002); end
  def test_flows_y32; assert_in_delta(0.0, (worksheet.flows_y32||0), 0.002); end
  def test_flows_z32; assert_in_delta(0.0, (worksheet.flows_z32||0), 0.002); end
  def test_flows_aa32; assert_in_delta(0.0, (worksheet.flows_aa32||0), 0.002); end
  def test_flows_ab32; assert_in_delta(0.0, (worksheet.flows_ab32||0), 0.002); end
  def test_flows_ac32; assert_in_delta(0.0, (worksheet.flows_ac32||0), 0.002); end
  def test_flows_ad32; assert_in_delta(0.0, (worksheet.flows_ad32||0), 0.002); end
  def test_flows_af32; assert_equal(:ref, worksheet.flows_af32); end
  def test_flows_ag32; assert_equal(:ref, worksheet.flows_ag32); end
  def test_flows_ah32; assert_equal(:ref, worksheet.flows_ah32); end
  def test_flows_ai32; assert_equal(:ref, worksheet.flows_ai32); end
  def test_flows_aj32; assert_equal(:ref, worksheet.flows_aj32); end
  def test_flows_ak32; assert_equal(:ref, worksheet.flows_ak32); end
  def test_flows_al32; assert_equal(:ref, worksheet.flows_al32); end
  def test_flows_am32; assert_equal(:ref, worksheet.flows_am32); end
  def test_flows_an32; assert_equal(:ref, worksheet.flows_an32); end
  def test_flows_ao32; assert_equal(:ref, worksheet.flows_ao32); end
  def test_flows_c33; assert_equal("Solid", worksheet.flows_c33); end
  def test_flows_d33; assert_equal("Therm.a", worksheet.flows_d33); end
  def test_flows_e33; assert_equal("Thermal generation", worksheet.flows_e33); end
  def test_flows_f33; assert_equal("V.03", worksheet.flows_f33); end
  def test_flows_g33; assert_in_epsilon(2439.722569085648, worksheet.flows_g33, 0.002); end
  def test_flows_h33; assert_in_epsilon(2891.4483740170663, worksheet.flows_h33, 0.002); end
  def test_flows_i33; assert_in_epsilon(3336.936905910514, worksheet.flows_i33, 0.002); end
  def test_flows_j33; assert_in_epsilon(3889.768274641967, worksheet.flows_j33, 0.002); end
  def test_flows_k33; assert_in_epsilon(4559.793124902451, worksheet.flows_k33, 0.002); end
  def test_flows_l33; assert_in_epsilon(5396.03197337762, worksheet.flows_l33, 0.002); end
  def test_flows_m33; assert_in_epsilon(6405.252709434222, worksheet.flows_m33, 0.002); end
  def test_flows_n33; assert_in_epsilon(7557.003301481831, worksheet.flows_n33, 0.002); end
  def test_flows_o33; assert_in_epsilon(8834.519639947115, worksheet.flows_o33, 0.002); end
  def test_flows_p33; assert_in_epsilon(10358.218984341218, worksheet.flows_p33, 0.002); end
  def test_flows_t33; assert_equal("Lighting & appliances - commercial", worksheet.flows_t33); end
  def test_flows_u33; assert_in_delta(0.0, (worksheet.flows_u33||0), 0.002); end
  def test_flows_v33; assert_in_delta(0.0, (worksheet.flows_v33||0), 0.002); end
  def test_flows_w33; assert_in_delta(0.0, (worksheet.flows_w33||0), 0.002); end
  def test_flows_x33; assert_in_delta(0.0, (worksheet.flows_x33||0), 0.002); end
  def test_flows_y33; assert_in_delta(0.0, (worksheet.flows_y33||0), 0.002); end
  def test_flows_z33; assert_in_delta(0.0, (worksheet.flows_z33||0), 0.002); end
  def test_flows_aa33; assert_in_delta(0.0, (worksheet.flows_aa33||0), 0.002); end
  def test_flows_ab33; assert_in_delta(0.0, (worksheet.flows_ab33||0), 0.002); end
  def test_flows_ac33; assert_in_delta(0.0, (worksheet.flows_ac33||0), 0.002); end
  def test_flows_ad33; assert_in_delta(0.0, (worksheet.flows_ad33||0), 0.002); end
  def test_flows_af33; assert_in_epsilon(-129.54723162324967, worksheet.flows_af33, 0.002); end
  def test_flows_ag33; assert_in_epsilon(-142.93827838301297, worksheet.flows_ag33, 0.002); end
  def test_flows_ah33; assert_in_epsilon(-159.65575537078007, worksheet.flows_ah33, 0.002); end
  def test_flows_ai33; assert_in_epsilon(-179.73227531784715, worksheet.flows_ai33, 0.002); end
  def test_flows_aj33; assert_in_epsilon(-202.72301638466354, worksheet.flows_aj33, 0.002); end
  def test_flows_ak33; assert_in_epsilon(-230.31185413399538, worksheet.flows_ak33, 0.002); end
  def test_flows_al33; assert_in_epsilon(-265.4248781649243, worksheet.flows_al33, 0.002); end
  def test_flows_am33; assert_in_epsilon(-303.05016457468065, worksheet.flows_am33, 0.002); end
  def test_flows_an33; assert_in_epsilon(-341.10442324684027, worksheet.flows_an33, 0.002); end
  def test_flows_ao33; assert_in_epsilon(-385.8318769202319, worksheet.flows_ao33, 0.002); end
  def test_flows_c34; assert_equal("Liquid", worksheet.flows_c34); end
  def test_flows_d34; assert_equal("Therm.a", worksheet.flows_d34); end
  def test_flows_e34; assert_equal("Thermal generation", worksheet.flows_e34); end
  def test_flows_f34; assert_equal("C.02", worksheet.flows_f34); end
  def test_flows_g34; assert_in_delta(0.87690681, worksheet.flows_g34, 0.002); end
  def test_flows_h34; assert_in_delta(0.04541279153881224, worksheet.flows_h34, 0.002); end
  def test_flows_i34; assert_in_delta(0.06464112170468542, worksheet.flows_i34, 0.002); end
  def test_flows_j34; assert_in_delta(0.04524878519327979, worksheet.flows_j34, 0.002); end
  def test_flows_k34; assert_in_delta(0.1107746755384754, worksheet.flows_k34, 0.002); end
  def test_flows_l34; assert_in_delta(0.02570823751292793, worksheet.flows_l34, 0.002); end
  def test_flows_m34; assert_in_delta(0.0, (worksheet.flows_m34||0), 0.002); end
  def test_flows_n34; assert_in_delta(0.0, (worksheet.flows_n34||0), 0.002); end
  def test_flows_o34; assert_in_delta(0.0, (worksheet.flows_o34||0), 0.002); end
  def test_flows_p34; assert_in_delta(0.0, (worksheet.flows_p34||0), 0.002); end
  def test_flows_t34; assert_equal("Lighting & appliances - homes", worksheet.flows_t34); end
  def test_flows_u34; assert_in_delta(0.0, (worksheet.flows_u34||0), 0.002); end
  def test_flows_v34; assert_in_delta(0.0, (worksheet.flows_v34||0), 0.002); end
  def test_flows_w34; assert_in_delta(0.0, (worksheet.flows_w34||0), 0.002); end
  def test_flows_x34; assert_in_delta(0.0, (worksheet.flows_x34||0), 0.002); end
  def test_flows_y34; assert_in_delta(0.0, (worksheet.flows_y34||0), 0.002); end
  def test_flows_z34; assert_in_delta(0.0, (worksheet.flows_z34||0), 0.002); end
  def test_flows_aa34; assert_in_delta(0.0, (worksheet.flows_aa34||0), 0.002); end
  def test_flows_ab34; assert_in_delta(0.0, (worksheet.flows_ab34||0), 0.002); end
  def test_flows_ac34; assert_in_delta(0.0, (worksheet.flows_ac34||0), 0.002); end
  def test_flows_ad34; assert_in_delta(0.0, (worksheet.flows_ad34||0), 0.002); end
  def test_flows_af34; assert_in_epsilon(-36.986893473857904, worksheet.flows_af34, 0.002); end
  def test_flows_ag34; assert_in_epsilon(-41.973434793451176, worksheet.flows_ag34, 0.002); end
  def test_flows_ah34; assert_in_epsilon(-48.355451950051965, worksheet.flows_ah34, 0.002); end
  def test_flows_ai34; assert_in_epsilon(-54.96804802647876, worksheet.flows_ai34, 0.002); end
  def test_flows_aj34; assert_in_epsilon(-61.71430636739369, worksheet.flows_aj34, 0.002); end
  def test_flows_ak34; assert_in_epsilon(-68.39497459147746, worksheet.flows_ak34, 0.002); end
  def test_flows_al34; assert_in_epsilon(-75.89806194178264, worksheet.flows_al34, 0.002); end
  def test_flows_am34; assert_in_epsilon(-83.38017321179085, worksheet.flows_am34, 0.002); end
  def test_flows_an34; assert_in_epsilon(-92.31487655480777, worksheet.flows_an34, 0.002); end
  def test_flows_ao34; assert_in_epsilon(-101.11025363501369, worksheet.flows_ao34, 0.002); end
  def test_flows_c35; assert_equal("Gas", worksheet.flows_c35); end
  def test_flows_d35; assert_equal("Therm.a", worksheet.flows_d35); end
  def test_flows_e35; assert_equal("Thermal generation", worksheet.flows_e35); end
  def test_flows_f35; assert_equal("C.03", worksheet.flows_f35); end
  def test_flows_g35; assert_in_delta(0.0, (worksheet.flows_g35||0), 0.002); end
  def test_flows_h35; assert_in_epsilon(9.6921279, worksheet.flows_h35, 0.002); end
  def test_flows_i35; assert_in_epsilon(14.53819185, worksheet.flows_i35, 0.002); end
  def test_flows_j35; assert_in_epsilon(14.557584186511406, worksheet.flows_j35, 0.002); end
  def test_flows_k35; assert_in_epsilon(14.648966525538476, worksheet.flows_k35, 0.002); end
  def test_flows_l35; assert_in_epsilon(14.641024800051712, worksheet.flows_l35, 0.002); end
  def test_flows_m35; assert_in_epsilon(14.845394366569304, worksheet.flows_m35, 0.002); end
  def test_flows_n35; assert_in_epsilon(14.764489665561598, worksheet.flows_n35, 0.002); end
  def test_flows_o35; assert_in_epsilon(5.284402776368161, worksheet.flows_o35, 0.002); end
  def test_flows_p35; assert_in_delta(0.3443073823464531, worksheet.flows_p35, 0.002); end
  def test_flows_t35; assert_equal("Liquid", worksheet.flows_t35); end
  def test_flows_u35; assert_equal(:ref, worksheet.flows_u35); end
  def test_flows_v35; assert_equal(:ref, worksheet.flows_v35); end
  def test_flows_w35; assert_equal(:ref, worksheet.flows_w35); end
  def test_flows_x35; assert_equal(:ref, worksheet.flows_x35); end
  def test_flows_y35; assert_equal(:ref, worksheet.flows_y35); end
  def test_flows_z35; assert_equal(:ref, worksheet.flows_z35); end
  def test_flows_aa35; assert_equal(:ref, worksheet.flows_aa35); end
  def test_flows_ab35; assert_equal(:ref, worksheet.flows_ab35); end
  def test_flows_ac35; assert_equal(:ref, worksheet.flows_ac35); end
  def test_flows_ad35; assert_equal(:ref, worksheet.flows_ad35); end
  def test_flows_af35; assert_equal(:ref, worksheet.flows_af35); end
  def test_flows_ag35; assert_equal(:ref, worksheet.flows_ag35); end
  def test_flows_ah35; assert_equal(:ref, worksheet.flows_ah35); end
  def test_flows_ai35; assert_equal(:ref, worksheet.flows_ai35); end
  def test_flows_aj35; assert_equal(:ref, worksheet.flows_aj35); end
  def test_flows_ak35; assert_equal(:ref, worksheet.flows_ak35); end
  def test_flows_al35; assert_equal(:ref, worksheet.flows_al35); end
  def test_flows_am35; assert_equal(:ref, worksheet.flows_am35); end
  def test_flows_an35; assert_equal(:ref, worksheet.flows_an35); end
  def test_flows_ao35; assert_equal(:ref, worksheet.flows_ao35); end
  def test_flows_aq35; assert_equal(:ref, worksheet.flows_aq35); end
  def test_flows_ar35; assert_equal(:ref, worksheet.flows_ar35); end
  def test_flows_as35; assert_equal(:ref, worksheet.flows_as35); end
  def test_flows_at35; assert_equal(:ref, worksheet.flows_at35); end
  def test_flows_au35; assert_equal(:ref, worksheet.flows_au35); end
  def test_flows_av35; assert_equal(:ref, worksheet.flows_av35); end
  def test_flows_aw35; assert_equal(:ref, worksheet.flows_aw35); end
  def test_flows_ax35; assert_equal(:ref, worksheet.flows_ax35); end
  def test_flows_ay35; assert_equal(:ref, worksheet.flows_ay35); end
  def test_flows_az35; assert_equal(:ref, worksheet.flows_az35); end
  def test_flows_c36; assert_equal("Gas", worksheet.flows_c36); end
  def test_flows_d36; assert_equal("Therm.b", worksheet.flows_d36); end
  def test_flows_e36; assert_equal("Thermal generation", worksheet.flows_e36); end
  def test_flows_f36; assert_equal("C.03", worksheet.flows_f36); end
  def test_flows_g36; assert_in_delta(0.0, (worksheet.flows_g36||0), 0.002); end
  def test_flows_h36; assert_in_delta(0.0, (worksheet.flows_h36||0), 0.002); end
  def test_flows_i36; assert_in_delta(0.0, (worksheet.flows_i36||0), 0.002); end
  def test_flows_j36; assert_in_delta(0.0, (worksheet.flows_j36||0), 0.002); end
  def test_flows_k36; assert_in_delta(0.0, (worksheet.flows_k36||0), 0.002); end
  def test_flows_l36; assert_in_delta(0.0, (worksheet.flows_l36||0), 0.002); end
  def test_flows_m36; assert_in_delta(0.0, (worksheet.flows_m36||0), 0.002); end
  def test_flows_n36; assert_in_delta(0.0, (worksheet.flows_n36||0), 0.002); end
  def test_flows_o36; assert_in_delta(0.0, (worksheet.flows_o36||0), 0.002); end
  def test_flows_p36; assert_in_delta(0.0, (worksheet.flows_p36||0), 0.002); end
  def test_flows_c37; assert_equal("Nuclear", worksheet.flows_c37); end
  def test_flows_d37; assert_equal("Nuke", worksheet.flows_d37); end
  def test_flows_e37; assert_equal("Thermal generation", worksheet.flows_e37); end
  def test_flows_f37; assert_equal("N.01", worksheet.flows_f37); end
  def test_flows_g37; assert_in_epsilon(110.05713000000002, worksheet.flows_g37, 0.002); end
  def test_flows_h37; assert_in_epsilon(143.78431500000002, worksheet.flows_h37, 0.002); end
  def test_flows_i37; assert_in_epsilon(143.78431500000002, worksheet.flows_i37, 0.002); end
  def test_flows_j37; assert_in_epsilon(143.78431500000002, worksheet.flows_j37, 0.002); end
  def test_flows_k37; assert_in_epsilon(143.78431500000002, worksheet.flows_k37, 0.002); end
  def test_flows_l37; assert_in_epsilon(143.78431500000002, worksheet.flows_l37, 0.002); end
  def test_flows_m37; assert_in_epsilon(143.78431500000002, worksheet.flows_m37, 0.002); end
  def test_flows_n37; assert_in_epsilon(143.78431500000002, worksheet.flows_n37, 0.002); end
  def test_flows_o37; assert_in_epsilon(143.78431500000002, worksheet.flows_o37, 0.002); end
  def test_flows_p37; assert_in_delta(0.0, (worksheet.flows_p37||0), 0.002); end
  def test_flows_t37; assert_equal("Losses", worksheet.flows_t37); end
  def test_flows_u37; assert_in_delta(0.0, (worksheet.flows_u37||0), 0.002); end
  def test_flows_v37; assert_in_delta(0.0, (worksheet.flows_v37||0), 0.002); end
  def test_flows_w37; assert_in_delta(0.0, (worksheet.flows_w37||0), 0.002); end
  def test_flows_x37; assert_in_delta(0.0, (worksheet.flows_x37||0), 0.002); end
  def test_flows_y37; assert_in_delta(0.0, (worksheet.flows_y37||0), 0.002); end
  def test_flows_z37; assert_in_delta(0.0, (worksheet.flows_z37||0), 0.002); end
  def test_flows_aa37; assert_in_delta(0.0, (worksheet.flows_aa37||0), 0.002); end
  def test_flows_ab37; assert_in_delta(0.0, (worksheet.flows_ab37||0), 0.002); end
  def test_flows_ac37; assert_in_delta(0.0, (worksheet.flows_ac37||0), 0.002); end
  def test_flows_ad37; assert_in_delta(0.0, (worksheet.flows_ad37||0), 0.002); end
  def test_flows_af37; assert_equal(:ref, worksheet.flows_af37); end
  def test_flows_ag37; assert_equal(:ref, worksheet.flows_ag37); end
  def test_flows_ah37; assert_equal(:ref, worksheet.flows_ah37); end
  def test_flows_ai37; assert_equal(:ref, worksheet.flows_ai37); end
  def test_flows_aj37; assert_equal(:ref, worksheet.flows_aj37); end
  def test_flows_ak37; assert_equal(:ref, worksheet.flows_ak37); end
  def test_flows_al37; assert_equal(:ref, worksheet.flows_al37); end
  def test_flows_am37; assert_equal(:ref, worksheet.flows_am37); end
  def test_flows_an37; assert_equal(:ref, worksheet.flows_an37); end
  def test_flows_ao37; assert_equal(:ref, worksheet.flows_ao37); end
  def test_flows_t38; assert_equal("Marine algae", worksheet.flows_t38); end
  def test_flows_u38; assert_in_delta(0.0, (worksheet.flows_u38||0), 0.002); end
  def test_flows_v38; assert_in_delta(0.0, (worksheet.flows_v38||0), 0.002); end
  def test_flows_w38; assert_in_delta(0.0, (worksheet.flows_w38||0), 0.002); end
  def test_flows_x38; assert_in_delta(0.0, (worksheet.flows_x38||0), 0.002); end
  def test_flows_y38; assert_in_delta(0.0, (worksheet.flows_y38||0), 0.002); end
  def test_flows_z38; assert_in_delta(0.0, (worksheet.flows_z38||0), 0.002); end
  def test_flows_aa38; assert_in_delta(0.0, (worksheet.flows_aa38||0), 0.002); end
  def test_flows_ab38; assert_in_delta(0.0, (worksheet.flows_ab38||0), 0.002); end
  def test_flows_ac38; assert_in_delta(0.0, (worksheet.flows_ac38||0), 0.002); end
  def test_flows_ad38; assert_in_delta(0.0, (worksheet.flows_ad38||0), 0.002); end
  def test_flows_af38; assert_in_delta(0.0, (worksheet.flows_af38||0), 0.002); end
  def test_flows_ag38; assert_in_delta(0.0, (worksheet.flows_ag38||0), 0.002); end
  def test_flows_ah38; assert_in_delta(0.0, (worksheet.flows_ah38||0), 0.002); end
  def test_flows_ai38; assert_in_delta(0.0, (worksheet.flows_ai38||0), 0.002); end
  def test_flows_aj38; assert_in_delta(0.0, (worksheet.flows_aj38||0), 0.002); end
  def test_flows_ak38; assert_in_delta(0.0, (worksheet.flows_ak38||0), 0.002); end
  def test_flows_al38; assert_in_delta(0.0, (worksheet.flows_al38||0), 0.002); end
  def test_flows_am38; assert_in_delta(0.0, (worksheet.flows_am38||0), 0.002); end
  def test_flows_an38; assert_in_delta(0.0, (worksheet.flows_an38||0), 0.002); end
  def test_flows_ao38; assert_in_delta(0.0, (worksheet.flows_ao38||0), 0.002); end
  def test_flows_c39; assert_equal("Thermal generation", worksheet.flows_c39); end
  def test_flows_d39; assert_equal("Therm.a", worksheet.flows_d39); end
  def test_flows_e39; assert_equal("Electricity grid", worksheet.flows_e39); end
  def test_flows_f39; assert_equal("V.02", worksheet.flows_f39); end
  def test_flows_g39; assert_in_epsilon(819.6118342564978, worksheet.flows_g39, 0.002); end
  def test_flows_h39; assert_in_epsilon(975.2389269653625, worksheet.flows_h39, 0.002); end
  def test_flows_i39; assert_in_epsilon(1140.2820546836201, worksheet.flows_i39, 0.002); end
  def test_flows_j39; assert_in_epsilon(1346.8600873180008, worksheet.flows_j39, 0.002); end
  def test_flows_k39; assert_in_epsilon(1608.1020130045945, worksheet.flows_k39, 0.002); end
  def test_flows_l39; assert_in_epsilon(1932.0917437202222, worksheet.flows_l39, 0.002); end
  def test_flows_m39; assert_in_epsilon(2332.827821503195, worksheet.flows_m39, 0.002); end
  def test_flows_n39; assert_in_epsilon(2800.5949238955855, worksheet.flows_n39, 0.002); end
  def test_flows_o39; assert_in_epsilon(3268.6947402291275, worksheet.flows_o39, 0.002); end
  def test_flows_p39; assert_in_epsilon(3841.069556366262, worksheet.flows_p39, 0.002); end
  def test_flows_t39; assert_equal("National navigation", worksheet.flows_t39); end
  def test_flows_u39; assert_in_delta(0.0, (worksheet.flows_u39||0), 0.002); end
  def test_flows_v39; assert_in_delta(0.0, (worksheet.flows_v39||0), 0.002); end
  def test_flows_w39; assert_in_delta(0.0, (worksheet.flows_w39||0), 0.002); end
  def test_flows_x39; assert_in_delta(0.0, (worksheet.flows_x39||0), 0.002); end
  def test_flows_y39; assert_in_delta(0.0, (worksheet.flows_y39||0), 0.002); end
  def test_flows_z39; assert_in_delta(0.0, (worksheet.flows_z39||0), 0.002); end
  def test_flows_aa39; assert_in_delta(0.0, (worksheet.flows_aa39||0), 0.002); end
  def test_flows_ab39; assert_in_delta(0.0, (worksheet.flows_ab39||0), 0.002); end
  def test_flows_ac39; assert_in_delta(0.0, (worksheet.flows_ac39||0), 0.002); end
  def test_flows_ad39; assert_in_delta(0.0, (worksheet.flows_ad39||0), 0.002); end
  def test_flows_af39; assert_equal(:ref, worksheet.flows_af39); end
  def test_flows_ag39; assert_equal(:ref, worksheet.flows_ag39); end
  def test_flows_ah39; assert_equal(:ref, worksheet.flows_ah39); end
  def test_flows_ai39; assert_equal(:ref, worksheet.flows_ai39); end
  def test_flows_aj39; assert_equal(:ref, worksheet.flows_aj39); end
  def test_flows_ak39; assert_equal(:ref, worksheet.flows_ak39); end
  def test_flows_al39; assert_equal(:ref, worksheet.flows_al39); end
  def test_flows_am39; assert_equal(:ref, worksheet.flows_am39); end
  def test_flows_an39; assert_equal(:ref, worksheet.flows_an39); end
  def test_flows_ao39; assert_equal(:ref, worksheet.flows_ao39); end
  def test_flows_c40; assert_equal("Thermal generation", worksheet.flows_c40); end
  def test_flows_d40; assert_equal("Therm.b", worksheet.flows_d40); end
  def test_flows_e40; assert_equal("Electricity grid", worksheet.flows_e40); end
  def test_flows_f40; assert_equal("V.02", worksheet.flows_f40); end
  def test_flows_g40; assert_in_epsilon(35.218281600000005, worksheet.flows_g40, 0.002); end
  def test_flows_h40; assert_in_epsilon(46.010980800000006, worksheet.flows_h40, 0.002); end
  def test_flows_i40; assert_in_epsilon(46.010980800000006, worksheet.flows_i40, 0.002); end
  def test_flows_j40; assert_in_epsilon(46.010980800000006, worksheet.flows_j40, 0.002); end
  def test_flows_k40; assert_in_epsilon(46.010980800000006, worksheet.flows_k40, 0.002); end
  def test_flows_l40; assert_in_epsilon(46.010980800000006, worksheet.flows_l40, 0.002); end
  def test_flows_m40; assert_in_epsilon(46.010980800000006, worksheet.flows_m40, 0.002); end
  def test_flows_n40; assert_in_epsilon(46.010980800000006, worksheet.flows_n40, 0.002); end
  def test_flows_o40; assert_in_epsilon(46.010980800000006, worksheet.flows_o40, 0.002); end
  def test_flows_p40; assert_in_delta(0.0, (worksheet.flows_p40||0), 0.002); end
  def test_flows_t40; assert_equal("Natural Gas", worksheet.flows_t40); end
  def test_flows_u40; assert_in_epsilon(188.5521537764063, worksheet.flows_u40, 0.002); end
  def test_flows_v40; assert_in_epsilon(206.8808795441263, worksheet.flows_v40, 0.002); end
  def test_flows_w40; assert_in_epsilon(231.75753802276904, worksheet.flows_w40, 0.002); end
  def test_flows_x40; assert_in_epsilon(255.89588797999113, worksheet.flows_x40, 0.002); end
  def test_flows_y40; assert_in_epsilon(289.75570253857563, worksheet.flows_y40, 0.002); end
  def test_flows_z40; assert_in_epsilon(322.77362179445345, worksheet.flows_z40, 0.002); end
  def test_flows_aa40; assert_in_epsilon(310.93682089270357, worksheet.flows_aa40, 0.002); end
  def test_flows_ab40; assert_in_epsilon(362.84884987472964, worksheet.flows_ab40, 0.002); end
  def test_flows_ac40; assert_in_epsilon(412.59106615573387, worksheet.flows_ac40, 0.002); end
  def test_flows_ad40; assert_in_epsilon(455.0221337045418, worksheet.flows_ad40, 0.002); end
  def test_flows_af40; assert_in_epsilon(188.5521537764063, worksheet.flows_af40, 0.002); end
  def test_flows_ag40; assert_in_epsilon(206.8808795441263, worksheet.flows_ag40, 0.002); end
  def test_flows_ah40; assert_in_epsilon(231.75753802276904, worksheet.flows_ah40, 0.002); end
  def test_flows_ai40; assert_in_epsilon(255.89588797999113, worksheet.flows_ai40, 0.002); end
  def test_flows_aj40; assert_in_epsilon(289.75570253857563, worksheet.flows_aj40, 0.002); end
  def test_flows_ak40; assert_in_epsilon(322.77362179445345, worksheet.flows_ak40, 0.002); end
  def test_flows_al40; assert_in_epsilon(310.93682089270357, worksheet.flows_al40, 0.002); end
  def test_flows_am40; assert_in_epsilon(362.84884987472964, worksheet.flows_am40, 0.002); end
  def test_flows_an40; assert_in_epsilon(412.59106615573387, worksheet.flows_an40, 0.002); end
  def test_flows_ao40; assert_in_epsilon(455.0221337045418, worksheet.flows_ao40, 0.002); end
  def test_flows_aq40; assert_in_delta(0.0, (worksheet.flows_aq40||0), 0.002); end
  def test_flows_ar40; assert_in_delta(0.0, (worksheet.flows_ar40||0), 0.002); end
  def test_flows_as40; assert_in_delta(0.0, (worksheet.flows_as40||0), 0.002); end
  def test_flows_at40; assert_in_delta(0.0, (worksheet.flows_at40||0), 0.002); end
  def test_flows_au40; assert_in_delta(0.0, (worksheet.flows_au40||0), 0.002); end
  def test_flows_av40; assert_in_delta(0.0, (worksheet.flows_av40||0), 0.002); end
  def test_flows_aw40; assert_in_delta(0.0, (worksheet.flows_aw40||0), 0.002); end
  def test_flows_ax40; assert_in_delta(0.0, (worksheet.flows_ax40||0), 0.002); end
  def test_flows_ay40; assert_in_delta(0.0, (worksheet.flows_ay40||0), 0.002); end
  def test_flows_az40; assert_in_delta(0.0, (worksheet.flows_az40||0), 0.002); end
  def test_flows_c41; assert_equal("Thermal generation", worksheet.flows_c41); end
  def test_flows_e41; assert_equal("Losses", worksheet.flows_e41); end
  def test_flows_g41; assert_in_epsilon(-1695.8264900391505, worksheet.flows_g41, 0.002); end
  def test_flows_h41; assert_in_epsilon(-2023.7203219432422, worksheet.flows_h41, 0.002); end
  def test_flows_i41; assert_in_epsilon(-2309.0310183985985, worksheet.flows_i41, 0.002); end
  def test_flows_j41; assert_in_epsilon(-2655.2843544956704, worksheet.flows_j41, 0.002); end
  def test_flows_k41; assert_in_epsilon(-3064.2241872989343, worksheet.flows_k41, 0.002); end
  def test_flows_l41; assert_in_epsilon(-3576.380296894962, worksheet.flows_l41, 0.002); end
  def test_flows_m41; assert_in_epsilon(-4185.043616497596, worksheet.flows_m41, 0.002); end
  def test_flows_n41; assert_in_epsilon(-4868.946201451807, worksheet.flows_n41, 0.002); end
  def test_flows_o41; assert_in_epsilon(-5668.882636694356, worksheet.flows_o41, 0.002); end
  def test_flows_p41; assert_in_epsilon(-6517.493735357303, worksheet.flows_p41, 0.002); end
  def test_flows_c43; assert_equal("Solid", worksheet.flows_c43); end
  def test_flows_e43; assert_equal("CHP", worksheet.flows_e43); end
  def test_flows_g43; assert_equal(:ref, worksheet.flows_g43); end
  def test_flows_h43; assert_equal(:ref, worksheet.flows_h43); end
  def test_flows_i43; assert_equal(:ref, worksheet.flows_i43); end
  def test_flows_j43; assert_equal(:ref, worksheet.flows_j43); end
  def test_flows_k43; assert_equal(:ref, worksheet.flows_k43); end
  def test_flows_l43; assert_equal(:ref, worksheet.flows_l43); end
  def test_flows_m43; assert_equal(:ref, worksheet.flows_m43); end
  def test_flows_n43; assert_equal(:ref, worksheet.flows_n43); end
  def test_flows_o43; assert_equal(:ref, worksheet.flows_o43); end
  def test_flows_p43; assert_equal(:ref, worksheet.flows_p43); end
  def test_flows_t43; assert_equal("Nuclear", worksheet.flows_t43); end
  def test_flows_u43; assert_in_epsilon(110.05713000000002, worksheet.flows_u43, 0.002); end
  def test_flows_v43; assert_in_epsilon(143.78431500000002, worksheet.flows_v43, 0.002); end
  def test_flows_w43; assert_in_epsilon(143.78431500000002, worksheet.flows_w43, 0.002); end
  def test_flows_x43; assert_in_epsilon(143.78431500000002, worksheet.flows_x43, 0.002); end
  def test_flows_y43; assert_in_epsilon(143.78431500000002, worksheet.flows_y43, 0.002); end
  def test_flows_z43; assert_in_epsilon(143.78431500000002, worksheet.flows_z43, 0.002); end
  def test_flows_aa43; assert_in_epsilon(143.78431500000002, worksheet.flows_aa43, 0.002); end
  def test_flows_ab43; assert_in_epsilon(143.78431500000002, worksheet.flows_ab43, 0.002); end
  def test_flows_ac43; assert_in_epsilon(143.78431500000002, worksheet.flows_ac43, 0.002); end
  def test_flows_ad43; assert_in_delta(0.0, (worksheet.flows_ad43||0), 0.002); end
  def test_flows_af43; assert_in_delta(0.0, (worksheet.flows_af43||0), 0.002); end
  def test_flows_ag43; assert_in_delta(0.0, (worksheet.flows_ag43||0), 0.002); end
  def test_flows_ah43; assert_in_delta(0.0, (worksheet.flows_ah43||0), 0.002); end
  def test_flows_ai43; assert_in_delta(0.0, (worksheet.flows_ai43||0), 0.002); end
  def test_flows_aj43; assert_in_delta(0.0, (worksheet.flows_aj43||0), 0.002); end
  def test_flows_ak43; assert_in_delta(0.0, (worksheet.flows_ak43||0), 0.002); end
  def test_flows_al43; assert_in_delta(0.0, (worksheet.flows_al43||0), 0.002); end
  def test_flows_am43; assert_in_delta(0.0, (worksheet.flows_am43||0), 0.002); end
  def test_flows_an43; assert_in_delta(0.0, (worksheet.flows_an43||0), 0.002); end
  def test_flows_ao43; assert_in_delta(0.0, (worksheet.flows_ao43||0), 0.002); end
  def test_flows_c44; assert_equal("Liquid", worksheet.flows_c44); end
  def test_flows_e44; assert_equal("CHP", worksheet.flows_e44); end
  def test_flows_g44; assert_equal(:ref, worksheet.flows_g44); end
  def test_flows_h44; assert_equal(:ref, worksheet.flows_h44); end
  def test_flows_i44; assert_equal(:ref, worksheet.flows_i44); end
  def test_flows_j44; assert_equal(:ref, worksheet.flows_j44); end
  def test_flows_k44; assert_equal(:ref, worksheet.flows_k44); end
  def test_flows_l44; assert_equal(:ref, worksheet.flows_l44); end
  def test_flows_m44; assert_equal(:ref, worksheet.flows_m44); end
  def test_flows_n44; assert_equal(:ref, worksheet.flows_n44); end
  def test_flows_o44; assert_equal(:ref, worksheet.flows_o44); end
  def test_flows_p44; assert_equal(:ref, worksheet.flows_p44); end
  def test_flows_t44; assert_equal("Oil", worksheet.flows_t44); end
  def test_flows_u44; assert_in_epsilon(553.8553914230257, worksheet.flows_u44, 0.002); end
  def test_flows_v44; assert_in_epsilon(649.6521092479593, worksheet.flows_v44, 0.002); end
  def test_flows_w44; assert_in_epsilon(745.6199008308481, worksheet.flows_w44, 0.002); end
  def test_flows_x44; assert_in_epsilon(838.6799743554361, worksheet.flows_x44, 0.002); end
  def test_flows_y44; assert_in_epsilon(928.7166761345673, worksheet.flows_y44, 0.002); end
  def test_flows_z44; assert_in_epsilon(1016.9935964965312, worksheet.flows_z44, 0.002); end
  def test_flows_aa44; assert_in_epsilon(1162.557114168934, worksheet.flows_aa44, 0.002); end
  def test_flows_ab44; assert_in_epsilon(1385.3655103279275, worksheet.flows_ab44, 0.002); end
  def test_flows_ac44; assert_in_epsilon(1346.2284749255707, worksheet.flows_ac44, 0.002); end
  def test_flows_ad44; assert_in_epsilon(1368.942146699088, worksheet.flows_ad44, 0.002); end
  def test_flows_af44; assert_in_epsilon(553.8553914230257, worksheet.flows_af44, 0.002); end
  def test_flows_ag44; assert_in_epsilon(649.6521092479593, worksheet.flows_ag44, 0.002); end
  def test_flows_ah44; assert_in_epsilon(745.6199008308481, worksheet.flows_ah44, 0.002); end
  def test_flows_ai44; assert_in_epsilon(838.6799743554361, worksheet.flows_ai44, 0.002); end
  def test_flows_aj44; assert_in_epsilon(928.7166761345673, worksheet.flows_aj44, 0.002); end
  def test_flows_ak44; assert_in_epsilon(1016.9935964965312, worksheet.flows_ak44, 0.002); end
  def test_flows_al44; assert_in_epsilon(1162.557114168934, worksheet.flows_al44, 0.002); end
  def test_flows_am44; assert_in_epsilon(1385.3655103279275, worksheet.flows_am44, 0.002); end
  def test_flows_an44; assert_in_epsilon(1346.2284749255707, worksheet.flows_an44, 0.002); end
  def test_flows_ao44; assert_in_epsilon(1368.942146699088, worksheet.flows_ao44, 0.002); end
  def test_flows_aq44; assert_in_delta(0.0, (worksheet.flows_aq44||0), 0.002); end
  def test_flows_ar44; assert_in_delta(0.0, (worksheet.flows_ar44||0), 0.002); end
  def test_flows_as44; assert_in_delta(0.0, (worksheet.flows_as44||0), 0.002); end
  def test_flows_at44; assert_in_delta(0.0, (worksheet.flows_at44||0), 0.002); end
  def test_flows_au44; assert_in_delta(0.0, (worksheet.flows_au44||0), 0.002); end
  def test_flows_av44; assert_in_delta(0.0, (worksheet.flows_av44||0), 0.002); end
  def test_flows_aw44; assert_in_delta(0.0, (worksheet.flows_aw44||0), 0.002); end
  def test_flows_ax44; assert_in_delta(0.0, (worksheet.flows_ax44||0), 0.002); end
  def test_flows_ay44; assert_in_delta(0.0, (worksheet.flows_ay44||0), 0.002); end
  def test_flows_az44; assert_in_delta(0.0, (worksheet.flows_az44||0), 0.002); end
  def test_flows_c45; assert_equal("Gas", worksheet.flows_c45); end
  def test_flows_e45; assert_equal("CHP", worksheet.flows_e45); end
  def test_flows_g45; assert_equal(:ref, worksheet.flows_g45); end
  def test_flows_h45; assert_equal(:ref, worksheet.flows_h45); end
  def test_flows_i45; assert_equal(:ref, worksheet.flows_i45); end
  def test_flows_j45; assert_equal(:ref, worksheet.flows_j45); end
  def test_flows_k45; assert_equal(:ref, worksheet.flows_k45); end
  def test_flows_l45; assert_equal(:ref, worksheet.flows_l45); end
  def test_flows_m45; assert_equal(:ref, worksheet.flows_m45); end
  def test_flows_n45; assert_equal(:ref, worksheet.flows_n45); end
  def test_flows_o45; assert_equal(:ref, worksheet.flows_o45); end
  def test_flows_p45; assert_equal(:ref, worksheet.flows_p45); end
  def test_flows_t45; assert_equal("Oil imports", worksheet.flows_t45); end
  def test_flows_u45; assert_in_epsilon(553.8553914230257, worksheet.flows_u45, 0.002); end
  def test_flows_v45; assert_in_epsilon(649.6521092479593, worksheet.flows_v45, 0.002); end
  def test_flows_w45; assert_in_epsilon(745.6199008308481, worksheet.flows_w45, 0.002); end
  def test_flows_x45; assert_in_epsilon(838.6799743554361, worksheet.flows_x45, 0.002); end
  def test_flows_y45; assert_in_epsilon(928.7166761345673, worksheet.flows_y45, 0.002); end
  def test_flows_z45; assert_in_epsilon(1016.9935964965312, worksheet.flows_z45, 0.002); end
  def test_flows_aa45; assert_in_epsilon(1162.557114168934, worksheet.flows_aa45, 0.002); end
  def test_flows_ab45; assert_in_epsilon(1385.3655103279275, worksheet.flows_ab45, 0.002); end
  def test_flows_ac45; assert_in_epsilon(1346.2284749255707, worksheet.flows_ac45, 0.002); end
  def test_flows_ad45; assert_in_epsilon(1368.942146699088, worksheet.flows_ad45, 0.002); end
  def test_flows_af45; assert_in_delta(0.0, (worksheet.flows_af45||0), 0.002); end
  def test_flows_ag45; assert_in_delta(0.0, (worksheet.flows_ag45||0), 0.002); end
  def test_flows_ah45; assert_in_delta(0.0, (worksheet.flows_ah45||0), 0.002); end
  def test_flows_ai45; assert_in_delta(0.0, (worksheet.flows_ai45||0), 0.002); end
  def test_flows_aj45; assert_in_delta(0.0, (worksheet.flows_aj45||0), 0.002); end
  def test_flows_ak45; assert_in_delta(0.0, (worksheet.flows_ak45||0), 0.002); end
  def test_flows_al45; assert_in_delta(0.0, (worksheet.flows_al45||0), 0.002); end
  def test_flows_am45; assert_in_delta(0.0, (worksheet.flows_am45||0), 0.002); end
  def test_flows_an45; assert_in_delta(0.0, (worksheet.flows_an45||0), 0.002); end
  def test_flows_ao45; assert_in_delta(0.0, (worksheet.flows_ao45||0), 0.002); end
  def test_flows_c46; assert_equal("CHP", worksheet.flows_c46); end
  def test_flows_e46; assert_equal("Electricity grid", worksheet.flows_e46); end
  def test_flows_g46; assert_equal(:ref, worksheet.flows_g46); end
  def test_flows_h46; assert_equal(:ref, worksheet.flows_h46); end
  def test_flows_i46; assert_equal(:ref, worksheet.flows_i46); end
  def test_flows_j46; assert_equal(:ref, worksheet.flows_j46); end
  def test_flows_k46; assert_equal(:ref, worksheet.flows_k46); end
  def test_flows_l46; assert_equal(:ref, worksheet.flows_l46); end
  def test_flows_m46; assert_equal(:ref, worksheet.flows_m46); end
  def test_flows_n46; assert_equal(:ref, worksheet.flows_n46); end
  def test_flows_o46; assert_equal(:ref, worksheet.flows_o46); end
  def test_flows_p46; assert_equal(:ref, worksheet.flows_p46); end
  def test_flows_t46; assert_equal("Oil reserves", worksheet.flows_t46); end
  def test_flows_u46; assert_in_delta(0.0, (worksheet.flows_u46||0), 0.002); end
  def test_flows_v46; assert_in_delta(0.0, (worksheet.flows_v46||0), 0.002); end
  def test_flows_w46; assert_in_delta(0.0, (worksheet.flows_w46||0), 0.002); end
  def test_flows_x46; assert_in_delta(0.0, (worksheet.flows_x46||0), 0.002); end
  def test_flows_y46; assert_in_delta(0.0, (worksheet.flows_y46||0), 0.002); end
  def test_flows_z46; assert_in_delta(0.0, (worksheet.flows_z46||0), 0.002); end
  def test_flows_aa46; assert_in_delta(0.0, (worksheet.flows_aa46||0), 0.002); end
  def test_flows_ab46; assert_in_delta(0.0, (worksheet.flows_ab46||0), 0.002); end
  def test_flows_ac46; assert_in_delta(0.0, (worksheet.flows_ac46||0), 0.002); end
  def test_flows_ad46; assert_in_delta(0.0, (worksheet.flows_ad46||0), 0.002); end
  def test_flows_af46; assert_in_delta(0.0, (worksheet.flows_af46||0), 0.002); end
  def test_flows_ag46; assert_in_delta(0.0, (worksheet.flows_ag46||0), 0.002); end
  def test_flows_ah46; assert_in_delta(0.0, (worksheet.flows_ah46||0), 0.002); end
  def test_flows_ai46; assert_in_delta(0.0, (worksheet.flows_ai46||0), 0.002); end
  def test_flows_aj46; assert_in_delta(0.0, (worksheet.flows_aj46||0), 0.002); end
  def test_flows_ak46; assert_in_delta(0.0, (worksheet.flows_ak46||0), 0.002); end
  def test_flows_al46; assert_in_delta(0.0, (worksheet.flows_al46||0), 0.002); end
  def test_flows_am46; assert_in_delta(0.0, (worksheet.flows_am46||0), 0.002); end
  def test_flows_an46; assert_in_delta(0.0, (worksheet.flows_an46||0), 0.002); end
  def test_flows_ao46; assert_in_delta(0.0, (worksheet.flows_ao46||0), 0.002); end
  def test_flows_c47; assert_equal("CHP", worksheet.flows_c47); end
  def test_flows_e47; assert_equal("Losses", worksheet.flows_e47); end
  def test_flows_g47; assert_equal(:ref, worksheet.flows_g47); end
  def test_flows_h47; assert_equal(:ref, worksheet.flows_h47); end
  def test_flows_i47; assert_equal(:ref, worksheet.flows_i47); end
  def test_flows_j47; assert_equal(:ref, worksheet.flows_j47); end
  def test_flows_k47; assert_equal(:ref, worksheet.flows_k47); end
  def test_flows_l47; assert_equal(:ref, worksheet.flows_l47); end
  def test_flows_m47; assert_equal(:ref, worksheet.flows_m47); end
  def test_flows_n47; assert_equal(:ref, worksheet.flows_n47); end
  def test_flows_o47; assert_equal(:ref, worksheet.flows_o47); end
  def test_flows_p47; assert_equal(:ref, worksheet.flows_p47); end
  def test_flows_t47; assert_equal("Other waste", worksheet.flows_t47); end
  def test_flows_u47; assert_equal(:ref, worksheet.flows_u47); end
  def test_flows_v47; assert_equal(:ref, worksheet.flows_v47); end
  def test_flows_w47; assert_equal(:ref, worksheet.flows_w47); end
  def test_flows_x47; assert_equal(:ref, worksheet.flows_x47); end
  def test_flows_y47; assert_equal(:ref, worksheet.flows_y47); end
  def test_flows_z47; assert_equal(:ref, worksheet.flows_z47); end
  def test_flows_aa47; assert_equal(:ref, worksheet.flows_aa47); end
  def test_flows_ab47; assert_equal(:ref, worksheet.flows_ab47); end
  def test_flows_ac47; assert_equal(:ref, worksheet.flows_ac47); end
  def test_flows_ad47; assert_equal(:ref, worksheet.flows_ad47); end
  def test_flows_af47; assert_in_delta(0.0, (worksheet.flows_af47||0), 0.002); end
  def test_flows_ag47; assert_in_delta(0.0, (worksheet.flows_ag47||0), 0.002); end
  def test_flows_ah47; assert_in_delta(0.0, (worksheet.flows_ah47||0), 0.002); end
  def test_flows_ai47; assert_in_delta(0.0, (worksheet.flows_ai47||0), 0.002); end
  def test_flows_aj47; assert_in_delta(0.0, (worksheet.flows_aj47||0), 0.002); end
  def test_flows_ak47; assert_in_delta(0.0, (worksheet.flows_ak47||0), 0.002); end
  def test_flows_al47; assert_in_delta(0.0, (worksheet.flows_al47||0), 0.002); end
  def test_flows_am47; assert_in_delta(0.0, (worksheet.flows_am47||0), 0.002); end
  def test_flows_an47; assert_in_delta(0.0, (worksheet.flows_an47||0), 0.002); end
  def test_flows_ao47; assert_in_delta(0.0, (worksheet.flows_ao47||0), 0.002); end
  def test_flows_c48; assert_equal("Electricity imports", worksheet.flows_c48); end
  def test_flows_d48; assert_equal("ElcDSB.i", worksheet.flows_d48); end
  def test_flows_e48; assert_equal("Electricity grid", worksheet.flows_e48); end
  def test_flows_f48; assert_equal("Y.02", worksheet.flows_f48); end
  def test_flows_g48; assert_in_delta(0.0, (worksheet.flows_g48||0), 0.002); end
  def test_flows_h48; assert_in_delta(0.0, (worksheet.flows_h48||0), 0.002); end
  def test_flows_i48; assert_in_delta(0.0, (worksheet.flows_i48||0), 0.002); end
  def test_flows_j48; assert_in_delta(0.0, (worksheet.flows_j48||0), 0.002); end
  def test_flows_k48; assert_in_delta(0.0, (worksheet.flows_k48||0), 0.002); end
  def test_flows_l48; assert_in_delta(0.0, (worksheet.flows_l48||0), 0.002); end
  def test_flows_m48; assert_in_delta(0.0, (worksheet.flows_m48||0), 0.002); end
  def test_flows_n48; assert_in_delta(0.0, (worksheet.flows_n48||0), 0.002); end
  def test_flows_o48; assert_in_delta(0.0, (worksheet.flows_o48||0), 0.002); end
  def test_flows_p48; assert_in_delta(0.0, (worksheet.flows_p48||0), 0.002); end
  def test_flows_t48; assert_equal("Over generation / exports", worksheet.flows_t48); end
  def test_flows_u48; assert_in_delta(0.0, (worksheet.flows_u48||0), 0.002); end
  def test_flows_v48; assert_in_delta(0.0, (worksheet.flows_v48||0), 0.002); end
  def test_flows_w48; assert_in_delta(0.0, (worksheet.flows_w48||0), 0.002); end
  def test_flows_x48; assert_in_delta(0.0, (worksheet.flows_x48||0), 0.002); end
  def test_flows_y48; assert_in_delta(0.0, (worksheet.flows_y48||0), 0.002); end
  def test_flows_z48; assert_in_delta(0.0, (worksheet.flows_z48||0), 0.002); end
  def test_flows_aa48; assert_in_delta(0.0, (worksheet.flows_aa48||0), 0.002); end
  def test_flows_ab48; assert_in_delta(0.0, (worksheet.flows_ab48||0), 0.002); end
  def test_flows_ac48; assert_in_delta(0.0, (worksheet.flows_ac48||0), 0.002); end
  def test_flows_ad48; assert_in_delta(0.0, (worksheet.flows_ad48||0), 0.002); end
  def test_flows_af48; assert_in_epsilon(19.13821200000011, worksheet.flows_af48, 0.002); end
  def test_flows_ag48; assert_in_epsilon(19.138211999999996, worksheet.flows_ag48, 0.002); end
  def test_flows_ah48; assert_in_epsilon(19.138211999999996, worksheet.flows_ah48, 0.002); end
  def test_flows_ai48; assert_in_epsilon(19.138211999999996, worksheet.flows_ai48, 0.002); end
  def test_flows_aj48; assert_in_epsilon(19.13821199999977, worksheet.flows_aj48, 0.002); end
  def test_flows_ak48; assert_in_epsilon(19.138211999999996, worksheet.flows_ak48, 0.002); end
  def test_flows_al48; assert_in_epsilon(19.138211999999996, worksheet.flows_al48, 0.002); end
  def test_flows_am48; assert_in_epsilon(19.13821199999954, worksheet.flows_am48, 0.002); end
  def test_flows_an48; assert_in_epsilon(19.138211999999996, worksheet.flows_an48, 0.002); end
  def test_flows_ao48; assert_in_epsilon(19.138211999999996, worksheet.flows_ao48, 0.002); end
  def test_flows_c49; assert_equal("Wind", worksheet.flows_c49); end
  def test_flows_d49; assert_equal("Re.a", worksheet.flows_d49); end
  def test_flows_e49; assert_equal("Electricity grid", worksheet.flows_e49); end
  def test_flows_f49; assert_equal("V.02", worksheet.flows_f49); end
  def test_flows_g49; assert_in_delta(0.02592772416, worksheet.flows_g49, 0.002); end
  def test_flows_h49; assert_in_delta(0.06859359936, worksheet.flows_h49, 0.002); end
  def test_flows_i49; assert_in_epsilon(11.57035420224, worksheet.flows_i49, 0.002); end
  def test_flows_j49; assert_in_epsilon(22.589636970240004, worksheet.flows_j49, 0.002); end
  def test_flows_k49; assert_in_epsilon(22.589636970240004, worksheet.flows_k49, 0.002); end
  def test_flows_l49; assert_in_epsilon(22.589636970240004, worksheet.flows_l49, 0.002); end
  def test_flows_m49; assert_in_epsilon(22.589636970240004, worksheet.flows_m49, 0.002); end
  def test_flows_n49; assert_in_epsilon(22.589636970240004, worksheet.flows_n49, 0.002); end
  def test_flows_o49; assert_in_epsilon(22.589636970240004, worksheet.flows_o49, 0.002); end
  def test_flows_p49; assert_in_epsilon(22.589636970240004, worksheet.flows_p49, 0.002); end
  def test_flows_t49; assert_equal("Pumped heat", worksheet.flows_t49); end
  def test_flows_u49; assert_in_delta(0.0, (worksheet.flows_u49||0), 0.002); end
  def test_flows_v49; assert_in_delta(0.0, (worksheet.flows_v49||0), 0.002); end
  def test_flows_w49; assert_in_delta(0.0, (worksheet.flows_w49||0), 0.002); end
  def test_flows_x49; assert_in_delta(0.0, (worksheet.flows_x49||0), 0.002); end
  def test_flows_y49; assert_in_delta(0.0, (worksheet.flows_y49||0), 0.002); end
  def test_flows_z49; assert_in_delta(0.0, (worksheet.flows_z49||0), 0.002); end
  def test_flows_aa49; assert_in_delta(0.0, (worksheet.flows_aa49||0), 0.002); end
  def test_flows_ab49; assert_in_delta(0.0, (worksheet.flows_ab49||0), 0.002); end
  def test_flows_ac49; assert_in_delta(0.0, (worksheet.flows_ac49||0), 0.002); end
  def test_flows_ad49; assert_in_delta(0.0, (worksheet.flows_ad49||0), 0.002); end
  def test_flows_af49; assert_in_delta(0.0, (worksheet.flows_af49||0), 0.002); end
  def test_flows_ag49; assert_in_delta(0.0, (worksheet.flows_ag49||0), 0.002); end
  def test_flows_ah49; assert_in_delta(0.0, (worksheet.flows_ah49||0), 0.002); end
  def test_flows_ai49; assert_in_delta(0.0, (worksheet.flows_ai49||0), 0.002); end
  def test_flows_aj49; assert_in_delta(0.0, (worksheet.flows_aj49||0), 0.002); end
  def test_flows_ak49; assert_in_delta(0.0, (worksheet.flows_ak49||0), 0.002); end
  def test_flows_al49; assert_in_delta(0.0, (worksheet.flows_al49||0), 0.002); end
  def test_flows_am49; assert_in_delta(0.0, (worksheet.flows_am49||0), 0.002); end
  def test_flows_an49; assert_in_delta(0.0, (worksheet.flows_an49||0), 0.002); end
  def test_flows_ao49; assert_in_delta(0.0, (worksheet.flows_ao49||0), 0.002); end
  def test_flows_t50; assert_equal("Rail transport", worksheet.flows_t50); end
  def test_flows_u50; assert_in_delta(0.0, (worksheet.flows_u50||0), 0.002); end
  def test_flows_v50; assert_in_delta(0.0, (worksheet.flows_v50||0), 0.002); end
  def test_flows_w50; assert_in_delta(0.0, (worksheet.flows_w50||0), 0.002); end
  def test_flows_x50; assert_in_delta(0.0, (worksheet.flows_x50||0), 0.002); end
  def test_flows_y50; assert_in_delta(0.0, (worksheet.flows_y50||0), 0.002); end
  def test_flows_z50; assert_in_delta(0.0, (worksheet.flows_z50||0), 0.002); end
  def test_flows_aa50; assert_in_delta(0.0, (worksheet.flows_aa50||0), 0.002); end
  def test_flows_ab50; assert_in_delta(0.0, (worksheet.flows_ab50||0), 0.002); end
  def test_flows_ac50; assert_in_delta(0.0, (worksheet.flows_ac50||0), 0.002); end
  def test_flows_ad50; assert_in_delta(0.0, (worksheet.flows_ad50||0), 0.002); end
  def test_flows_af50; assert_equal(:ref, worksheet.flows_af50); end
  def test_flows_ag50; assert_equal(:ref, worksheet.flows_ag50); end
  def test_flows_ah50; assert_equal(:ref, worksheet.flows_ah50); end
  def test_flows_ai50; assert_equal(:ref, worksheet.flows_ai50); end
  def test_flows_aj50; assert_equal(:ref, worksheet.flows_aj50); end
  def test_flows_ak50; assert_equal(:ref, worksheet.flows_ak50); end
  def test_flows_al50; assert_equal(:ref, worksheet.flows_al50); end
  def test_flows_am50; assert_equal(:ref, worksheet.flows_am50); end
  def test_flows_an50; assert_equal(:ref, worksheet.flows_an50); end
  def test_flows_ao50; assert_equal(:ref, worksheet.flows_ao50); end
  def test_flows_t51; assert_equal("Road transport", worksheet.flows_t51); end
  def test_flows_u51; assert_in_delta(0.0, (worksheet.flows_u51||0), 0.002); end
  def test_flows_v51; assert_in_delta(0.0, (worksheet.flows_v51||0), 0.002); end
  def test_flows_w51; assert_in_delta(0.0, (worksheet.flows_w51||0), 0.002); end
  def test_flows_x51; assert_in_delta(0.0, (worksheet.flows_x51||0), 0.002); end
  def test_flows_y51; assert_in_delta(0.0, (worksheet.flows_y51||0), 0.002); end
  def test_flows_z51; assert_in_delta(0.0, (worksheet.flows_z51||0), 0.002); end
  def test_flows_aa51; assert_in_delta(0.0, (worksheet.flows_aa51||0), 0.002); end
  def test_flows_ab51; assert_in_delta(0.0, (worksheet.flows_ab51||0), 0.002); end
  def test_flows_ac51; assert_in_delta(0.0, (worksheet.flows_ac51||0), 0.002); end
  def test_flows_ad51; assert_in_delta(0.0, (worksheet.flows_ad51||0), 0.002); end
  def test_flows_af51; assert_equal(:ref, worksheet.flows_af51); end
  def test_flows_ag51; assert_equal(:ref, worksheet.flows_ag51); end
  def test_flows_ah51; assert_equal(:ref, worksheet.flows_ah51); end
  def test_flows_ai51; assert_equal(:ref, worksheet.flows_ai51); end
  def test_flows_aj51; assert_equal(:ref, worksheet.flows_aj51); end
  def test_flows_ak51; assert_equal(:ref, worksheet.flows_ak51); end
  def test_flows_al51; assert_equal(:ref, worksheet.flows_al51); end
  def test_flows_am51; assert_equal(:ref, worksheet.flows_am51); end
  def test_flows_an51; assert_equal(:ref, worksheet.flows_an51); end
  def test_flows_ao51; assert_equal(:ref, worksheet.flows_ao51); end
  def test_flows_t52; assert_equal("Solar", worksheet.flows_t52); end
  def test_flows_u52; assert_in_delta(0.0, (worksheet.flows_u52||0), 0.002); end
  def test_flows_v52; assert_in_delta(0.006711326312769469, worksheet.flows_v52, 0.002); end
  def test_flows_w52; assert_in_epsilon(12.646527649509972, worksheet.flows_w52, 0.002); end
  def test_flows_x52; assert_in_epsilon(15.962035311349528, worksheet.flows_x52, 0.002); end
  def test_flows_y52; assert_in_epsilon(15.96432877129077, worksheet.flows_y52, 0.002); end
  def test_flows_z52; assert_in_epsilon(15.967094888430221, worksheet.flows_z52, 0.002); end
  def test_flows_aa52; assert_in_epsilon(15.970585665971518, worksheet.flows_aa52, 0.002); end
  def test_flows_ab52; assert_in_epsilon(15.974494321751466, worksheet.flows_ab52, 0.002); end
  def test_flows_ac52; assert_in_epsilon(15.97867018614877, worksheet.flows_ac52, 0.002); end
  def test_flows_ad52; assert_in_epsilon(15.983198109504743, worksheet.flows_ad52, 0.002); end
  def test_flows_af52; assert_in_delta(0.0, (worksheet.flows_af52||0), 0.002); end
  def test_flows_ag52; assert_in_delta(0.0, (worksheet.flows_ag52||0), 0.002); end
  def test_flows_ah52; assert_in_delta(0.0, (worksheet.flows_ah52||0), 0.002); end
  def test_flows_ai52; assert_in_delta(0.0, (worksheet.flows_ai52||0), 0.002); end
  def test_flows_aj52; assert_in_delta(0.0, (worksheet.flows_aj52||0), 0.002); end
  def test_flows_ak52; assert_in_delta(0.0, (worksheet.flows_ak52||0), 0.002); end
  def test_flows_al52; assert_in_delta(0.0, (worksheet.flows_al52||0), 0.002); end
  def test_flows_am52; assert_in_delta(0.0, (worksheet.flows_am52||0), 0.002); end
  def test_flows_an52; assert_in_delta(0.0, (worksheet.flows_an52||0), 0.002); end
  def test_flows_ao52; assert_in_delta(0.0, (worksheet.flows_ao52||0), 0.002); end
  def test_flows_c53; assert_equal("Hydro", worksheet.flows_c53); end
  def test_flows_d53; assert_equal("Re.b", worksheet.flows_d53); end
  def test_flows_e53; assert_equal("Electricity grid", worksheet.flows_e53); end
  def test_flows_f53; assert_equal("R.06", worksheet.flows_f53); end
  def test_flows_g53; assert_in_epsilon(5.285898, worksheet.flows_g53, 0.002); end
  def test_flows_h53; assert_in_epsilon(5.285898, worksheet.flows_h53, 0.002); end
  def test_flows_i53; assert_in_epsilon(5.317455600000001, worksheet.flows_i53, 0.002); end
  def test_flows_j53; assert_in_epsilon(5.396349600000001, worksheet.flows_j53, 0.002); end
  def test_flows_k53; assert_in_epsilon(4.8440916, worksheet.flows_k53, 0.002); end
  def test_flows_l53; assert_in_epsilon(4.8440916, worksheet.flows_l53, 0.002); end
  def test_flows_m53; assert_in_epsilon(4.8440916, worksheet.flows_m53, 0.002); end
  def test_flows_n53; assert_in_epsilon(4.8440916, worksheet.flows_n53, 0.002); end
  def test_flows_o53; assert_in_epsilon(4.8440916, worksheet.flows_o53, 0.002); end
  def test_flows_p53; assert_in_epsilon(4.8440916, worksheet.flows_p53, 0.002); end
  def test_flows_t53; assert_equal("Solar PV", worksheet.flows_t53); end
  def test_flows_u53; assert_in_delta(0.0, (worksheet.flows_u53||0), 0.002); end
  def test_flows_v53; assert_in_delta(0.0, (worksheet.flows_v53||0), 0.002); end
  def test_flows_w53; assert_in_delta(0.0, (worksheet.flows_w53||0), 0.002); end
  def test_flows_x53; assert_in_delta(0.0, (worksheet.flows_x53||0), 0.002); end
  def test_flows_y53; assert_in_delta(0.0, (worksheet.flows_y53||0), 0.002); end
  def test_flows_z53; assert_in_delta(0.0, (worksheet.flows_z53||0), 0.002); end
  def test_flows_aa53; assert_in_delta(0.0, (worksheet.flows_aa53||0), 0.002); end
  def test_flows_ab53; assert_in_delta(0.0, (worksheet.flows_ab53||0), 0.002); end
  def test_flows_ac53; assert_in_delta(0.0, (worksheet.flows_ac53||0), 0.002); end
  def test_flows_ad53; assert_in_delta(0.0, (worksheet.flows_ad53||0), 0.002); end
  def test_flows_af53; assert_in_delta(0.0, (worksheet.flows_af53||0), 0.002); end
  def test_flows_ag53; assert_in_delta(0.0, (worksheet.flows_ag53||0), 0.002); end
  def test_flows_ah53; assert_in_delta(0.0, (worksheet.flows_ah53||0), 0.002); end
  def test_flows_ai53; assert_in_delta(0.0, (worksheet.flows_ai53||0), 0.002); end
  def test_flows_aj53; assert_in_delta(0.0, (worksheet.flows_aj53||0), 0.002); end
  def test_flows_ak53; assert_in_delta(0.0, (worksheet.flows_ak53||0), 0.002); end
  def test_flows_al53; assert_in_delta(0.0, (worksheet.flows_al53||0), 0.002); end
  def test_flows_am53; assert_in_delta(0.0, (worksheet.flows_am53||0), 0.002); end
  def test_flows_an53; assert_in_delta(0.0, (worksheet.flows_an53||0), 0.002); end
  def test_flows_ao53; assert_in_delta(0.0, (worksheet.flows_ao53||0), 0.002); end
  def test_flows_aq53; assert_in_delta(0.0, (worksheet.flows_aq53||0), 0.002); end
  def test_flows_ar53; assert_in_delta(0.0, (worksheet.flows_ar53||0), 0.002); end
  def test_flows_as53; assert_in_delta(0.0, (worksheet.flows_as53||0), 0.002); end
  def test_flows_at53; assert_in_delta(0.0, (worksheet.flows_at53||0), 0.002); end
  def test_flows_au53; assert_in_delta(0.0, (worksheet.flows_au53||0), 0.002); end
  def test_flows_av53; assert_in_delta(0.0, (worksheet.flows_av53||0), 0.002); end
  def test_flows_aw53; assert_in_delta(0.0, (worksheet.flows_aw53||0), 0.002); end
  def test_flows_ax53; assert_in_delta(0.0, (worksheet.flows_ax53||0), 0.002); end
  def test_flows_ay53; assert_in_delta(0.0, (worksheet.flows_ay53||0), 0.002); end
  def test_flows_az53; assert_in_delta(0.0, (worksheet.flows_az53||0), 0.002); end
  def test_flows_t54; assert_equal("Solar Thermal", worksheet.flows_t54); end
  def test_flows_u54; assert_in_delta(0.0, (worksheet.flows_u54||0), 0.002); end
  def test_flows_v54; assert_in_delta(0.0, (worksheet.flows_v54||0), 0.002); end
  def test_flows_w54; assert_in_delta(0.0, (worksheet.flows_w54||0), 0.002); end
  def test_flows_x54; assert_in_delta(0.0, (worksheet.flows_x54||0), 0.002); end
  def test_flows_y54; assert_in_delta(0.0, (worksheet.flows_y54||0), 0.002); end
  def test_flows_z54; assert_in_delta(0.0, (worksheet.flows_z54||0), 0.002); end
  def test_flows_aa54; assert_in_delta(0.0, (worksheet.flows_aa54||0), 0.002); end
  def test_flows_ab54; assert_in_delta(0.0, (worksheet.flows_ab54||0), 0.002); end
  def test_flows_ac54; assert_in_delta(0.0, (worksheet.flows_ac54||0), 0.002); end
  def test_flows_ad54; assert_in_delta(0.0, (worksheet.flows_ad54||0), 0.002); end
  def test_flows_af54; assert_in_delta(0.0, (worksheet.flows_af54||0), 0.002); end
  def test_flows_ag54; assert_in_delta(0.0, (worksheet.flows_ag54||0), 0.002); end
  def test_flows_ah54; assert_in_delta(0.0, (worksheet.flows_ah54||0), 0.002); end
  def test_flows_ai54; assert_in_delta(0.0, (worksheet.flows_ai54||0), 0.002); end
  def test_flows_aj54; assert_in_delta(0.0, (worksheet.flows_aj54||0), 0.002); end
  def test_flows_ak54; assert_in_delta(0.0, (worksheet.flows_ak54||0), 0.002); end
  def test_flows_al54; assert_in_delta(0.0, (worksheet.flows_al54||0), 0.002); end
  def test_flows_am54; assert_in_delta(0.0, (worksheet.flows_am54||0), 0.002); end
  def test_flows_an54; assert_in_delta(0.0, (worksheet.flows_an54||0), 0.002); end
  def test_flows_ao54; assert_in_delta(0.0, (worksheet.flows_ao54||0), 0.002); end
  def test_flows_aq54; assert_in_delta(0.0, (worksheet.flows_aq54||0), 0.002); end
  def test_flows_ar54; assert_in_delta(0.0, (worksheet.flows_ar54||0), 0.002); end
  def test_flows_as54; assert_in_delta(0.0, (worksheet.flows_as54||0), 0.002); end
  def test_flows_at54; assert_in_delta(0.0, (worksheet.flows_at54||0), 0.002); end
  def test_flows_au54; assert_in_delta(0.0, (worksheet.flows_au54||0), 0.002); end
  def test_flows_av54; assert_in_delta(0.0, (worksheet.flows_av54||0), 0.002); end
  def test_flows_aw54; assert_in_delta(0.0, (worksheet.flows_aw54||0), 0.002); end
  def test_flows_ax54; assert_in_delta(0.0, (worksheet.flows_ax54||0), 0.002); end
  def test_flows_ay54; assert_in_delta(0.0, (worksheet.flows_ay54||0), 0.002); end
  def test_flows_az54; assert_in_delta(0.0, (worksheet.flows_az54||0), 0.002); end
  def test_flows_c55; assert_equal("Electricity grid", worksheet.flows_c55); end
  def test_flows_e55; assert_equal("Over generation / exports", worksheet.flows_e55); end
  def test_flows_g55; assert_in_epsilon(19.13821200000011, worksheet.flows_g55, 0.002); end
  def test_flows_h55; assert_in_epsilon(19.138211999999996, worksheet.flows_h55, 0.002); end
  def test_flows_i55; assert_in_epsilon(19.138211999999996, worksheet.flows_i55, 0.002); end
  def test_flows_j55; assert_in_epsilon(19.138211999999996, worksheet.flows_j55, 0.002); end
  def test_flows_k55; assert_in_epsilon(19.13821199999977, worksheet.flows_k55, 0.002); end
  def test_flows_l55; assert_in_epsilon(19.138211999999996, worksheet.flows_l55, 0.002); end
  def test_flows_m55; assert_in_epsilon(19.138211999999996, worksheet.flows_m55, 0.002); end
  def test_flows_n55; assert_in_epsilon(19.13821199999954, worksheet.flows_n55, 0.002); end
  def test_flows_o55; assert_in_epsilon(19.138211999999996, worksheet.flows_o55, 0.002); end
  def test_flows_p55; assert_in_epsilon(19.138211999999996, worksheet.flows_p55, 0.002); end
  def test_flows_t55; assert_equal("Solid", worksheet.flows_t55); end
  def test_flows_u55; assert_equal(:ref, worksheet.flows_u55); end
  def test_flows_v55; assert_equal(:ref, worksheet.flows_v55); end
  def test_flows_w55; assert_equal(:ref, worksheet.flows_w55); end
  def test_flows_x55; assert_equal(:ref, worksheet.flows_x55); end
  def test_flows_y55; assert_equal(:ref, worksheet.flows_y55); end
  def test_flows_z55; assert_equal(:ref, worksheet.flows_z55); end
  def test_flows_aa55; assert_equal(:ref, worksheet.flows_aa55); end
  def test_flows_ab55; assert_equal(:ref, worksheet.flows_ab55); end
  def test_flows_ac55; assert_equal(:ref, worksheet.flows_ac55); end
  def test_flows_ad55; assert_equal(:ref, worksheet.flows_ad55); end
  def test_flows_af55; assert_equal(:ref, worksheet.flows_af55); end
  def test_flows_ag55; assert_equal(:ref, worksheet.flows_ag55); end
  def test_flows_ah55; assert_equal(:ref, worksheet.flows_ah55); end
  def test_flows_ai55; assert_equal(:ref, worksheet.flows_ai55); end
  def test_flows_aj55; assert_equal(:ref, worksheet.flows_aj55); end
  def test_flows_ak55; assert_equal(:ref, worksheet.flows_ak55); end
  def test_flows_al55; assert_equal(:ref, worksheet.flows_al55); end
  def test_flows_am55; assert_equal(:ref, worksheet.flows_am55); end
  def test_flows_an55; assert_equal(:ref, worksheet.flows_an55); end
  def test_flows_ao55; assert_equal(:ref, worksheet.flows_ao55); end
  def test_flows_aq55; assert_equal(:ref, worksheet.flows_aq55); end
  def test_flows_ar55; assert_equal(:ref, worksheet.flows_ar55); end
  def test_flows_as55; assert_equal(:ref, worksheet.flows_as55); end
  def test_flows_at55; assert_equal(:ref, worksheet.flows_at55); end
  def test_flows_au55; assert_equal(:ref, worksheet.flows_au55); end
  def test_flows_av55; assert_equal(:ref, worksheet.flows_av55); end
  def test_flows_aw55; assert_equal(:ref, worksheet.flows_aw55); end
  def test_flows_ax55; assert_equal(:ref, worksheet.flows_ax55); end
  def test_flows_ay55; assert_equal(:ref, worksheet.flows_ay55); end
  def test_flows_az55; assert_equal(:ref, worksheet.flows_az55); end
  def test_flows_c56; assert_equal("Electricity grid", worksheet.flows_c56); end
  def test_flows_d56; assert_equal("ElcDSB.d", worksheet.flows_d56); end
  def test_flows_e56; assert_equal("Losses", worksheet.flows_e56); end
  def test_flows_f56; assert_equal("X.02", worksheet.flows_f56); end
  def test_flows_g56; assert_in_epsilon(90.89760415648641, worksheet.flows_g56, 0.002); end
  def test_flows_h56; assert_in_epsilon(159.0559803835082, worksheet.flows_h56, 0.002); end
  def test_flows_i56; assert_in_epsilon(187.38316454041842, worksheet.flows_i56, 0.002); end
  def test_flows_j56; assert_in_epsilon(222.3125849594682, worksheet.flows_j56, 0.002); end
  def test_flows_k56; assert_in_epsilon(263.5169306775828, worksheet.flows_k56, 0.002); end
  def test_flows_l56; assert_in_epsilon(314.7264071449775, worksheet.flows_l56, 0.002); end
  def test_flows_m56; assert_in_epsilon(378.06634157668765, worksheet.flows_m56, 0.002); end
  def test_flows_n56; assert_in_epsilon(452.00110493253527, worksheet.flows_n56, 0.002); end
  def test_flows_o56; assert_in_epsilon(525.9884984897602, worksheet.flows_o56, 0.002); end
  def test_flows_p56; assert_in_epsilon(609.1850187026416, worksheet.flows_p56, 0.002); end
  def test_flows_t56; assert_equal("Thermal generation", worksheet.flows_t56); end
  def test_flows_u56; assert_in_epsilon(-840.9963741826527, worksheet.flows_u56, 0.002); end
  def test_flows_v56; assert_in_epsilon(-1002.4704141778798, worksheet.flows_v56, 0.002); end
  def test_flows_w56; assert_in_epsilon(-1122.7379829149784, worksheet.flows_w56, 0.002); end
  def test_flows_x56; assert_in_epsilon(-1262.4132863776697, worksheet.flows_x56, 0.002); end
  def test_flows_y56; assert_in_epsilon(-1410.11119349434, worksheet.flows_y56, 0.002); end
  def test_flows_z56; assert_in_epsilon(-1598.27757237474, worksheet.flows_z56, 0.002); end
  def test_flows_aa56; assert_in_epsilon(-1806.204814194401, worksheet.flows_aa56, 0.002); end
  def test_flows_ab56; assert_in_epsilon(-2022.340296756221, worksheet.flows_ab56, 0.002); end
  def test_flows_ac56; assert_in_epsilon(-2354.176915665228, worksheet.flows_ac56, 0.002); end
  def test_flows_ad56; assert_in_epsilon(-2676.424178991041, worksheet.flows_ad56, 0.002); end
  def test_flows_af56; assert_in_epsilon(2550.656605895648, worksheet.flows_af56, 0.002); end
  def test_flows_ag56; assert_in_epsilon(3044.9702297086046, worksheet.flows_ag56, 0.002); end
  def test_flows_ah56; assert_in_epsilon(3495.324053882219, worksheet.flows_ah56, 0.002); end
  def test_flows_ai56; assert_in_epsilon(4048.1554226136714, worksheet.flows_ai56, 0.002); end
  def test_flows_aj56; assert_in_epsilon(4718.337181103529, worksheet.flows_aj56, 0.002); end
  def test_flows_ak56; assert_in_epsilon(5554.483021415184, worksheet.flows_ak56, 0.002); end
  def test_flows_al56; assert_in_epsilon(6563.882418800791, worksheet.flows_al56, 0.002); end
  def test_flows_am56; assert_in_epsilon(7715.552106147393, worksheet.flows_am56, 0.002); end
  def test_flows_an56; assert_in_epsilon(8983.588357723484, worksheet.flows_an56, 0.002); end
  def test_flows_ao56; assert_in_epsilon(10358.563291723565, worksheet.flows_ao56, 0.002); end
  def test_flows_aq56; assert_in_epsilon(-3391.652980078301, worksheet.flows_aq56, 0.002); end
  def test_flows_ar56; assert_in_epsilon(-4047.4406438864844, worksheet.flows_ar56, 0.002); end
  def test_flows_as56; assert_in_epsilon(-4618.062036797197, worksheet.flows_as56, 0.002); end
  def test_flows_at56; assert_in_epsilon(-5310.568708991341, worksheet.flows_at56, 0.002); end
  def test_flows_au56; assert_in_epsilon(-6128.448374597869, worksheet.flows_au56, 0.002); end
  def test_flows_av56; assert_in_epsilon(-7152.760593789924, worksheet.flows_av56, 0.002); end
  def test_flows_aw56; assert_in_epsilon(-8370.087232995193, worksheet.flows_aw56, 0.002); end
  def test_flows_ax56; assert_in_epsilon(-9737.892402903613, worksheet.flows_ax56, 0.002); end
  def test_flows_ay56; assert_in_epsilon(-11337.765273388712, worksheet.flows_ay56, 0.002); end
  def test_flows_az56; assert_in_epsilon(-13034.987470714606, worksheet.flows_az56, 0.002); end
  def test_flows_c57; assert_equal("Gas", worksheet.flows_c57); end
  def test_flows_d57; assert_equal("H2prod", worksheet.flows_d57); end
  def test_flows_e57; assert_equal("H2 conversion", worksheet.flows_e57); end
  def test_flows_f57; assert_equal("V.05", worksheet.flows_f57); end
  def test_flows_g57; assert_in_delta(0.0, (worksheet.flows_g57||0), 0.002); end
  def test_flows_h57; assert_in_delta(0.0, (worksheet.flows_h57||0), 0.002); end
  def test_flows_i57; assert_in_epsilon(-2.161963499979069, worksheet.flows_i57, 0.002); end
  def test_flows_j57; assert_in_epsilon(-4.0156556780336246, worksheet.flows_j57, 0.002); end
  def test_flows_k57; assert_in_epsilon(-6.152729895845032, worksheet.flows_k57, 0.002); end
  def test_flows_l57; assert_in_epsilon(-7.98278712928213, worksheet.flows_l57, 0.002); end
  def test_flows_m57; assert_in_epsilon(-8.855223456314613, worksheet.flows_m57, 0.002); end
  def test_flows_n57; assert_in_epsilon(-10.241845371695193, worksheet.flows_n57, 0.002); end
  def test_flows_o57; assert_in_epsilon(-5.929609869534688, worksheet.flows_o57, 0.002); end
  def test_flows_p57; assert_in_delta(0.0, (worksheet.flows_p57||0), 0.002); end
  def test_flows_t57; assert_equal("Tidal", worksheet.flows_t57); end
  def test_flows_u57; assert_in_delta(0.0, (worksheet.flows_u57||0), 0.002); end
  def test_flows_v57; assert_in_delta(0.0, (worksheet.flows_v57||0), 0.002); end
  def test_flows_w57; assert_in_delta(0.0, (worksheet.flows_w57||0), 0.002); end
  def test_flows_x57; assert_in_delta(0.0, (worksheet.flows_x57||0), 0.002); end
  def test_flows_y57; assert_in_delta(0.0, (worksheet.flows_y57||0), 0.002); end
  def test_flows_z57; assert_in_delta(0.0, (worksheet.flows_z57||0), 0.002); end
  def test_flows_aa57; assert_in_delta(0.0, (worksheet.flows_aa57||0), 0.002); end
  def test_flows_ab57; assert_in_delta(0.0, (worksheet.flows_ab57||0), 0.002); end
  def test_flows_ac57; assert_in_delta(0.0, (worksheet.flows_ac57||0), 0.002); end
  def test_flows_ad57; assert_in_delta(0.0, (worksheet.flows_ad57||0), 0.002); end
  def test_flows_af57; assert_in_delta(0.0, (worksheet.flows_af57||0), 0.002); end
  def test_flows_ag57; assert_in_delta(0.0, (worksheet.flows_ag57||0), 0.002); end
  def test_flows_ah57; assert_in_delta(0.0, (worksheet.flows_ah57||0), 0.002); end
  def test_flows_ai57; assert_in_delta(0.0, (worksheet.flows_ai57||0), 0.002); end
  def test_flows_aj57; assert_in_delta(0.0, (worksheet.flows_aj57||0), 0.002); end
  def test_flows_ak57; assert_in_delta(0.0, (worksheet.flows_ak57||0), 0.002); end
  def test_flows_al57; assert_in_delta(0.0, (worksheet.flows_al57||0), 0.002); end
  def test_flows_am57; assert_in_delta(0.0, (worksheet.flows_am57||0), 0.002); end
  def test_flows_an57; assert_in_delta(0.0, (worksheet.flows_an57||0), 0.002); end
  def test_flows_ao57; assert_in_delta(0.0, (worksheet.flows_ao57||0), 0.002); end
  def test_flows_c58; assert_equal("Electricity grid", worksheet.flows_c58); end
  def test_flows_d58; assert_equal("H2prod", worksheet.flows_d58); end
  def test_flows_e58; assert_equal("H2 conversion", worksheet.flows_e58); end
  def test_flows_f58; assert_equal("V.01", worksheet.flows_f58); end
  def test_flows_g58; assert_in_delta(0.0, (worksheet.flows_g58||0), 0.002); end
  def test_flows_h58; assert_in_delta(0.0, (worksheet.flows_h58||0), 0.002); end
  def test_flows_i58; assert_in_delta(-0.28930134043318234, worksheet.flows_i58, 0.002); end
  def test_flows_j58; assert_in_epsilon(-1.8594561979494917, worksheet.flows_j58, 0.002); end
  def test_flows_k58; assert_in_epsilon(-3.765326524876157, worksheet.flows_k58, 0.002); end
  def test_flows_l58; assert_in_epsilon(-6.713498729348981, worksheet.flows_l58, 0.002); end
  def test_flows_m58; assert_in_epsilon(-10.89262021029453, worksheet.flows_m58, 0.002); end
  def test_flows_n58; assert_in_epsilon(-20.44590495015117, worksheet.flows_n58, 0.002); end
  def test_flows_o58; assert_in_epsilon(-25.47493090716383, worksheet.flows_o58, 0.002); end
  def test_flows_p58; assert_in_epsilon(-34.09306408299295, worksheet.flows_p58, 0.002); end
  def test_flows_c59; assert_equal("H2 conversion", worksheet.flows_c59); end
  def test_flows_d59; assert_equal("H2prod", worksheet.flows_d59); end
  def test_flows_e59; assert_equal("H2", worksheet.flows_e59); end
  def test_flows_f59; assert_equal("V.12", worksheet.flows_f59); end
  def test_flows_g59; assert_in_delta(0.0, (worksheet.flows_g59||0), 0.002); end
  def test_flows_h59; assert_in_delta(0.0, (worksheet.flows_h59||0), 0.002); end
  def test_flows_i59; assert_in_epsilon(1.7173138929823613, worksheet.flows_i59, 0.002); end
  def test_flows_j59; assert_in_epsilon(4.028821762223899, worksheet.flows_j59, 0.002); end
  def test_flows_k59; assert_in_epsilon(6.86817743367345, worksheet.flows_k59, 0.002); end
  def test_flows_l59; assert_in_epsilon(10.312317762429334, worksheet.flows_l59, 0.002); end
  def test_flows_m59; assert_in_epsilon(14.08696617000999, worksheet.flows_m59, 0.002); end
  def test_flows_n59; assert_in_epsilon(22.264881242815637, worksheet.flows_n59, 0.002); end
  def test_flows_o59; assert_in_epsilon(23.355137341712116, worksheet.flows_o59, 0.002); end
  def test_flows_p59; assert_in_epsilon(26.251659343904574, worksheet.flows_p59, 0.002); end
  def test_flows_t59; assert_equal("UK land based bioenergy", worksheet.flows_t59); end
  def test_flows_u59; assert_in_delta(0.0, (worksheet.flows_u59||0), 0.002); end
  def test_flows_v59; assert_in_delta(0.0, (worksheet.flows_v59||0), 0.002); end
  def test_flows_w59; assert_in_delta(0.0, (worksheet.flows_w59||0), 0.002); end
  def test_flows_x59; assert_in_delta(0.0, (worksheet.flows_x59||0), 0.002); end
  def test_flows_y59; assert_in_delta(0.0, (worksheet.flows_y59||0), 0.002); end
  def test_flows_z59; assert_in_delta(0.0, (worksheet.flows_z59||0), 0.002); end
  def test_flows_aa59; assert_in_delta(0.0, (worksheet.flows_aa59||0), 0.002); end
  def test_flows_ab59; assert_in_delta(0.0, (worksheet.flows_ab59||0), 0.002); end
  def test_flows_ac59; assert_in_delta(0.0, (worksheet.flows_ac59||0), 0.002); end
  def test_flows_ad59; assert_in_delta(0.0, (worksheet.flows_ad59||0), 0.002); end
  def test_flows_af59; assert_in_delta(0.0, (worksheet.flows_af59||0), 0.002); end
  def test_flows_ag59; assert_in_delta(0.0, (worksheet.flows_ag59||0), 0.002); end
  def test_flows_ah59; assert_in_delta(0.0, (worksheet.flows_ah59||0), 0.002); end
  def test_flows_ai59; assert_in_delta(0.0, (worksheet.flows_ai59||0), 0.002); end
  def test_flows_aj59; assert_in_delta(0.0, (worksheet.flows_aj59||0), 0.002); end
  def test_flows_ak59; assert_in_delta(0.0, (worksheet.flows_ak59||0), 0.002); end
  def test_flows_al59; assert_in_delta(0.0, (worksheet.flows_al59||0), 0.002); end
  def test_flows_am59; assert_in_delta(0.0, (worksheet.flows_am59||0), 0.002); end
  def test_flows_an59; assert_in_delta(0.0, (worksheet.flows_an59||0), 0.002); end
  def test_flows_ao59; assert_in_delta(0.0, (worksheet.flows_ao59||0), 0.002); end
  def test_flows_c60; assert_equal("H2 conversion", worksheet.flows_c60); end
  def test_flows_d60; assert_equal("H2prod", worksheet.flows_d60); end
  def test_flows_e60; assert_equal("Losses", worksheet.flows_e60); end
  def test_flows_f60; assert_equal("X.01", worksheet.flows_f60); end
  def test_flows_g60; assert_in_delta(0.0, (worksheet.flows_g60||0), 0.002); end
  def test_flows_h60; assert_in_delta(0.0, (worksheet.flows_h60||0), 0.002); end
  def test_flows_i60; assert_in_delta(0.73395094742989, worksheet.flows_i60, 0.002); end
  def test_flows_j60; assert_in_epsilon(1.8462901137592174, worksheet.flows_j60, 0.002); end
  def test_flows_k60; assert_in_epsilon(3.0498789870477387, worksheet.flows_k60, 0.002); end
  def test_flows_l60; assert_in_epsilon(4.384999327978019, worksheet.flows_l60, 0.002); end
  def test_flows_m60; assert_in_epsilon(5.662286193216153, worksheet.flows_m60, 0.002); end
  def test_flows_n60; assert_in_epsilon(8.422869079030729, worksheet.flows_n60, 0.002); end
  def test_flows_o60; assert_in_epsilon(8.049403434986402, worksheet.flows_o60, 0.002); end
  def test_flows_p60; assert_in_epsilon(7.841404739088379, worksheet.flows_p60, 0.002); end
  def test_flows_t60; assert_equal("Wave", worksheet.flows_t60); end
  def test_flows_u60; assert_in_delta(0.0, (worksheet.flows_u60||0), 0.002); end
  def test_flows_v60; assert_in_delta(0.0, (worksheet.flows_v60||0), 0.002); end
  def test_flows_w60; assert_in_delta(0.0, (worksheet.flows_w60||0), 0.002); end
  def test_flows_x60; assert_in_delta(0.0, (worksheet.flows_x60||0), 0.002); end
  def test_flows_y60; assert_in_delta(0.0, (worksheet.flows_y60||0), 0.002); end
  def test_flows_z60; assert_in_delta(0.0, (worksheet.flows_z60||0), 0.002); end
  def test_flows_aa60; assert_in_delta(0.0, (worksheet.flows_aa60||0), 0.002); end
  def test_flows_ab60; assert_in_delta(0.0, (worksheet.flows_ab60||0), 0.002); end
  def test_flows_ac60; assert_in_delta(0.0, (worksheet.flows_ac60||0), 0.002); end
  def test_flows_ad60; assert_in_delta(0.0, (worksheet.flows_ad60||0), 0.002); end
  def test_flows_af60; assert_in_delta(0.0, (worksheet.flows_af60||0), 0.002); end
  def test_flows_ag60; assert_in_delta(0.0, (worksheet.flows_ag60||0), 0.002); end
  def test_flows_ah60; assert_in_delta(0.0, (worksheet.flows_ah60||0), 0.002); end
  def test_flows_ai60; assert_in_delta(0.0, (worksheet.flows_ai60||0), 0.002); end
  def test_flows_aj60; assert_in_delta(0.0, (worksheet.flows_aj60||0), 0.002); end
  def test_flows_ak60; assert_in_delta(0.0, (worksheet.flows_ak60||0), 0.002); end
  def test_flows_al60; assert_in_delta(0.0, (worksheet.flows_al60||0), 0.002); end
  def test_flows_am60; assert_in_delta(0.0, (worksheet.flows_am60||0), 0.002); end
  def test_flows_an60; assert_in_delta(0.0, (worksheet.flows_an60||0), 0.002); end
  def test_flows_ao60; assert_in_delta(0.0, (worksheet.flows_ao60||0), 0.002); end
  def test_flows_t61; assert_equal("Wind", worksheet.flows_t61); end
  def test_flows_u61; assert_in_delta(0.02592772416, worksheet.flows_u61, 0.002); end
  def test_flows_v61; assert_in_delta(0.06859359936, worksheet.flows_v61, 0.002); end
  def test_flows_w61; assert_in_epsilon(11.57035420224, worksheet.flows_w61, 0.002); end
  def test_flows_x61; assert_in_epsilon(22.589636970240004, worksheet.flows_x61, 0.002); end
  def test_flows_y61; assert_in_epsilon(22.589636970240004, worksheet.flows_y61, 0.002); end
  def test_flows_z61; assert_in_epsilon(22.589636970240004, worksheet.flows_z61, 0.002); end
  def test_flows_aa61; assert_in_epsilon(22.589636970240004, worksheet.flows_aa61, 0.002); end
  def test_flows_ab61; assert_in_epsilon(22.589636970240004, worksheet.flows_ab61, 0.002); end
  def test_flows_ac61; assert_in_epsilon(22.589636970240004, worksheet.flows_ac61, 0.002); end
  def test_flows_ad61; assert_in_epsilon(22.589636970240004, worksheet.flows_ad61, 0.002); end
  def test_flows_af61; assert_in_delta(0.0, (worksheet.flows_af61||0), 0.002); end
  def test_flows_ag61; assert_in_delta(0.0, (worksheet.flows_ag61||0), 0.002); end
  def test_flows_ah61; assert_in_delta(0.0, (worksheet.flows_ah61||0), 0.002); end
  def test_flows_ai61; assert_in_delta(0.0, (worksheet.flows_ai61||0), 0.002); end
  def test_flows_aj61; assert_in_delta(0.0, (worksheet.flows_aj61||0), 0.002); end
  def test_flows_ak61; assert_in_delta(0.0, (worksheet.flows_ak61||0), 0.002); end
  def test_flows_al61; assert_in_delta(0.0, (worksheet.flows_al61||0), 0.002); end
  def test_flows_am61; assert_in_delta(0.0, (worksheet.flows_am61||0), 0.002); end
  def test_flows_an61; assert_in_delta(0.0, (worksheet.flows_an61||0), 0.002); end
  def test_flows_ao61; assert_in_delta(0.0, (worksheet.flows_ao61||0), 0.002); end
  def test_flows_c62; assert_equal("H2", worksheet.flows_c62); end
  def test_flows_d62; assert_equal("TRA.a", worksheet.flows_d62); end
  def test_flows_e62; assert_equal("Road transport", worksheet.flows_e62); end
  def test_flows_f62; assert_equal("V.12", worksheet.flows_f62); end
  def test_flows_g62; assert_in_delta(0.0, (worksheet.flows_g62||0), 0.002); end
  def test_flows_h62; assert_in_delta(0.0, (worksheet.flows_h62||0), 0.002); end
  def test_flows_i62; assert_in_epsilon(-1.7173138929823613, worksheet.flows_i62, 0.002); end
  def test_flows_j62; assert_in_epsilon(-4.028821762223899, worksheet.flows_j62, 0.002); end
  def test_flows_k62; assert_in_epsilon(-6.86817743367345, worksheet.flows_k62, 0.002); end
  def test_flows_l62; assert_in_epsilon(-10.312317762429334, worksheet.flows_l62, 0.002); end
  def test_flows_m62; assert_in_epsilon(-14.08696617000999, worksheet.flows_m62, 0.002); end
  def test_flows_n62; assert_in_epsilon(-22.264881242815637, worksheet.flows_n62, 0.002); end
  def test_flows_o62; assert_in_epsilon(-23.355137341712116, worksheet.flows_o62, 0.002); end
  def test_flows_p62; assert_in_epsilon(-26.251659343904574, worksheet.flows_p62, 0.002); end
  def test_flows_c65; assert_equal("RES.L", worksheet.flows_c65); end
  def test_flows_d65; assert_equal("RES.W", worksheet.flows_d65); end
  def test_flows_c66; assert_equal("RES.R", worksheet.flows_c66); end
  def test_flows_d66; assert_equal("RES.H", worksheet.flows_d66); end
  def test_flows_c67; assert_equal("RES.N", worksheet.flows_c67); end
  def test_flows_d67; assert_equal("RES.K", worksheet.flows_d67); end
  def test_flows_c68; assert_equal("RES.O", worksheet.flows_c68); end
  def test_flows_c70; assert_equal("Electricity grid", worksheet.flows_c70); end
  def test_flows_e70; assert_equal("Heating and cooling - homes", worksheet.flows_e70); end
  def test_flows_f70; assert_equal("V.01", worksheet.flows_f70); end
  def test_flows_g70; assert_in_epsilon(-18.278014600654977, worksheet.flows_g70, 0.002); end
  def test_flows_h70; assert_in_epsilon(-20.443606211346424, worksheet.flows_h70, 0.002); end
  def test_flows_i70; assert_in_epsilon(-23.17406759376472, worksheet.flows_i70, 0.002); end
  def test_flows_j70; assert_in_epsilon(-25.964592711263727, worksheet.flows_j70, 0.002); end
  def test_flows_k70; assert_in_epsilon(-28.772210690549997, worksheet.flows_k70, 0.002); end
  def test_flows_l70; assert_in_epsilon(-31.508300263582537, worksheet.flows_l70, 0.002); end
  def test_flows_m70; assert_in_epsilon(-34.59353444729231, worksheet.flows_m70, 0.002); end
  def test_flows_n70; assert_in_epsilon(-37.64426158470966, worksheet.flows_n70, 0.002); end
  def test_flows_o70; assert_in_epsilon(-41.225484013215876, worksheet.flows_o70, 0.002); end
  def test_flows_p70; assert_in_epsilon(-44.72029362447997, worksheet.flows_p70, 0.002); end
  def test_flows_c71; assert_equal("Solid", worksheet.flows_c71); end
  def test_flows_e71; assert_equal("Heating and cooling - homes", worksheet.flows_e71); end
  def test_flows_f71; assert_equal("V.03", worksheet.flows_f71); end
  def test_flows_g71; assert_in_epsilon(-21.32467675301719, worksheet.flows_g71, 0.002); end
  def test_flows_h71; assert_in_epsilon(-22.145699101366496, worksheet.flows_h71, 0.002); end
  def test_flows_i71; assert_in_epsilon(-23.299658471439724, worksheet.flows_i71, 0.002); end
  def test_flows_j71; assert_in_epsilon(-24.37399126921341, worksheet.flows_j71, 0.002); end
  def test_flows_k71; assert_in_epsilon(-25.351911192696033, worksheet.flows_k71, 0.002); end
  def test_flows_l71; assert_in_epsilon(-26.182475259720988, worksheet.flows_l71, 0.002); end
  def test_flows_m71; assert_in_epsilon(-24.440349856320147, worksheet.flows_m71, 0.002); end
  def test_flows_n71; assert_in_epsilon(-22.62257453811536, worksheet.flows_n71, 0.002); end
  def test_flows_o71; assert_in_epsilon(-20.073036727201576, worksheet.flows_o71, 0.002); end
  def test_flows_p71; assert_in_epsilon(-17.514287536624373, worksheet.flows_p71, 0.002); end
  def test_flows_c72; assert_equal("Liquid", worksheet.flows_c72); end
  def test_flows_e72; assert_equal("Heating and cooling - homes", worksheet.flows_e72); end
  def test_flows_f72; assert_equal("V.04", worksheet.flows_f72); end
  def test_flows_g72; assert_in_epsilon(-5.3342914487858675, worksheet.flows_g72, 0.002); end
  def test_flows_h72; assert_in_epsilon(-5.358170678566345, worksheet.flows_h72, 0.002); end
  def test_flows_i72; assert_in_epsilon(-5.428703537355805, worksheet.flows_i72, 0.002); end
  def test_flows_j72; assert_in_epsilon(-5.4606820467496275, worksheet.flows_j72, 0.002); end
  def test_flows_k72; assert_in_epsilon(-5.453295885140176, worksheet.flows_k72, 0.002); end
  def test_flows_l72; assert_in_epsilon(-5.399359158334526, worksheet.flows_l72, 0.002); end
  def test_flows_m72; assert_in_epsilon(-5.004554464813791, worksheet.flows_m72, 0.002); end
  def test_flows_n72; assert_in_epsilon(-4.627484595515089, worksheet.flows_n72, 0.002); end
  def test_flows_o72; assert_in_epsilon(-4.195337238597847, worksheet.flows_o72, 0.002); end
  def test_flows_p72; assert_in_epsilon(-3.809312551429139, worksheet.flows_p72, 0.002); end
  def test_flows_c73; assert_equal("Gas", worksheet.flows_c73); end
  def test_flows_e73; assert_equal("Heating and cooling - homes", worksheet.flows_e73); end
  def test_flows_f73; assert_equal("V.05", worksheet.flows_f73); end
  def test_flows_g73; assert_in_delta(-0.015068956280176871, worksheet.flows_g73, 0.002); end
  def test_flows_h73; assert_in_delta(-0.014386689741063219, worksheet.flows_h73, 0.002); end
  def test_flows_i73; assert_in_delta(-0.013127949088388866, worksheet.flows_i73, 0.002); end
  def test_flows_j73; assert_in_delta(-0.01147314941568747, worksheet.flows_j73, 0.002); end
  def test_flows_k73; assert_in_delta(-0.009427891121885067, worksheet.flows_k73, 0.002); end
  def test_flows_l73; assert_in_delta(-0.007000887302485457, worksheet.flows_l73, 0.002); end
  def test_flows_m73; assert_in_delta(-0.005891673284144599, worksheet.flows_m73, 0.002); end
  def test_flows_n73; assert_in_delta(-0.004638897568401214, worksheet.flows_n73, 0.002); end
  def test_flows_o73; assert_in_delta(-0.002896073900201351, worksheet.flows_o73, 0.002); end
  def test_flows_p73; assert_in_delta(-0.0010107417237876924, worksheet.flows_p73, 0.002); end
  def test_flows_c74; assert_equal("Electricity grid", worksheet.flows_c74); end
  def test_flows_d74; assert_equal("COM.A", worksheet.flows_d74); end
  def test_flows_e74; assert_equal("Heating and cooling - commercial", worksheet.flows_e74); end
  def test_flows_f74; assert_equal("V.01", worksheet.flows_f74); end
  def test_flows_g74; assert_in_epsilon(-107.5932660569133, worksheet.flows_g74, 0.002); end
  def test_flows_h74; assert_in_epsilon(-118.68599796240207, worksheet.flows_h74, 0.002); end
  def test_flows_i74; assert_in_epsilon(-132.95399394710145, worksheet.flows_i74, 0.002); end
  def test_flows_j74; assert_in_epsilon(-150.99350313146752, worksheet.flows_j74, 0.002); end
  def test_flows_k74; assert_in_epsilon(-172.56540812498218, worksheet.flows_k74, 0.002); end
  def test_flows_l74; assert_in_epsilon(-199.28386883431205, worksheet.flows_l74, 0.002); end
  def test_flows_m74; assert_in_epsilon(-234.00469372308652, worksheet.flows_m74, 0.002); end
  def test_flows_n74; assert_in_epsilon(-272.4284220678367, worksheet.flows_n74, 0.002); end
  def test_flows_o74; assert_in_epsilon(-312.65795219252414, worksheet.flows_o74, 0.002); end
  def test_flows_p74; assert_in_epsilon(-365.62365684502447, worksheet.flows_p74, 0.002); end
  def test_flows_c75; assert_equal("Solid", worksheet.flows_c75); end
  def test_flows_d75; assert_equal("COM.A", worksheet.flows_d75); end
  def test_flows_e75; assert_equal("Heating and cooling - commercial", worksheet.flows_e75); end
  def test_flows_f75; assert_equal("V.03", worksheet.flows_f75); end
  def test_flows_g75; assert_in_epsilon(-72.41232043818255, worksheet.flows_g75, 0.002); end
  def test_flows_h75; assert_in_epsilon(-79.8372134787935, worksheet.flows_h75, 0.002); end
  def test_flows_i75; assert_in_epsilon(-86.3458541544367, worksheet.flows_i75, 0.002); end
  def test_flows_j75; assert_in_epsilon(-91.0910207322006, worksheet.flows_j75, 0.002); end
  def test_flows_k75; assert_in_epsilon(-93.40287213602375, worksheet.flows_k75, 0.002); end
  def test_flows_l75; assert_in_epsilon(-93.388505695018, worksheet.flows_l75, 0.002); end
  def test_flows_m75; assert_in_epsilon(-91.04648308845695, worksheet.flows_m75, 0.002); end
  def test_flows_n75; assert_in_epsilon(-84.35592885421863, worksheet.flows_n75, 0.002); end
  def test_flows_o75; assert_in_epsilon(-72.87825928618187, worksheet.flows_o75, 0.002); end
  def test_flows_p75; assert_in_epsilon(-39.919054299670734, worksheet.flows_p75, 0.002); end
  def test_flows_c76; assert_equal("Liquid", worksheet.flows_c76); end
  def test_flows_d76; assert_equal("COM.A", worksheet.flows_d76); end
  def test_flows_e76; assert_equal("Heating and cooling - commercial", worksheet.flows_e76); end
  def test_flows_f76; assert_equal("V.04", worksheet.flows_f76); end
  def test_flows_g76; assert_in_epsilon(-3.3138531529945108, worksheet.flows_g76, 0.002); end
  def test_flows_h76; assert_in_epsilon(-3.660773526145244, worksheet.flows_h76, 0.002); end
  def test_flows_i76; assert_in_epsilon(-4.011151390040396, worksheet.flows_i76, 0.002); end
  def test_flows_j76; assert_in_epsilon(-4.274659098713279, worksheet.flows_j76, 0.002); end
  def test_flows_k76; assert_in_epsilon(-4.417340513229821, worksheet.flows_k76, 0.002); end
  def test_flows_l76; assert_in_epsilon(-4.4439023525835974, worksheet.flows_l76, 0.002); end
  def test_flows_m76; assert_in_epsilon(-4.353640195960504, worksheet.flows_m76, 0.002); end
  def test_flows_n76; assert_in_epsilon(-4.044343695923969, worksheet.flows_n76, 0.002); end
  def test_flows_o76; assert_in_epsilon(-3.4927316704470206, worksheet.flows_o76, 0.002); end
  def test_flows_p76; assert_in_epsilon(-1.8557577656769244, worksheet.flows_p76, 0.002); end
  def test_flows_c77; assert_equal("Gas", worksheet.flows_c77); end
  def test_flows_d77; assert_equal("COM.A", worksheet.flows_d77); end
  def test_flows_e77; assert_equal("Heating and cooling - commercial", worksheet.flows_e77); end
  def test_flows_f77; assert_equal("V.05", worksheet.flows_f77); end
  def test_flows_g77; assert_in_epsilon(-21.95396556633637, worksheet.flows_g77, 0.002); end
  def test_flows_h77; assert_in_epsilon(-24.252280420610905, worksheet.flows_h77, 0.002); end
  def test_flows_i77; assert_in_epsilon(-26.701761423678608, worksheet.flows_i77, 0.002); end
  def test_flows_j77; assert_in_epsilon(-28.73877218637965, worksheet.flows_j77, 0.002); end
  def test_flows_k77; assert_in_epsilon(-30.157608259681343, worksheet.flows_k77, 0.002); end
  def test_flows_l77; assert_in_epsilon(-31.027985299683333, worksheet.flows_l77, 0.002); end
  def test_flows_m77; assert_in_epsilon(-31.420184441837755, worksheet.flows_m77, 0.002); end
  def test_flows_n77; assert_in_epsilon(-30.62174250684394, worksheet.flows_n77, 0.002); end
  def test_flows_o77; assert_in_epsilon(-28.446471054316113, worksheet.flows_o77, 0.002); end
  def test_flows_p77; assert_in_epsilon(-20.20822007520743, worksheet.flows_p77, 0.002); end
  def test_flows_c78; assert_equal("Electricity grid", worksheet.flows_c78); end
  def test_flows_e78; assert_equal("Lighting & appliances - homes", worksheet.flows_e78); end
  def test_flows_f78; assert_equal("V.01", worksheet.flows_f78); end
  def test_flows_g78; assert_in_epsilon(-36.986893473857904, worksheet.flows_g78, 0.002); end
  def test_flows_h78; assert_in_epsilon(-41.973434793451176, worksheet.flows_h78, 0.002); end
  def test_flows_i78; assert_in_epsilon(-48.355451950051965, worksheet.flows_i78, 0.002); end
  def test_flows_j78; assert_in_epsilon(-54.96804802647876, worksheet.flows_j78, 0.002); end
  def test_flows_k78; assert_in_epsilon(-61.71430636739369, worksheet.flows_k78, 0.002); end
  def test_flows_l78; assert_in_epsilon(-68.39497459147746, worksheet.flows_l78, 0.002); end
  def test_flows_m78; assert_in_epsilon(-75.89806194178264, worksheet.flows_m78, 0.002); end
  def test_flows_n78; assert_in_epsilon(-83.38017321179085, worksheet.flows_n78, 0.002); end
  def test_flows_o78; assert_in_epsilon(-92.31487655480777, worksheet.flows_o78, 0.002); end
  def test_flows_p78; assert_in_epsilon(-101.11025363501369, worksheet.flows_p78, 0.002); end
  def test_flows_c79; assert_equal("Electricity grid", worksheet.flows_c79); end
  def test_flows_d79; assert_equal("COM.A", worksheet.flows_d79); end
  def test_flows_e79; assert_equal("Lighting & appliances - commercial", worksheet.flows_e79); end
  def test_flows_f79; assert_equal("V.01", worksheet.flows_f79); end
  def test_flows_g79; assert_in_epsilon(-107.5932660569133, worksheet.flows_g79, 0.002); end
  def test_flows_h79; assert_in_epsilon(-118.68599796240207, worksheet.flows_h79, 0.002); end
  def test_flows_i79; assert_in_epsilon(-132.95399394710145, worksheet.flows_i79, 0.002); end
  def test_flows_j79; assert_in_epsilon(-150.99350313146752, worksheet.flows_j79, 0.002); end
  def test_flows_k79; assert_in_epsilon(-172.56540812498218, worksheet.flows_k79, 0.002); end
  def test_flows_l79; assert_in_epsilon(-199.28386883431205, worksheet.flows_l79, 0.002); end
  def test_flows_m79; assert_in_epsilon(-234.00469372308652, worksheet.flows_m79, 0.002); end
  def test_flows_n79; assert_in_epsilon(-272.4284220678367, worksheet.flows_n79, 0.002); end
  def test_flows_o79; assert_in_epsilon(-312.65795219252414, worksheet.flows_o79, 0.002); end
  def test_flows_p79; assert_in_epsilon(-365.62365684502447, worksheet.flows_p79, 0.002); end
  def test_flows_c80; assert_equal("Gas", worksheet.flows_c80); end
  def test_flows_d80; assert_equal("COM.A", worksheet.flows_d80); end
  def test_flows_e80; assert_equal("Lighting & appliances - commercial", worksheet.flows_e80); end
  def test_flows_f80; assert_equal("V.05", worksheet.flows_f80); end
  def test_flows_g80; assert_in_epsilon(-21.95396556633637, worksheet.flows_g80, 0.002); end
  def test_flows_h80; assert_in_epsilon(-24.252280420610905, worksheet.flows_h80, 0.002); end
  def test_flows_i80; assert_in_epsilon(-26.701761423678608, worksheet.flows_i80, 0.002); end
  def test_flows_j80; assert_in_epsilon(-28.73877218637965, worksheet.flows_j80, 0.002); end
  def test_flows_k80; assert_in_epsilon(-30.157608259681343, worksheet.flows_k80, 0.002); end
  def test_flows_l80; assert_in_epsilon(-31.027985299683333, worksheet.flows_l80, 0.002); end
  def test_flows_m80; assert_in_epsilon(-31.420184441837755, worksheet.flows_m80, 0.002); end
  def test_flows_n80; assert_in_epsilon(-30.62174250684394, worksheet.flows_n80, 0.002); end
  def test_flows_o80; assert_in_epsilon(-28.446471054316113, worksheet.flows_o80, 0.002); end
  def test_flows_p80; assert_in_epsilon(-20.20822007520743, worksheet.flows_p80, 0.002); end
  def test_flows_c81; assert_equal("Electricity grid", worksheet.flows_c81); end
  def test_flows_e81; assert_equal("Industry", worksheet.flows_e81); end
  def test_flows_g81; assert_equal(:ref, worksheet.flows_g81); end
  def test_flows_h81; assert_equal(:ref, worksheet.flows_h81); end
  def test_flows_i81; assert_equal(:ref, worksheet.flows_i81); end
  def test_flows_j81; assert_equal(:ref, worksheet.flows_j81); end
  def test_flows_k81; assert_equal(:ref, worksheet.flows_k81); end
  def test_flows_l81; assert_equal(:ref, worksheet.flows_l81); end
  def test_flows_m81; assert_equal(:ref, worksheet.flows_m81); end
  def test_flows_n81; assert_equal(:ref, worksheet.flows_n81); end
  def test_flows_o81; assert_equal(:ref, worksheet.flows_o81); end
  def test_flows_p81; assert_equal(:ref, worksheet.flows_p81); end
  def test_flows_c82; assert_equal("Solid", worksheet.flows_c82); end
  def test_flows_e82; assert_equal("Industry", worksheet.flows_e82); end
  def test_flows_g82; assert_equal(:ref, worksheet.flows_g82); end
  def test_flows_h82; assert_equal(:ref, worksheet.flows_h82); end
  def test_flows_i82; assert_equal(:ref, worksheet.flows_i82); end
  def test_flows_j82; assert_equal(:ref, worksheet.flows_j82); end
  def test_flows_k82; assert_equal(:ref, worksheet.flows_k82); end
  def test_flows_l82; assert_equal(:ref, worksheet.flows_l82); end
  def test_flows_m82; assert_equal(:ref, worksheet.flows_m82); end
  def test_flows_n82; assert_equal(:ref, worksheet.flows_n82); end
  def test_flows_o82; assert_equal(:ref, worksheet.flows_o82); end
  def test_flows_p82; assert_equal(:ref, worksheet.flows_p82); end
  def test_flows_c83; assert_equal("Liquid", worksheet.flows_c83); end
  def test_flows_e83; assert_equal("Industry", worksheet.flows_e83); end
  def test_flows_g83; assert_equal(:ref, worksheet.flows_g83); end
  def test_flows_h83; assert_equal(:ref, worksheet.flows_h83); end
  def test_flows_i83; assert_equal(:ref, worksheet.flows_i83); end
  def test_flows_j83; assert_equal(:ref, worksheet.flows_j83); end
  def test_flows_k83; assert_equal(:ref, worksheet.flows_k83); end
  def test_flows_l83; assert_equal(:ref, worksheet.flows_l83); end
  def test_flows_m83; assert_equal(:ref, worksheet.flows_m83); end
  def test_flows_n83; assert_equal(:ref, worksheet.flows_n83); end
  def test_flows_o83; assert_equal(:ref, worksheet.flows_o83); end
  def test_flows_p83; assert_equal(:ref, worksheet.flows_p83); end
  def test_flows_c84; assert_equal("Gas", worksheet.flows_c84); end
  def test_flows_e84; assert_equal("Industry", worksheet.flows_e84); end
  def test_flows_g84; assert_equal(:ref, worksheet.flows_g84); end
  def test_flows_h84; assert_equal(:ref, worksheet.flows_h84); end
  def test_flows_i84; assert_equal(:ref, worksheet.flows_i84); end
  def test_flows_j84; assert_equal(:ref, worksheet.flows_j84); end
  def test_flows_k84; assert_equal(:ref, worksheet.flows_k84); end
  def test_flows_l84; assert_equal(:ref, worksheet.flows_l84); end
  def test_flows_m84; assert_equal(:ref, worksheet.flows_m84); end
  def test_flows_n84; assert_equal(:ref, worksheet.flows_n84); end
  def test_flows_o84; assert_equal(:ref, worksheet.flows_o84); end
  def test_flows_p84; assert_equal(:ref, worksheet.flows_p84); end
  def test_flows_c85; assert_equal("Electricity grid", worksheet.flows_c85); end
  def test_flows_e85; assert_equal("Agriculture", worksheet.flows_e85); end
  def test_flows_g85; assert_equal(:ref, worksheet.flows_g85); end
  def test_flows_h85; assert_equal(:ref, worksheet.flows_h85); end
  def test_flows_i85; assert_equal(:ref, worksheet.flows_i85); end
  def test_flows_j85; assert_equal(:ref, worksheet.flows_j85); end
  def test_flows_k85; assert_equal(:ref, worksheet.flows_k85); end
  def test_flows_l85; assert_equal(:ref, worksheet.flows_l85); end
  def test_flows_m85; assert_equal(:ref, worksheet.flows_m85); end
  def test_flows_n85; assert_equal(:ref, worksheet.flows_n85); end
  def test_flows_o85; assert_equal(:ref, worksheet.flows_o85); end
  def test_flows_p85; assert_equal(:ref, worksheet.flows_p85); end
  def test_flows_c86; assert_equal("Solid", worksheet.flows_c86); end
  def test_flows_e86; assert_equal("Agriculture", worksheet.flows_e86); end
  def test_flows_g86; assert_equal(:ref, worksheet.flows_g86); end
  def test_flows_h86; assert_equal(:ref, worksheet.flows_h86); end
  def test_flows_i86; assert_equal(:ref, worksheet.flows_i86); end
  def test_flows_j86; assert_equal(:ref, worksheet.flows_j86); end
  def test_flows_k86; assert_equal(:ref, worksheet.flows_k86); end
  def test_flows_l86; assert_equal(:ref, worksheet.flows_l86); end
  def test_flows_m86; assert_equal(:ref, worksheet.flows_m86); end
  def test_flows_n86; assert_equal(:ref, worksheet.flows_n86); end
  def test_flows_o86; assert_equal(:ref, worksheet.flows_o86); end
  def test_flows_p86; assert_equal(:ref, worksheet.flows_p86); end
  def test_flows_c87; assert_equal("Liquid", worksheet.flows_c87); end
  def test_flows_e87; assert_equal("Agriculture", worksheet.flows_e87); end
  def test_flows_g87; assert_equal(:ref, worksheet.flows_g87); end
  def test_flows_h87; assert_equal(:ref, worksheet.flows_h87); end
  def test_flows_i87; assert_equal(:ref, worksheet.flows_i87); end
  def test_flows_j87; assert_equal(:ref, worksheet.flows_j87); end
  def test_flows_k87; assert_equal(:ref, worksheet.flows_k87); end
  def test_flows_l87; assert_equal(:ref, worksheet.flows_l87); end
  def test_flows_m87; assert_equal(:ref, worksheet.flows_m87); end
  def test_flows_n87; assert_equal(:ref, worksheet.flows_n87); end
  def test_flows_o87; assert_equal(:ref, worksheet.flows_o87); end
  def test_flows_p87; assert_equal(:ref, worksheet.flows_p87); end
  def test_flows_c88; assert_equal("Gas", worksheet.flows_c88); end
  def test_flows_e88; assert_equal("Agriculture", worksheet.flows_e88); end
  def test_flows_g88; assert_equal(:ref, worksheet.flows_g88); end
  def test_flows_h88; assert_equal(:ref, worksheet.flows_h88); end
  def test_flows_i88; assert_equal(:ref, worksheet.flows_i88); end
  def test_flows_j88; assert_equal(:ref, worksheet.flows_j88); end
  def test_flows_k88; assert_equal(:ref, worksheet.flows_k88); end
  def test_flows_l88; assert_equal(:ref, worksheet.flows_l88); end
  def test_flows_m88; assert_equal(:ref, worksheet.flows_m88); end
  def test_flows_n88; assert_equal(:ref, worksheet.flows_n88); end
  def test_flows_o88; assert_equal(:ref, worksheet.flows_o88); end
  def test_flows_p88; assert_equal(:ref, worksheet.flows_p88); end
  def test_flows_c89; assert_equal("Electricity grid", worksheet.flows_c89); end
  def test_flows_e89; assert_equal("Road transport", worksheet.flows_e89); end
  def test_flows_g89; assert_equal(:ref, worksheet.flows_g89); end
  def test_flows_h89; assert_equal(:ref, worksheet.flows_h89); end
  def test_flows_i89; assert_equal(:ref, worksheet.flows_i89); end
  def test_flows_j89; assert_equal(:ref, worksheet.flows_j89); end
  def test_flows_k89; assert_equal(:ref, worksheet.flows_k89); end
  def test_flows_l89; assert_equal(:ref, worksheet.flows_l89); end
  def test_flows_m89; assert_equal(:ref, worksheet.flows_m89); end
  def test_flows_n89; assert_equal(:ref, worksheet.flows_n89); end
  def test_flows_o89; assert_equal(:ref, worksheet.flows_o89); end
  def test_flows_p89; assert_equal(:ref, worksheet.flows_p89); end
  def test_flows_c90; assert_equal("Liquid", worksheet.flows_c90); end
  def test_flows_e90; assert_equal("Road transport", worksheet.flows_e90); end
  def test_flows_g90; assert_equal(:ref, worksheet.flows_g90); end
  def test_flows_h90; assert_equal(:ref, worksheet.flows_h90); end
  def test_flows_i90; assert_equal(:ref, worksheet.flows_i90); end
  def test_flows_j90; assert_equal(:ref, worksheet.flows_j90); end
  def test_flows_k90; assert_equal(:ref, worksheet.flows_k90); end
  def test_flows_l90; assert_equal(:ref, worksheet.flows_l90); end
  def test_flows_m90; assert_equal(:ref, worksheet.flows_m90); end
  def test_flows_n90; assert_equal(:ref, worksheet.flows_n90); end
  def test_flows_o90; assert_equal(:ref, worksheet.flows_o90); end
  def test_flows_p90; assert_equal(:ref, worksheet.flows_p90); end
  def test_flows_c91; assert_equal("Electricity grid", worksheet.flows_c91); end
  def test_flows_e91; assert_equal("Rail transport", worksheet.flows_e91); end
  def test_flows_g91; assert_equal(:ref, worksheet.flows_g91); end
  def test_flows_h91; assert_equal(:ref, worksheet.flows_h91); end
  def test_flows_i91; assert_equal(:ref, worksheet.flows_i91); end
  def test_flows_j91; assert_equal(:ref, worksheet.flows_j91); end
  def test_flows_k91; assert_equal(:ref, worksheet.flows_k91); end
  def test_flows_l91; assert_equal(:ref, worksheet.flows_l91); end
  def test_flows_m91; assert_equal(:ref, worksheet.flows_m91); end
  def test_flows_n91; assert_equal(:ref, worksheet.flows_n91); end
  def test_flows_o91; assert_equal(:ref, worksheet.flows_o91); end
  def test_flows_p91; assert_equal(:ref, worksheet.flows_p91); end
  def test_flows_c92; assert_equal("Liquid", worksheet.flows_c92); end
  def test_flows_e92; assert_equal("Rail transport", worksheet.flows_e92); end
  def test_flows_g92; assert_equal(:ref, worksheet.flows_g92); end
  def test_flows_h92; assert_equal(:ref, worksheet.flows_h92); end
  def test_flows_i92; assert_equal(:ref, worksheet.flows_i92); end
  def test_flows_j92; assert_equal(:ref, worksheet.flows_j92); end
  def test_flows_k92; assert_equal(:ref, worksheet.flows_k92); end
  def test_flows_l92; assert_equal(:ref, worksheet.flows_l92); end
  def test_flows_m92; assert_equal(:ref, worksheet.flows_m92); end
  def test_flows_n92; assert_equal(:ref, worksheet.flows_n92); end
  def test_flows_o92; assert_equal(:ref, worksheet.flows_o92); end
  def test_flows_p92; assert_equal(:ref, worksheet.flows_p92); end
  def test_flows_c93; assert_equal("Liquid", worksheet.flows_c93); end
  def test_flows_e93; assert_equal("Domestic aviation", worksheet.flows_e93); end
  def test_flows_g93; assert_equal(:ref, worksheet.flows_g93); end
  def test_flows_h93; assert_equal(:ref, worksheet.flows_h93); end
  def test_flows_i93; assert_equal(:ref, worksheet.flows_i93); end
  def test_flows_j93; assert_equal(:ref, worksheet.flows_j93); end
  def test_flows_k93; assert_equal(:ref, worksheet.flows_k93); end
  def test_flows_l93; assert_equal(:ref, worksheet.flows_l93); end
  def test_flows_m93; assert_equal(:ref, worksheet.flows_m93); end
  def test_flows_n93; assert_equal(:ref, worksheet.flows_n93); end
  def test_flows_o93; assert_equal(:ref, worksheet.flows_o93); end
  def test_flows_p93; assert_equal(:ref, worksheet.flows_p93); end
  def test_flows_c94; assert_equal("Liquid", worksheet.flows_c94); end
  def test_flows_e94; assert_equal("National navigation", worksheet.flows_e94); end
  def test_flows_g94; assert_equal(:ref, worksheet.flows_g94); end
  def test_flows_h94; assert_equal(:ref, worksheet.flows_h94); end
  def test_flows_i94; assert_equal(:ref, worksheet.flows_i94); end
  def test_flows_j94; assert_equal(:ref, worksheet.flows_j94); end
  def test_flows_k94; assert_equal(:ref, worksheet.flows_k94); end
  def test_flows_l94; assert_equal(:ref, worksheet.flows_l94); end
  def test_flows_m94; assert_equal(:ref, worksheet.flows_m94); end
  def test_flows_n94; assert_equal(:ref, worksheet.flows_n94); end
  def test_flows_o94; assert_equal(:ref, worksheet.flows_o94); end
  def test_flows_p94; assert_equal(:ref, worksheet.flows_p94); end
  def test_flows_c95; assert_equal("Liquid", worksheet.flows_c95); end
  def test_flows_e95; assert_equal("International aviation", worksheet.flows_e95); end
  def test_flows_g95; assert_equal(:ref, worksheet.flows_g95); end
  def test_flows_h95; assert_equal(:ref, worksheet.flows_h95); end
  def test_flows_i95; assert_equal(:ref, worksheet.flows_i95); end
  def test_flows_j95; assert_equal(:ref, worksheet.flows_j95); end
  def test_flows_k95; assert_equal(:ref, worksheet.flows_k95); end
  def test_flows_l95; assert_equal(:ref, worksheet.flows_l95); end
  def test_flows_m95; assert_equal(:ref, worksheet.flows_m95); end
  def test_flows_n95; assert_equal(:ref, worksheet.flows_n95); end
  def test_flows_o95; assert_equal(:ref, worksheet.flows_o95); end
  def test_flows_p95; assert_equal(:ref, worksheet.flows_p95); end
  def test_flows_c96; assert_equal("Liquid", worksheet.flows_c96); end
  def test_flows_e96; assert_equal("International shipping", worksheet.flows_e96); end
  def test_flows_g96; assert_equal(:ref, worksheet.flows_g96); end
  def test_flows_h96; assert_equal(:ref, worksheet.flows_h96); end
  def test_flows_i96; assert_equal(:ref, worksheet.flows_i96); end
  def test_flows_j96; assert_equal(:ref, worksheet.flows_j96); end
  def test_flows_k96; assert_equal(:ref, worksheet.flows_k96); end
  def test_flows_l96; assert_equal(:ref, worksheet.flows_l96); end
  def test_flows_m96; assert_equal(:ref, worksheet.flows_m96); end
  def test_flows_n96; assert_equal(:ref, worksheet.flows_n96); end
  def test_flows_o96; assert_equal(:ref, worksheet.flows_o96); end
  def test_flows_p96; assert_equal(:ref, worksheet.flows_p96); end
  def test_flows_c97; assert_equal("Electricity grid", worksheet.flows_c97); end
  def test_flows_e97; assert_equal("Geosequestration", worksheet.flows_e97); end
  def test_flows_g97; assert_equal(:ref, worksheet.flows_g97); end
  def test_flows_h97; assert_equal(:na, worksheet.flows_h97); end
  def test_flows_i97; assert_equal(:na, worksheet.flows_i97); end
  def test_flows_j97; assert_equal(:na, worksheet.flows_j97); end
  def test_flows_k97; assert_equal(:na, worksheet.flows_k97); end
  def test_flows_l97; assert_equal(:na, worksheet.flows_l97); end
  def test_flows_m97; assert_equal(:na, worksheet.flows_m97); end
  def test_flows_n97; assert_equal(:na, worksheet.flows_n97); end
  def test_flows_o97; assert_equal(:na, worksheet.flows_o97); end
  def test_flows_p97; assert_equal(:na, worksheet.flows_p97); end
  def test_flows_c98; assert_equal("Gas", worksheet.flows_c98); end
  def test_flows_e98; assert_equal("Losses", worksheet.flows_e98); end
  def test_flows_g98; assert_in_delta(0.0, (worksheet.flows_g98||0), 0.002); end
  def test_flows_h98; assert_in_delta(0.0, (worksheet.flows_h98||0), 0.002); end
  def test_flows_i98; assert_in_delta(0.0, (worksheet.flows_i98||0), 0.002); end
  def test_flows_j98; assert_in_delta(0.0, (worksheet.flows_j98||0), 0.002); end
  def test_flows_k98; assert_in_delta(0.0, (worksheet.flows_k98||0), 0.002); end
  def test_flows_l98; assert_in_delta(0.0, (worksheet.flows_l98||0), 0.002); end
  def test_flows_m98; assert_in_delta(0.0, (worksheet.flows_m98||0), 0.002); end
  def test_flows_n98; assert_in_delta(0.0, (worksheet.flows_n98||0), 0.002); end
  def test_flows_o98; assert_in_delta(0.0, (worksheet.flows_o98||0), 0.002); end
  def test_flows_p98; assert_in_delta(0.0, (worksheet.flows_p98||0), 0.002); end
end
