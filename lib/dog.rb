require 'pry'
class Dog

    @@all = []

    def initialize(name)
        @name = name
        #@@all << name
        self.save
        #@@all << self
        #puts @@all
    end

    def name=(name)
        @name = name
    end

    def name
        @name
    end

    def save
        @@all << self
    end

    def self.clear_all
        @@all.clear
    end

    def self.all
        @@all
    end

    def self.print_all
        @@all.each do |name|
            puts name.name
        end
    end

end

# test = Dog.new("Bently")
# test2 = Dog.new("BentlyJr")
# # #binding.pry
#  #puts test.name

# # puts "break before print all"

# Dog.print_all