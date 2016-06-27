require 'bundler'
Bundler.require

require './003_sinatra_todo'

use Rack::MethodOverride
run ToDoApp
