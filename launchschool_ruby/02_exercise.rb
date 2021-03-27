class MyCar
attr_accessor :year, :color,:model
    def initialize(y,c,m)
        @year=y
        @color=c
        @model=m
        @speed=0
    end

    def speed
        speed=0
    end

    def speedup
        @speed+=50
    end

    def brake
        if @speed==0
            puts "you gotta get the car running stoopid"
        else
            @speed-=30
        end
    end

    def info
        "Year #{self.year} Color #{self.color} Model #{self.model} Current Speed is #{@speed}"
    end
end


oldcar=MyCar.new("1900", "black", "ford model-T")

puts oldcar.info
puts oldcar.brake
puts oldcar.speedup
puts oldcar.speed
puts oldcar.brake
puts oldcar.speed