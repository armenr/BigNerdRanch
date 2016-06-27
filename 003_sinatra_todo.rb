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
require 'data_mapper'
require '003_task'

DATABASE_URL = ENV['DATABASE_URL'] || 'postgres://localhost/to_do_app'

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, DATABASE_URL)

DataMapper.finalize
Task.auto_upgrade!

class ToDoApp < Sinatra::Base
  get '/' do
    @tasks = Task.all
    erb :index
  end

  post '/' do
    Task.create(params)
    redirect '/'
  end

  patch '/:id' do
    task = Task.get(params[:id])
    task.update(done: params[:done])
    redirect '/'
  end

  delete '/:id' do
    task = Task.get(params[:id])
    task.destroy
    redirect '/'
  end

end
