require 'rack'
require 'rack/lobster'
#require 'rack/debug'
require 'rack-contrib'

request_info = lambda do |env|
  request = Rack::Request.new(env)
  method = request.request_method
  path = request.path
  request_params = request.params

  body = "Method: #{method}\nPath: #{path}\nRequest Params: #{request_params}\n"
  [200, { "Content-Type" => "text/plain" }, [body]]
end

map '/lobster' do
  run Rack::Lobster.new
end

# curl -i localhost:9292/lobster

map '/request_info' do
  run request_info
end

# show source code in response
map '/show_source'
  run Rack::File
end

# curl -i localhost:9292/request_info

run request_info


## TODO
## Challenge - create rack route that uses ::static or ::file to show its own source code
