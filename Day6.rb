# Enter your code here. Read input from STDIN. Print output to STDOUT

num = gets.to_i

for x in 1..num
    word = gets;
    oddword = ""
    evenword = ""
    for z in (0..word.length-1).step(2)
        evenword += word[z].to_s
    end
    for y in (1..word.length-1).step(2)
        oddword += word[y].to_s
    end
    puts evenword.chomp + ' ' + oddword.chomp
end