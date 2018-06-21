# Enter your code here. Read input from STDIN. Print output to STDOUT

phonebook = Hash.new

total = gets.to_i

for x in (0...total)
    input = gets.chomp.split(' ').map(&:to_s)
    phonebook[input[0]] = input[1]
end

while (query = gets.to_s.chomp)
    if(query.length == 0) 
        break;
    end
    if(phonebook.has_key?(query))
        puts "#{query}=#{phonebook[query]}"
    else
        puts "Not found"
    end
end
    