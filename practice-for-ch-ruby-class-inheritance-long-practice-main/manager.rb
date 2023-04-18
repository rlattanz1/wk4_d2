require_relative 'employee.rb'

class Manager < Employee
    attr_reader :name, :title, :salary, :boss, :underlings
    def initialize(name, title, salary, boss, underlings)
        super(name, title, salary, boss)
        @underlings = underlings
    end

    # def underlings(employee)
    #     if employee.boss == self.name
    #         @underlings << employee
    #     end
    # end

    def bonus(multiplier)
        bonus = (self.underlings.map {|underling| underling.salary}).sum * multiplier
    end

end


e1 = Employee.new('ned', 'founder', 1000000, 'nil')
e2 = Employee.new('darren', 'TA manager', 78000, 'ned')
e3 = Employee.new('shawna', 'TA', 12000, 'darren')
e4 = Employee.new('david', 'TA', 10000, 'darren')

m1 = Manager.new('ned', 'founder', 1000000, 'nil', [e2, e3, e4])
m2 = Manager.new('darren', 'TA manager', 78000, 'ned', [e3, e4])

p m1.bonus(5)
p m2.bonus(4)
