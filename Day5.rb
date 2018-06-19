#!/bin/ruby

require 'json'
require 'stringio'



n = gets.to_i

for x in 1..10
    y = x*n
    puts "#{n} x #{x} = #{y}"
end