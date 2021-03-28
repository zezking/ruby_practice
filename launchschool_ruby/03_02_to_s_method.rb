class GoodDog
        DOG_YEARS=7
        attr_accessor :name, :age
    
        def initialize(n, a)
            self.name=n
            self.age= a*DOG_YEARS
        end
        def to_s
            "This dogs's name is #{name} and it is #{age} in dogs years "
        end
end
    
    sparky=GoodDog.new("Sparky", 8)
    
    puts sparky.age
    puts sparky.to_s
    p sparky
    