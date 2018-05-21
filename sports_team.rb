class SportsTeam

  attr_accessor :team_name, :players, :coach, :points

  def initialize(input_name, input_players, input_coach, amount)
    @team_name = input_name
    @players = input_players
    @coach = input_coach
    @points = amount.to_i
  end


def add_player(new_player)
    @players.push(new_player)
end

def find_player_by_name(name)

    for player in @players
      if player == name
        return true
      end
    end
  end

  def change_points(amount, win)
    if win == true
      @points += amount.to_i
    end
  end



#######################################

  # def team_name()
  #   return @team_name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end
  #
  # def set_coach(new_coach)
  #   @coach = new_coach
  # end

end
