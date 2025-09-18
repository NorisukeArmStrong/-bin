#! /usr/bin/env ruby

require 'optparse'
require 'date'

# main_program
opt = OptionParser.new
Date.today

opt.on('-y [VAL]') {|v| year = v }
opt.on('-m [VAL]') {|v| month = v }
opt.parse!(ARGV)

month = today.month
year = today.year

puts "month月　yaer年"
puts "日　月　火　水　木　金　土"
puts "日にち"
