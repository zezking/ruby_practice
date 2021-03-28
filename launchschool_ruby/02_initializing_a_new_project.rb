class GoodDog
    attr_accessor :name, :height, :weight
        def initialize(n,h, w)
            @name=n
            @height=h
            @weight=w
        end
        # def get_name  #You have to create a method to return the instance variable
        #     @name
        # end
        # def set_name(name)
        #     @name=name
        # end
        def speak
             "#{name} says Arf!"
        end
    
        def change_info(n,h,w)
            self.name=n
            self.height=h
            self.weight=w
        end
    
    
        def info
            "#{self.name} weighs #{self.weight} and is #{self.height} tall"
        end
    end
    


sparky=GoodDog.new("Sparky","12 inches", "20 lbs")
puts sparky.info
sparky.change_info("Fido", "15 inces", "30 lbs")
puts sparky.info


# fido=GoodDog.new("Fido")
# puts "The dog's name is #{sparky.get_name}"
# puts sparky.speak
# puts fido.speak
# puts fido.get_name
# fido.set_name("Shishi")
# puts fido.get_name

# puts "Now the dog's name is #{fido.get_name}"

# puts fido.get_name


