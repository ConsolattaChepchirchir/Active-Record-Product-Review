timestamp = Time.now.utc.strftime("%Y%m%d%H%M%S")
filename = "#{timestamp}_create_users.rb"
filename = "#{timestamp}_create_products.rb"
filename = "#{timestamp}_create_reviews.rb"

require_relative './config/env.rb'
require 'sinatra/activerecord/rake'

desc "Runs a Pry console"
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
    Pry.start
end