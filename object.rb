class Nonprofit
    
    def set_name=(nonprofit_name)
        @name = nonprofit_name
    end
    
    def get_name
        return @name
    end
    
    def set_website=(website_url)
        @website_url = website_url
    end
    
    def get_website
        return @website_url
    end
    
    def support_message
        return "Thanks for supporting this organization!"
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

my_nonprofit.set_name = "Planned Parenthood"
nonprofitname = my_nonprofit.get_name

my_nonprofit.set_website = "http://www.pp.org"
nonprofitsite = my_nonprofit.get_website

puts my_nonprofit.support_message
puts "They are located at #{nonprofitsite}"
puts my_nonprofit.type
puts Health.current_count

puts my_nonprofit.inspect