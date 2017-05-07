# Problem:
## There are two classes. How many goals can each player score individually and how many goals in total! ##

# Solution
class Team_Goals
  def initialize(team)
    @team = team
    @total_goals = 0
  end
  attr_accessor :team, :total_goals

  def total_goals(player_name, goals)
    player_name.goals(goals)
    @total_goals = goals + @total_goals
    puts "The team has #{@total_goals} in total."
  end

end

class Players
  def initialize(player_name)
    @player_name = player_name
    @goals_scored = 0
  end
    attr_accessor :player_name, :goals_scored

  def goals(goals)
    @goals_scored = goals + @goals_scored
    puts "Player has scored: #{@goals_scored}."
  end
end

t = Team_Goals.new("madrid")
x = Players.new("ronaldo")
y = Players.new("messi")

t.total_goals(x, 4)
t.total_goals(y,7)
