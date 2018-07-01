class RangeError < StandardError
end


class Calculator
    def power(n, p)
        a = Integer(n)
        b = Integer(p)
        
        if(a<0 || b<0)
            raise RangeError.new(), "n and p should be non-negative"
        else
            result = a**b
            return result
        end
    end
end

myCalculator = Calculator.new()

t = gets.to_i

for i in 1..t
    n, p = gets.split.map(&:to_i)
    begin
        ans = myCalculator.power(n, p)
        puts ans.to_i
    rescue RangeError => e
        puts e.message
    end
end