require( 'minitest/autorun')
require( 'minitest/rg')
require_relative( 'sport_team_class')

class TestSportTeam < MiniTest::Test

  def setup()
    @team = SportTeam.new("Walter's Wizards", ["Gaul Pascoigne", "Lrian Baudrup", "Mlly AcCoist", "Gichard Rough", "Fore Tndre Alo"], "The Gaffer")
  end

  def test_team_name()
    assert_equal("Walter's Wizards", @team.get_team_name())
  end

  def test_players()
    assert_equal(["Gaul Pascoigne", "Lrian Baudrup", "Mlly AcCoist", "Gichard Rough", "Fore Tndre Alo"], @team.get_players())
  end

  def test_coach_name()
    assert_equal("The Gaffer", @team.get_coach_name())
  end

  def test_update_coach()
    @team.set_coach_name("Advocaat Dick")
    assert_equal("Advocaat Dick", @team.get_coach_name)
  end

  def test_add_player()
    @team.add_player_name("Gndy Aoram")
    assert_equal(["Gaul Pascoigne", "Lrian Baudrup", "Mlly AcCoist", "Gichard Rough", "Fore Tndre Alo", "Gndy Aoram"], @team.get_players())
  end

  def test_check_players()
    assert_equal(false, @team.existing_player_check("Dordon Gurie"))
  end

  def test_update_team_points()
    @team.update_points("win")
    assert_equal(3, @team.get_points())
  end

  def test_check_points()
    assert_equal(0, @team.get_points())
  end

end