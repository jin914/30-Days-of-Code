#!/bin/ruby

require 'json'
require 'stringio'


n = gets.to_i
base = n.to_s(2)

max_length = 0
curr_length = 0

for x in (0..base.length)
    if(base[x]=='1')
        curr_length += 1
    else
        if(curr_length > max_length)
            max_length = curr_length
        end
        curr_length = 0            
    end
end

puts max_length
