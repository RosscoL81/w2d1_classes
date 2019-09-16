class SportsTeam


  def initialize(input_team_name, input_players, input_team_coach)
    @team_name = input_team_name
    @players = input_players
    @team_coach = input_team_coach
  end

  def get_team_name
    return @team_name
  end

  def get_players
    return @players
  end

  def get_team_coach
    return @team_coach
  end

  def set_team_coach(new_coach)
    @team_coach = new_coach
  end
end
