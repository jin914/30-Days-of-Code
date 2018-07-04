#!/bin/ruby

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
# Write Your Code Here

totalSwaps = 0

for i in (0..a.length-1)
    
    for j in (0..a.length-2)
        if a[j] > a[j+1] 
            a[j], a[j+1] = a[j+1], a[j]
            totalSwaps += 1;
        end
    end
end

puts "Array is sorted in #{totalSwaps} swaps.\nFirst Element: #{a[0]}\nLast Element: #{a[a.length-1]}"