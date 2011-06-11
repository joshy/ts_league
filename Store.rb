require 'sequel'
require 'jdbc/postgres'

class Store

  def initialize
    @db = Sequel.connect 'jdbc:postgresql://127.0.0.1:5432/ts_league', 
    :user=> 'joshy', :password =>'joshy'
    ##init_database
    @players = @db[:players]
  end

  def save(games)
    player = @players.where(:short_name => games.player).first
    if player.nil?
      @players.insert(:short_name => games.player, :games_won => games.won, :games_played => games.played) 
    elsif
      @players.where(:short_name => games.player)
        .update(:games_won => :games_won + games.won, :games_played => :games_played + games.played)
    end
  end

  def games
    @players.order(:games_won).reverse.all
  end

  def init_database
    @db.create_table :players do
      primary_key :id
      String :short_name
      Integer :games_won
      Integer :games_played
    end
  end

end
