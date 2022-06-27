class Question 

    def initialize
        @num1 = rand(1..20)
        @num2 = rand(1..20)
        @ans = @num1 + @num2
    end 

    def ask(name)
        puts"#{name}: What is #{@num1} + #{@num2} ?"
    end 

    def check(input)
   
        @ans == input 
    end

end 