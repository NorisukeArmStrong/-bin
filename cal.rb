#! /usr/bin/env ruby

require 'optparse'
require 'date'

# main_program
opt = OptionParser.new
Date.today

month = Date.today.month
year = Date.today.year
line_size = 20

opt.on('-y [VAL]') {|v| year = v }
opt.on('-m [VAL]') {|v| month = v }
opt.parse!(ARGV)


puts "#{month}月 #{year}".center(line_size)
puts "日 月 火 水 木 金 土"
puts "1 2 3 4 5 6 7 "

p Date.today.wday
