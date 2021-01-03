class Dog
                    # 4
    def initialize classification
                                # 5
        @classification = classification
    end

    def get_dog_info
    @classification
    end
end

# in JS you have extends in ruby <
class Pointer < Dog         
 #                          2
    def initialize (classification, name)
 #                   3
 #super calls the method of the same name in the parent class
        super(classification)
    end

    def get_info
        @classification
    end
end
 #                           1
first_dog = Pointer.new "hunting"
p first_dog

# ÷class dog and class pointer 

class Gsp < Pointer
    def initialize (classification, breed, name)
        super(classification)
    @breed = breed
    @name = name
    @size = "large"
    @origin = "Germany"

    end

def get_gsp_info
    "stirng ieninininini"

end

jax = Gsp.new("hunting", "GSP", "Jax")
jax = Gsp.new("hunting", "GSP", "Ricky›")
p jax.get_gsp_info
p jax.get_info
p jax


class Hound < Dog
    def initialize classification
        super (classification)
    end
        def get_hound_info
        "fhuwifuhwifuwifhweiufhiufhwifuhwiuefhiwuehfiwuehfweihf"
        end

end

class Bloodhound < Hound
    def initialize (classification, breed, name)
        super (classification)
        @breed = breed
        @name = name
        @size = " extra large"
        @origin = "Belgium"

            def get_bloodhound_info
                "dbeiwbdiedwiuedfubwuehfwihhnfiw"

    end
    

roofus = Bloodhound.new("huntin", "Bloodhound", "Roofus")

p roofus.get_info
p roofus.get_bloodhound_info