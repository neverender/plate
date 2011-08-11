require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new do |task|
  task.rspec_opts = ["-c", "-f p", "-r ./spec/spec_helper.rb"]
  task.pattern    = 'spec/**/*_spec.rb'
end

namespace :db do
  desc "Migrate the database"
  task(:migrate => :environment) do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    ActiveRecord::Migration.verbose = true
    ActiveRecord::Migrator.migrate("db/migrate")
  end
end

task :environment do
  require File.expand_path(File.join(*%w[ config init ]), File.dirname(__FILE__))
end