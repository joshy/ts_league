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


post '/game' do



end
