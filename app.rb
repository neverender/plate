require './config/init'

# a couple settings
set :views, File.dirname(__FILE__) + '/views'

  
get '/' do
	erb :index
end