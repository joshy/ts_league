require 'sinatra'


get '/' do
  "Hello World, Time is now #{Time.now} on the server"
end
