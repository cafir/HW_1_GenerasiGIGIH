class Person
    attr_accessor   :hitpoint
    attr_reader     :name, :attack_damage

    def initialize(name, hitpoint, attack_damage)
       @name = name
       @hitpoint = hitpoint
       @attack_damage =attack_damage
    end

     def to_s
        "#{@name} has #{@hitpoint} hitpoint and #{@attack_damage} attack damage"
     end

    def attack(other_person)
        other_person.take_damage(@attack_damage)
        puts "#{@name} attack #{other_person.name} with #{@attack_damage} damage"
    end

    def take_damage(damage)
        @hitpoint -= damage
    end

    def die?
        if @hitpoint <=0
            puts "#{@name} dies"
            true
        end
    end

    def deflect_rate(other_person)
        if (rand*10 + 1).to_i > 2
            other_person.take_damage(0)
            puts "#{@name} attack #{other_person.name} with #{@attack_damage} damage"
            puts "#{other_person.name} deflects the attack"
        else 
            other_person.take_damage(@attack_damage)
            puts "#{@name} attack #{other_person.name} with #{@attack_damage} damage"
        end
    end
end