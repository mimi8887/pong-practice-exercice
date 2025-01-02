class Pong
  attr_reader :max_score

  def initialize(max_score)
    @max_score = max_score
    @current_player = 1
    @score = [0,0]
  end

  def play(ball_pos, player_pos)
    if @score[0] == @max_score || @score[1] == @max_score
      result = "Game Over!"
    elsif player_pos - 3 <= ball_pos && ball_pos <= player_pos + 3
      result = "Player #{@current_player} has hit the ball!"
      else
      @score[@current_player == 1 ? 1 : 0] += 1
        if @score[0] == @max_score || @score[1] == @max_score
         result = "Player #{@current_player  == 1 ? 2 : 1} has won the game!"
        else
          result = "Player #{@current_player} has missed the ball!"
        end
      end
     @current_player == 1 ? @current_player = 2 : @current_player = 1
    result
  end
end
