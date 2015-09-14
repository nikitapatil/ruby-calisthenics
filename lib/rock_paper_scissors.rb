class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # Determines the winner among the two players.
    allowed_strategy = ["R", "P", "S"]
     if !(allowed_strategy.include?(player1[1]) && allowed_strategy.include?(player2[1]))
       raise NoSuchStrategyError, "Strategy must be one of R,P,S"
     else
      if player1[1] == player2[1]
        return player1
      end
      winner_hash = {'RS'=>'R', 'PS'=>'S', 'PR'=>'P'}
      combination = (player1[1]+player2[1]).chars.sort.join
      if player1[1] == winner_hash[combination]
        return player1
      else
        return player2
      end
     end
  end

  def self.tournament_winner(tournament)
    # takes in an array of games and returns the winner of the tournament.
    if tournament[0][0].is_a?Array
      return self.winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))
    end
    return self.winner(tournament[0], tournament[1])
  end

end
