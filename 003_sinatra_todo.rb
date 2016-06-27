# todo.rb
# require 'sinatra'
#
# get '/' do
#   'Hello, world!'
# end

# you notice that Sinatra has some sane defaults, and doesn't need as much code as Rack wants
# you just ran this with Ruby
# "Classic style" sinatra app


# Modular style below
$LOAD_PATH.unshift File.dirname(__FILE__)

require 'sinatra/base'
require '003_task'

class ToDoApp < Sinatra::Base
  get '/' do
    # @tasks = ['Create web application', 'Profit!']
    # @tasks = [Task.new(description: 'Create web application'),
    #           Task.new(description: 'Profit!')]
    @tasks = Task.all
    erb :index
  end

  post '/' do
    Task.create(params)
    redirect '/'
  end

end
