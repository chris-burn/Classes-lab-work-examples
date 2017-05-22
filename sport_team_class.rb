class SportTeam

  def initialize  (input_team_name, input_players, input_coach)
    @team_name = input_team_name 
    @players = input_players
    @coach = input_coach
    @points = 0 #added laterlly
  end

  def get_team_name()
    return @team_name
  end

  def get_players()
    return @players
  end

  def get_coach_name()
    return @coach
  end

  def set_coach_name(new_coach)
    @coach = new_coach
  end

  def add_player_name(new_player)
    @players << new_player
  end

  def existing_player_check(player_to_check)
    for player in @players
      # player = @players
      if player == player_to_check
        return true
      else
        return false
      end
    end
  end

  def get_points()
    return @points
  end

  def update_points(result)
    if result == "win"
    @points += 3 
    end
  end





end