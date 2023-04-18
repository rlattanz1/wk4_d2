class Employee

    attr_reader :name, :title, :salary, :boss
    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        bonus = salary * multiplier
    end

end

e1 = Employee.new('ned', 'founder', 1,000,000, 'nil')
e2 = Employee.new('darren', 'TA manager', 78,000, 'ned')
e3 = Employee.new('shawna', 'TA', 12,000, 'darren')
e4 = Employee.new('david', 'TA', 10,000, 'darren')
