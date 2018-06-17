#!/bin/ruby

require 'json'
require 'stringio'

N = gets.to_i

if N%2!=0 || N>=6 && N<=20
    puts 'Weird'
else
    puts 'Not Weird'
end
    
