#!/bin/ruby

S = gets.strip

output = ""
begin
    output = Integer(S)
rescue 
    puts "Bad String"
end

puts output
