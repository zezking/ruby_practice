module VoiceControlable
    def voice_control
    "I can be voice controlled"
    end
end
class Vehicle
    @@CHILDREN=0
    attr_accessor :year, :color,:model
        def initialize(year,color,model)
            @year=year
            @color=color
            @model=model
            @@speed=0
            @@gas=0
            @@mileage=0
            @@CHILDREN+=1
        end
        def self.how_many_children
            "This super class has #{@@CHILDREN} children"
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
        
        def change_color(color)
            self.color=color
        end
    
        def spray_paint
            puts "Tell me what color you want to paint the car my man:  "
            self.color=gets.to_s.chomp
        end
    
        def info
            "Year: #{self.year} Color: #{self.color} Model: #{self.model} Current Speed: #{@speed}"
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


class MyCar < Vehicle
    NUMBER_OF_DOORS=4
    include VoiceControlable
 
    def info
        super + "Doors #{NUMBER_OF_DOORS}"
    end
  
end

class MyTruck < Vehicle
    NUMBER_OF_DOORS=2
    def info
        super + "Doors #{NUMBER_OF_DOORS}"
    end
end

familyCar=MyCar.new("Toyota", "1990", "Black")
familyTruck=MyTruck.new("Optius Prime", "1900", "Purple")

puts familyCar.info
puts familyCar.voice_control
puts familyTruck.info
puts Vehicle.how_many_children

puts "-----familyCar method lookup------"
puts MyCar.ancestors
puts "-----familyTruck method lookup------"
puts MyTruck.ancestors