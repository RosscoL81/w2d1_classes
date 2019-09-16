class SportsTeam

  attr_accessor :team_name, :players, :team_coach, :points

  def initialize(input_team_name, input_players, input_team_coach)
    @team_name = input_team_name
    @players = input_players
    @team_coach = input_team_coach
    @points = 0
  end

  def add_player(name)
    return @players.push(name)
  end

  def is_player_in_team(name)
    player = []
    for player in @players
      return player if player == name
    end
  end

  def team_win(result)
    @points = 0
    if result == "win"
      @points +=3
    end
  end
end
