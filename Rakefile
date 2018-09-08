require "bundler/setup"
require "grape/activerecord/rake"


namespace :db do
  # Some db tasks require your app code to be loaded, or at least your gems
  task :environment do
    require File.expand_path('../config/application', __FILE__)
  end
end