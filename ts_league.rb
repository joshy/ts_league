require 'sinatra'
require 'haml'

helpers do
  def redis
    @redis ||= Redis.new
  end
end


get '/' do
  @title = "TS League"
  haml :index
end

get '/games' do 
  haml :games
end

get '/game' do
  haml :game
end

post '/game' do
  player1 = params[:player1]
  won1 = params[:won1]


end
