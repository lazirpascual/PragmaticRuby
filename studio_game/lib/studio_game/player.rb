require_relative "playable"

class Player
  include Playable

  attr_accessor :name
  attr_reader :found_treasures
  attr_accessor :health


  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
    @found_treasures = Hash.new(0)
  end

  def self.from_csv(line)
    name, health = line.split(',')
    Player.new(name, Integer(health))
  rescue ArgumentError
    puts "Ignored invalid health: #{health}"
    Player.new(name)
  end

  def score
    @health + points
  end

  def found_treasure(name, points)
    @found_treasures[name] += points
  end

  def points
    @found_treasures.values.sum
  end

  def to_s
    "I'm #{@name} with health = #{@health}, points = #{points}, and score = #{score}"
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
