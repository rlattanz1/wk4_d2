require_relative 'employee.rb'

class Manager < Employee

    def initialize(name, title, salary, boss, underlings)
        super(name, title, salary, boss)
        @underlings = underlings
    end

    def bonus(multiplier)
        bonus = (self.underlings.map {|underling| underling.salary}).sum * multiplier
    end

end

m1 = Manager.new('ned', 'founder', 1,000,000, 'nil', [e2, e3, e4])
m2 = Manager.new('darren', 'TA manager', 78,000, 'ned', [e3, e4])

p m1.bonus
