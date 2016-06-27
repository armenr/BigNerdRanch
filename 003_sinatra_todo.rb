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

require 'sinatra/base'

class ToDoApp < Sinatra::Base
  get '/' do
    @tasks = ['Create web application', 'Profit!']
    erb :index
  end
end
