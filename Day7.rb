#!/bin/ruby

require 'json'
require 'stringio'



n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

for x in (0..arr.length-1)
     print "#{arr[arr.length-1-x]} "
end
