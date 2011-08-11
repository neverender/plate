require 'sinatra'
require 'active_record'
require 'mysql2'
require 'yaml'


$database = YAML.load_file(File.join(File.dirname(__FILE__), 'database.yml'))
ActiveRecord::Base.include_root_in_json = false
 
configure :production do
	ActiveRecord::Base.establish_connection $database['prod']
end

configure :development do |c|
	require "sinatra/reloader"
  	c.also_reload "../models/*.rb"
	ActiveRecord::Base.establish_connection $database['dev']
end

configure :test do
	ActiveRecord::Base.establish_connection $config['test']
end


#require models
Dir["./models/*.rb"].each {|file| require file }