class Nonprofit
    
    attr_accessor :name, :website
    
    def support_message
        return "Thanks for supporting #{name}!"
    end

end


class Health < Nonprofit
    
    def type
        return "This is a healthcare-related nonprofit."
    end
    
    @@total_health = 0

    def initialize
        @@total_health += 1
    end
    
    def self.current_count
        return "There are #{@@total_health} healthcare nonprofits in the system right now."  
    end 
    
end



my_nonprofit = Health.new

my_nonprofit.name = "Planned Parenthood"
my_nonprofit.website = "http://www.pp.org"

puts my_nonprofit.support_message
puts "You supported #{my_nonprofit.name}. They are located at #{my_nonprofit.website}"
puts my_nonprofit.type
puts Health.current_count

puts my_nonprofit.inspect