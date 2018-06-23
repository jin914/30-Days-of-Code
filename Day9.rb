#!/bin/ruby

require 'json'
require 'stringio'

# Complete the factorial function below.
def factorial(n)
    if(n==1)
        return 1
    else
        result = n.to_i * factorial(n-1)
        return result.to_i
    end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

result = factorial n

fptr.write result
fptr.write "\n"

fptr.close()
