#! /usr/bin/env ruby

require 'optparse'
require 'date'

# main_program
opt = OptionParser.new
date = Date.today

month = date.month
year = date.year
line_size = 20

opt.on('-y [VAL]') {|v| year = v.to_i }
opt.on('-m [VAL]') {|v| month = v.to_i }
opt.parse(ARGV)

sel_wday = Date.new(year, month, 1).wday
sel_first_day = Date.new(year, month, 1)
sel_last_day = Date.new(year, month, -1)

puts "#{month}月 #{year}".center(line_size)
puts "日 月 火 水 木 金 土"
sel_wday.times do
  print "   "
end

(sel_first_day..sel_last_day).each do |d|
  if d.wday == 0 && d.day != 1
    print "\n"
  end
  if d.day.to_s.length == 1
    print d.day.to_s.rjust(2) + " "
  else
    print d.day.to_s + " "
  end
end
