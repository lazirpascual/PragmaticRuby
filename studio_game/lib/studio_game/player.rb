class Player
  attr_accessor :name
  attr_reader :health

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
    @found_treasures = Hash.new(0)
  end

  def drain
    @health -= 10
  end

  def boost
    @health += 15
  end

  def score
    @health + @name.length
  end

  def found_treasure(name, points)
    @found_treasures[name] += points
  end

  def to_s
  "I'm #{@name} with a health of #{@health} and a score of #{score}: #{@found_treasures}"
  end
end

if __FILE__ == $0
  player = Player.new("jase")
  puts player.name
  puts player.health
  player.boost
  puts player.health
  player.drain
  puts player.health
end
