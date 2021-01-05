p 1.class 
p 1.0.class
p.'learn'.class

recipe = {protein:"beans", carbs:'tortilla', }

p recipe.class

class IceCream1 
#setter methods sets values!
    def set_label label 
    #local values in classes are called instance variables
    @label = 
    end
end

vanilla = IceCream1.new
p vanilla

vanilla.set_label "dessert"
p vanilla


class IceCream1 


    #setter methods sets values! #################
        def set_label label 
        #local values in classes are called instance variables
        @label = label
        end

        def set_flavor flavor
            @flavor = flavor
        end

        def set_calories 
            @calories = calories
        end

# getters  method   ##########################
    def label
        @label
    end

    def flavor
        @flavor
    end

    def calories
        @calories
    end
 
end


vanilla = IceCream1.new
vanilla.set_label "dessert"
vanilla.set_flavor "vanilla"
vanilla.set_calories "180"

p vanilla


# shorter way to do it###############


class IceCream2
    def initialize
      @label = "dessert"

    end

    def label
        @label
    end

end

mint_chip = IceCream2.new

p mint_chip
p mint_chip.label



class IceCream2
    def initialize (flavor, calories)
      @label = "dessert"
      @flavor = flavor
      @calories = calories
    end

    def label
        @label
    end

end

mint_chip = IceCream2.new("mint chip", 200)
p mint_chip


########## even faster!!!

# attibute acccessors

#create a behind the scene method

class IceCream3
    attr_accessor :label, :flavor, :calories 
    def initialize (flavor, calories)
    @label = "dessert"
    @flavor = flavor
    @calories = calories
    end
end

butter_pecan = IceCream3.new("butter pecan", 200)
p butter_pecan.label
p butter_pecan.flavor
p butter_pecan.calories