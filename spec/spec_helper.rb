require 'byebug'
Dir["./lib/*.rb"].each { |f| require f }
Dir["./spec/support/**/*.rb"].each { |f| require f }

# require_relative './promotions'