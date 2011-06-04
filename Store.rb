require 'sequel'
require 'jdbc/postgres'

class Store

  def initialize
    @db = Sequel.connect 'jdbc:postgresql://127.0.0.1:5432/ts_league', 
    :user=> 'joshy', :password =>'joshy'
    ##init_database
    @players = @db[:players]
  end

  def save(game)
    @players.insert(:short_name => game.player1, :games_won => game.won1) 
  end

  def games
    @players.all
  end

  def init_database
    @db.create_table :players do
      primary_key :id
      String :short_name
      Integer :games_won
      Integer :games_played
      Integer :games_lost
    end
  end

end
