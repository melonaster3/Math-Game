class Game 

def initialize(name)
    @name = name 
    @player1 = Player.new('Player1')
    @player2 = Player.new('Player2')
end

def start 
    puts "New game has started. The two players are #{@player1} and #{@player2}"
    turn
end

def lives 
    puts "#{@player1} has #{@player1.lives}/3 and #{@player2} has #{@player2.lives}/3"
end

def win(player)
    puts "#{player.name} wins with #{player.score}/3"
    puts "GAME OVER"
    puts "Good Bye"
    exit(0)
end 

def check_score 
    if @player1.gameEnd 
        winner(@player2)
    elsif @player2.gameEnd
        winner(@player1)

    end
end

def turn 
    @player1.new_question
    check_score
    @player2.new_question
    check_score
    lives 
    puts ' NEW TURN'
    turn
end
end
