#! /usr/bin/env ruby
# frozen_string_literal: true

score = ARGV[0].split(',')
shots = []
i = 0
frames = []
score.each do |s|
  shots << (s == 'X' ? 10 : s.to_i)
end

while i < shots.size && frames.size < 9
  if shots[i] == 10
    frames << [shots[i]]
    i += 1
  else
    frames << shots[i, 2]
    i += 2
  end
end
frames << shots[i..]
