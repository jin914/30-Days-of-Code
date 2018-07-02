# create the Solution class
class Solution
  	# complete the code 
    
    def initialize()
        @q = ""
        @s = ""
    end
    
    def push_character(c)
        @s += c
    end
    
    def enqueue_character(c)
        @q += c
    end
    
    def pop_character()
        #get last char of s
        x = @s[@s.length-1]
        @s[@s.length-1] = ''
        return x
    end
    
    def dequeue_character()
        #get first char of q
        x = @q[0]
        @q[0] = ''
        return x
    end
    
end


# create Solution class object
solution = Solution.new

# read the input
input = gets

input.split('').each do |c|
    # push the character to stack
    solution.push_character c
    
    # enqueue the character to queue
    solution.enqueue_character c
end

# check if input string is palindrome or not
is_palindrome = true

(input.length / 2).times do
    if solution.pop_character != solution.dequeue_character
        is_palindrome = false
        break
    end
end

# print if string is palindrome or not
if is_palindrome
    puts "The word, #{input}, is a palindrome."
else
    puts "The word, #{input}, is not a palindrome."
end