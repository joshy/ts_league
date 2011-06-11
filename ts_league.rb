require 'sinatra'
require 'haml'
require 'Game'
require 'Store'

STORE = Store.new

get '/' do
  redirect '/games'
end

get '/games' do
  @games = STORE.games
  haml :games
end

post '/game' do
  player = params[:player]
  won = params[:won]
  played = params[:played]
  game = Game.new(player, won, played) 
  STORE.save(game)
  redirect '/games'
end

