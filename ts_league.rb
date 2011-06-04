require 'sinatra'
require 'haml'
require 'Game'
require 'Store'

STORE = Store.new

get '/' do
  @title = "TS League"
  haml :index
end

get '/games' do
  @games = STORE.games
  haml :games
end

get '/game' do
  haml :game
end

post '/game' do
  player1 = params[:player1]
  won1 = params[:won1]
  print player1
  print won1
  game = Game.new(player1, won1) 
  STORE.save(game)
end

