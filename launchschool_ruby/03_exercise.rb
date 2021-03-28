class MyCar
    attr_accessor :year, :color,:model
        def initialize(y,c,m)
            @year=y
            @color=c
            @model=m
            @speed=0
            @@gas=0
            @@mileage=0
        end
    
        def speed
            "The current speed is #{@speed}"
        end
    
        def speedup
            @speed>50 ? "you gotta slow down" : @speed+=30
        end
    
        def brake
            @speed==0 ? "you gotta start the car stoopid" : @speed-=30
        end
    
        def shutdown
            @speed==0 ? "It's already not going anywhere stoooopid" : @speed=0
        end
        
        def change_color(c)
            self.color=c
        end
    
        def spray_paint
            puts "Tell me what color you want to paint the car my man:  "
            self.color=gets.to_s.chomp
        end
    
        def info
            "Year: #{self.year} Color: #{self.color} Model: #{self.model} Current Speed: is #{@speed}"
        end

        def self.gas_mileage
            puts "Enter how much gas have you used so far:  ?"
            @@gas=gets.to_i
            puts "Enter how far you have travelled in miles:  ?"
            @@mileage=gets.to_i
            puts "Your millege is #{@@gas/@@mileage}"  
        end
        def to_s
            puts "welcome to car generator!"
        end
    end
    

    newCar=MyCar.new("2009", "Rainbow", "QQ")

puts newCar.info
MyCar.gas_mileage
puts newCar


class Person
    attr_accessor :name
    def initialize(n)
      @name = n
    end
  end
  
  bob = Person.new("Steve")
bob.name="Bob"