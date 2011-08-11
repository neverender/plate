require './config/init'

# a couple settings
set :views, File.dirname(__FILE__) + '/views'
set :public, File.dirname(__FILE__) + '/public'

  
get '/' do
	erb :index
end