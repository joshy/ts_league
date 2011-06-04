require 'rubygems'
require 'sequel'

DB = Sequel.connect 'jdbc:postgresql://127.0.0.1:5432/ts_league', :user=> 'joshy', :password =>'joshy'

DB.create_table :items do
  primary_key :id
  String :short_name
  Integer :games_won
  Integer :games_played
  Integer :games_losed
end

class Person < Sequel::Model





end
