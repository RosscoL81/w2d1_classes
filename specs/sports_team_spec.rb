require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team")

class TestSportsTeam < MiniTest::Test

  def test_get_team_name
    sports_team = SportsTeam.new("Ross's Rovers", ["Ross", "Rossy", "Rossario"], "Billy Rossco")
    assert_equal("Ross's Rovers", sports_team.team_name())
  end

  def test_get_players
    sports_team = SportsTeam.new("Ross's Rovers", ["Ross", "Rossy", "Rossario"], "Billy Rossco")
    assert_equal(["Ross", "Rossy", "Rossario"], sports_team.players())
  end

  def test_get_team_coach
    sports_team = SportsTeam.new("Ross's Rovers", ["Ross", "Rossy", "Rossario"], "Billy Rossco")
    assert_equal("Billy Rossco", sports_team.team_coach())
  end

  def test_set_team_coach
    sports_team = SportsTeam.new("Ross's Rovers", ["Ross", "Rossy", "Rossario"], "Billy Rossco")
    sports_team.team_coach = "Rossco Lorimerio"
    assert_equal("Rossco Lorimerio", sports_team.team_coach)
  end

  def test_add_player
    sports_team = SportsTeam.new("Ross's Rovers", ["Ross", "Rossy", "Rossario"], "Billy Rossco")
    sports_team.add_player("William")
    assert_equal(["Ross", "Rossy", "Rossario", "William"], sports_team.players)
  end

  def test_is_player_in_team
    sports_team = SportsTeam.new("Ross's Rovers", ["Ross", "Rossy", "Rossario"], "Billy Rossco")
    sports_team.is_player_in_team("Rossy")
    assert_equal("Rossy", sports_team.is_player_in_team("Rossy"))
  end

  def test_team_win__yes
    sports_team = SportsTeam.new("Ross's Rovers", ["Ross", "Rossy", "Rossario"], "Billy Rossco")
    sports_team.team_win("win")
    assert_equal(3, sports_team.team_win("win"))
  end
end
