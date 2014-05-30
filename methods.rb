def my_first_method
    puts "This is my first method!"
end

my_first_method

def two_plus_two
    four = 2 + 2
    puts four
end

two_plus_two

def my_math_method(num1, num2)
    number = num1 + num2
    puts number
end

my_math_method(2, 4)

def determine_current_hour
    current_time = Time.new
    current_hour = current_time.hour
end

def greeting(name)
    current_hour = determine_current_hour
    if (current_hour > 3 && current_hour < 12)
        time = "morning"
    elsif (current_hour > 12 && current_hour < 18)
        time = "afternoon"
    elsif (current>hour > 18 || current_hour < 2)
        time = "evening"
    end
    puts "Good #{time}, #{name.capitalize}!"
end

greeting("Emily")