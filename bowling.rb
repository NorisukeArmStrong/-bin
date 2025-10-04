#! /usr/bin/env ruby
# frozen_string_literal: true

score = ARGV[0].split(',')
shots = []
i = 0
frames = []
total = 0
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

frames.each_with_index do |f, i|
  total += if f[0] == 10 && i < 9
             if frames[i + 1].size < 2
               f[0] + frames[i + 1][0] + frames[i + 2][0]
             elsif frames[i + 1].size == 3
               f[0] + frames[i + 1][0] + frames[i + 1][1]
             else
               f[0] + frames[i + 1].sum
             end
           elsif i == 9
             f.sum
           elsif f.sum == 10
             f.sum + frames[i + 1][0]
           else
             f.sum
           end
end
p total
