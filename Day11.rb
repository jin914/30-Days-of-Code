#!/bin/ruby

require 'json'
require 'stringio'

arr = Array.new(6)

6.times do |i|
    arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

curr_sum = 0;
max_sum = 0;

for i in (0...arr.length-2)
    for j in (0...arr[i+2].length-2)
        curr_sum = arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
        puts curr_sum
	if(curr_sum > max_sum || (j==0 && i==0))
            max_sum = curr_sum
        end
        curr_sum = 0
    end
end

puts max_sum
