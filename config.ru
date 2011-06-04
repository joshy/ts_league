logger = Logger.new('app.log')

use RACK::CommonLogger, logger
run ts_league