module Speak
    def speak(sound)
        puts sound
    end
end

module Eat
    def eat(food)
        puts food
    end
end

class GoodDog
    def initialize
        puts "This opbject was initialzed"
    end
    include Speak
end

class HumanBeing
    include Speak
end

class Pugs
    include Eat
end
#pugs like to eat bamboo!
greypug=Pugs.new
greypug.eat("Bamboo")

sparky = GoodDog.new
sparky.speak("Arf")
bob=HumanBeing.new
bob.speak("Hello")


puts "--gooddog ancestors--"
puts GoodDog.ancestors
puts ''
puts "--HumanBeing ancestors---"
puts HumanBeing.ancestors

