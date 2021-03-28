class GoodDog

    DOG_YEARS=7

    attr_accessor :name, :age

    def initialize(n,a)
        self.name=n
        self.age=a
    end

    def public_disclosure
        "#{self.name} in human years is #{human_years}"
    end

    private

    def human_years
        age*DOG_YEARS
    end   
end

sparky=GoodDog.new("sparky", 7)

puts sparky.public_disclosure


class Animal
    def a_public_method
        "Will this work" + self.a_protected_method
    end
    protected
    def a_protected_method
        "yes I am protected"
    end
end

dog=Animal.new
puts dog.a_public_method


