require 'rubygems'
require 'sequel'
require 'jdbc/postgres'
 

DB = Sequel.connect 'jdbc:postgresql://127.0.0.1:5432/ts_league', 
:user=> 'joshy', :password =>'joshy'


