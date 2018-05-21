require("minitest/autorun")
require("minitest/rg")

require_relative("../sports_team")

class TestSportsTeam < MiniTest::Test

  def test_team_name
    team = SportsTeam.new("Miami Dolphins", ["Dan Marino", "Danny Amendola", "Mike Gesicki"], "Adam Gase", 0)
    assert_equal("Miami Dolphins", team.team_name)
  end

  def test_players
    team = SportsTeam.new("Miami Dolphins", ["Dan Marino", "Danny Amendola", "Mike Gesicki"], "Adam Gase", 0)
    assert_equal(["Dan Marino", "Danny Amendola", "Mike Gesicki"], team.players)
  end

  def test_coach
    team = SportsTeam.new("Miami Dolphins", ["Dan Marino", "Danny Amendola", "Mike Gesicki"], "Adam Gase", 0)
    assert_equal("Adam Gase", team.coach)
  end

  def test_set_coach
    team = SportsTeam.new("Miami Dolphins", ["Dan Marino", "Danny Amendola", "Mike Gesicki"], "Adam Gase", 0)

    team.coach = "Vince Lombardi"

    assert_equal("Vince Lombardi", team.coach)

  end

  def test_add_player
    team = SportsTeam.new("Miami Dolphins", ["Dan Marino", "Danny Amendola", "Mike Gesicki"], "Adam Gase", 0)

    assert_equal(["Dan Marino", "Danny Amendola", "Mike Gesicki", "OBJ"], team.add_player("OBJ"))
  end

  def test_find_player_by_name
    team = SportsTeam.new("Miami Dolphins", ["Dan Marino", "Danny Amendola", "Mike Gesicki"], "Adam Gase", 0)

    player = team.find_player_by_name("Dan Marino")
    assert_equal(true, player)
  end

  def test_points
    team = SportsTeam.new("Miami Dolphins", ["Dan Marino", "Danny Amendola", "Mike Gesicki"], "Adam Gase", 0)

    assert_equal(0, team.points)
  end

  def test_change_points
    team = SportsTeam.new("Miami Dolphins", ["Dan Marino", "Danny Amendola", "Mike Gesicki"], "Adam Gase", 0)

    team.points = 10
    assert_equal(10, team.points)
  end




end
