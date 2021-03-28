class Animal
    def speak
        "Hello"
    end
end

class GoodDog < Animal
    def speak
        super + " From GoodDog class"
    end
end


# sparky=GoodDog.new
# puts sparky.speak

class Animal
    attr_accessor :name
    def initialize(name)
        @name=name
    end
end

class GoodDog < Animal
    def initialize(color)
        super
        @color=color
    end
end

class BadDog < Animal
    def initialize(name,age)
        super(name)
        @age=age
    end
end

# sparky=GoodDog.new("yellow")
# marvy=BadDog.new("Marvy", 12)
# p sparky
# p marvy

class Animal
    def initialize
    end
end

class Bear < Animal
    def speak(words) 
        super() #use super() to call superclass method without arguments
        @words=words
        "#{self} says #{@words}"
    end
end

bear=Bear.new
puts bear.speak("haha")

