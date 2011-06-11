class Game 
  attr_reader :player, :won, :played
  def initialize(player, won, played)
    @player, @won, @played = player, won, played
  end
end

