#! /usr/bin/env ruby
# frozen_string_literal: true

require 'debug'

score = ARGV[0].split(',')
shots = []
score.each do |s|
  shots << (s == 'X' ? 10 : s.to_i)
end
