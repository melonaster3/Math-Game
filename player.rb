class Player 
        attr_reader :name, :lives

        def initialize(name) 
            @name = name 
            @lives = 3 
        end

        def wrongAns 
            @lives -= 1
        end

        def gameEnd 
            @lives == 0
        end 

        def new_question
            new_question = Question.new
            new_question.ask(name)
            @userans = $stdin.gets.chomp
            if (new_question.check(@userans.to_i))
                puts "You are correct!"
            else 
                puts "no you are wrong! #{@userans}"
                wrongAns
            end
        end
    end
