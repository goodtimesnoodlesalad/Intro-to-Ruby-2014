puts "Do you love me? Yes or no"
answer = gets.chomp.downcase

while answer == "yes"
    puts "Say it again"
    answer = gets.chomp.downcase
end