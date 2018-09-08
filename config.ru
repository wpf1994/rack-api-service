require ::File.expand_path('../config/environment',  __FILE__)
use ActiveRecord::ConnectionAdapters::ConnectionManagement

require 'rack/cors'

use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: :any
  end
end

run Test::API