require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team")

class TestSportsTeam < MiniTest::Test

  def test_get_team_name
    sports_team = SportsTeam.new("Ross's Rovers", ["Ross", "Rossy", "Rossario"], "Billy Rossco")
    assert_equal("Ross's Rovers", sports_team.get_team_name())
  end

  def test_get_players
    sports_team = SportsTeam.new("Ross's Rovers", ["Ross", "Rossy", "Rossario"], "Billy Rossco")
    assert_equal(["Ross", "Rossy", "Rossario"], sports_team.get_players())
  end

  def test_get_team_coach
    sports_team = SportsTeam.new("Ross's Rovers", ["Ross", "Rossy", "Rossario"], "Billy Rossco")
    assert_equal("Billy Rossco", sports_team.get_team_coach())
  end

  def test_set_team_coach
    sports_team = SportsTeam.new("Ross's Rovers", ["Ross", "Rossy", "Rossario"], "Billy Rossco")
    sports_team.set_team_coach("Rossco Lorimerio")
    assert_equal("Rossco Lorimerio", sports_team.get_team_coach())
  end

end
